import requests
import math
import json
from datetime import datetime, timedelta
import crossref_commons.retrieval
import pandas as pd
import os
import numpy as np
from datetime import datetime


from airflow import DAG 
from airflow.operators.python_operator import PythonOperator, BranchPythonOperator
from airflow.operators.bash_operator import BashOperator 
from airflow.operators.dummy_operator import DummyOperator
from airflow.providers.postgres.operators.postgres import PostgresOperator
from airflow.utils.dates import days_ago
from airflow.sensors.filesystem import FileSensor

DEFAULT_ARGS = {
    'owner': 'Tartu',
    'depends_on_past': False,
    'retries': 1,
    'retry_delay': timedelta(minutes=5)
}


DATA_FOLDER = '/tmp/data'
PROCESSED_FOLDER = os.getcwd()
#to access: f'{processed_folder (or whatever variable)}/processed_data'

ingest_data_dag = DAG(
    dag_id='ingest_data', # name of dag
    schedule_interval='@once', # execute once
    start_date=days_ago(1), #must run manually
    catchup=False, # in case execution has been paused, should it execute everything in between
    template_searchpath=PROCESSED_FOLDER+"/processed_data", # the PostgresOperator will look for files in this folder
    default_args=DEFAULT_ARGS, # args assigned to all operators
)

# Task 1 - ingest and clean data

def transform_data(input_folder,output_folder):
    #Ingest data, clean and write cleaned data to parquet file
    article_data_path = f'{input_folder}/article_data.json'
    articles = pd.read_json(article_data_path,lines=True)
    name_data_path = f'{input_folder}/wgnd_noctry.csv'
    names = pd.read_csv(name_data_path)
    names = names[names['gender']!='?']
    #drop all values where doi is null
    articles = articles[articles['doi'].notna()]
    #drop all values where name is null
    articles = articles[articles['authors'].notna()]
    #drop abstract, report-no and license
    articles = articles.drop(columns=['report-no', 'abstract','license'],axis=1)
    articles = articles.fillna(value=np.nan)
    articles['doi'] = articles['doi'].astype('str') 
    ##extract pages
    articles["pages"] = articles["comments"].str.findall("\d+ page")
    articles["pages"] = articles["pages"].replace(np.nan)
    articles['pages'] = articles['pages'].astype('str') 
    articles["pages"] = articles["pages"].replace("[]","0")
    articles["pages"] = articles["pages"].str.extract("(\d+)")
    ##extract figures
    articles["figures"] = articles["comments"].str.findall("\d+ figure")
    articles["figures"] = articles["figures"].replace(np.nan)
    articles['figures'] = articles['figures'].astype('str') 
    articles["figures"] = articles["figures"].replace("[]","0")
    articles["figures"] = articles["figures"].str.extract("(\d+)")
    articles = articles.drop(columns=['comments'],axis=1)
    articles['id'] = articles['id'].astype('str') 
    articles["year"] = 2000 + articles["id"].str[0].astype(int)
    articles["month"] = articles["id"].str[1:3].astype(int)
    version = articles[["doi","versions"]]
    authors = articles[["doi","authors_parsed"]]
    categories = articles[["doi","categories"]]
    articles = articles.drop(columns=["authors","authors_parsed","versions","journal-ref"])
    authors['authors_parsed'] = authors['authors_parsed'].astype('string') 
    authors["authors_par_"] = authors["authors_parsed"].str.findall("\[(.*?)\]")
    authors['authors_par_'] = authors['authors_par_'].astype('str') 
    authors["authors_par_"] = authors["authors_par_"].str.replace("[","")
    authors["authors_par_"] = authors["authors_par_"].str.replace("]","")
    authors["authors_par_"] = authors["authors_par_"].str.replace(",",".")
    authors["authors_par_"] = authors["authors_par_"].str.split("\'\'\"")
    authors = authors.explode("authors_par_")
    authors["authors_par_"] = authors["authors_par_"].str.replace("\'","")
    authors["authors_par_"] = authors["authors_par_"].str.replace("\"","")
    authors["authors_par_"] = authors["authors_par_"].str.lstrip(".")
    authors = authors[authors['authors_par_'].str.strip().astype(bool)]
    authors.rename(columns = {'authors_par_':'author'}, inplace = True)
    authors = authors.drop(columns=["authors_parsed"])

    authors["author"] = authors["author"].str.replace("\\","")
    articles = (pd.merge(authors, articles, on='doi',  how='left'))
    #versions
    versions_split = (pd.concat({k: pd.DataFrame(v) for k, v in version.pop('versions').items()})
         .reset_index(level=1, drop=True))
    version = version.join(versions_split, rsuffix='_').reset_index(drop=True)
    articles = (pd.merge(version, articles, on='doi',  how='left'))
    articles['created'] = articles['created'].astype('str') 
    articles['created'] = articles['created'].str.slice(5, 16)
    articles['created'] = articles['created'].replace(r"^ +| +$", r"", regex=True)
    articles['created'] = pd.to_datetime(articles['created'], format='%d %b %Y')
    articles.replace('\.\.', ".", inplace=True,regex=True)
    articles.replace('\. *\.', ".", inplace=True,regex=True)
    articles.replace('\\', "", inplace=True)
    articles["title"] = articles["title"].str.replace("\\","")
    articles["submitter"] = articles["submitter"].str.replace("\\","")
    articles.replace("'","",inplace=True)
    articles.to_csv((f'{output_folder}/processed_data/articles.csv'), index=False)


first_task = PythonOperator(
    task_id='prepare_insert_stmt',
    dag=ingest_data_dag,
    trigger_rule='none_failed',
    python_callable=transform_data,
    op_kwargs={
        'input_folder': DATA_FOLDER,
        'output_folder': PROCESSED_FOLDER,
    },
)

def get_csv_filename():
        path = ".//processed_data"
        dir_list = os.listdir(path)
        print(dir_list)
        for filename in dir_list:
            if filename.endswith(".csv"):
                return ".//processed_data//" + filename
        return None



def create_staging(output_folder):
    filepath = get_csv_filename()

    if filepath is not None:
      data = pd.read_csv(filepath)
      with open(f'{output_folder}/processed_data/staging_insert.sql', 'w') as f:
          f.write(
              'DROP TABLE IF EXISTS staging_article_data; \n'
              'CREATE TABLE IF NOT EXISTS staging_article_data (\n'
              'doi VARCHAR(1000),\n'
              'version VARCHAR(1000),\n'
              'created VARCHAR(1000),\n'
              'authorid VARCHAR(1000),\n'
              'author VARCHAR(5000),\n'
              'id VARCHAR(1000),\n'
              'submitter VARCHAR(1000),\n'
              'title VARCHAR(1000),\n'
              'categories VARCHAR(1000),\n'
              'update_date VARCHAR(1000),\n'
              'pages VARCHAR(1000),\n'
              'figures VARCHAR(1000),\n'
              'year VARCHAR(1000),\n'
              'month VARCHAR(1000));\n'
          )
          data_rows = data.iterrows()
          for index,row in data_rows:
              doi = row["doi"]
              version = row["version"]
              created = row["created"]
              authorid = "NULL"
              author = str(row["author"]).replace("'","")
              id = row["id"]
              submitter = str(row["submitter"]).replace("'","")
              title = str(row["title"]).replace("'","")
              categories = row["categories"]
              update_date = row["update_date"]
              pages = row["pages"]
              figures = row["figures"]
              year = row["year"]
              month = row["month"]
      
              f.write(
                  "INSERT INTO staging_article_data VALUES ("
                  f"'{doi}','{version}','{created}','{authorid}','{author}','{id}','{submitter}','{title}','{categories}','{update_date}','{pages}','{figures}','{year}','{month}') ;\n"
                  
              )
    
      f.close()



second_task = PythonOperator(
    task_id='prepare_stg_insert_stmt',
    dag=ingest_data_dag,
    trigger_rule='none_failed',
    python_callable=create_staging,
    op_kwargs={
        'output_folder': PROCESSED_FOLDER,
    },
)
third_task = PostgresOperator(
    task_id='insert_stg_to_db',
    dag=ingest_data_dag,
    postgres_conn_id='airflow_pg',
    sql='staging_insert.sql',
    trigger_rule='none_failed',
    autocommit=True,
)

first_task >> second_task >> third_task
from datetime import timedelta
import pandas as pd
import os
import numpy as np

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

SOURCE_FOLDER = './/source'
PROCESSED_FOLDER = './/processed_data'

ingest_data_dag = DAG(
    dag_id='ingest_data', # name of dag
    schedule_interval='@once', # execute once
    start_date=days_ago(1), #must run manually
    catchup=False, # in case execution has been paused, should it execute everything in between
    template_searchpath=PROCESSED_FOLDER+"/processed_data", # the PostgresOperator will look for files in this folder
    default_args=DEFAULT_ARGS, # args assigned to all operators
)

# Task 1 - ingest and clean data

def transform_data(source_folder,output_folder):
    #Ingest data, clean and write cleaned data to parquet file
    files_in_source = os.listdir(source_folder)
    article_data_path = None
    for filename in files_in_source:
        if filename.endswith('.json'):
            article_data_path = f'{source_folder}/{filename}'
    if article_data_path is not None:
        articles = pd.read_json(article_data_path, lines=True)
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
        articles.to_csv((f'{output_folder}/articles.csv'), index=False)
        os.remove(article_data_path)


task = PythonOperator(
    task_id='ingest_data',
    dag=ingest_data_dag,
    trigger_rule='none_failed',
    python_callable=transform_data,
    op_kwargs={
        'source_folder': SOURCE_FOLDER,
        'output_folder': PROCESSED_FOLDER,
    }
)

task
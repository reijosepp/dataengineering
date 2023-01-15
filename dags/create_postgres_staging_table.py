from datetime import timedelta

from airflow import DAG
from airflow.providers.postgres.operators.postgres import PostgresOperator
from airflow.utils.dates import days_ago
import pandas as pd
from airflow.operators.python_operator import PythonOperator, BranchPythonOperator
import os


def create_staging(input_folder, output_folder):
    filepath = f'{input_folder}/articles.csv'

    if filepath is not None:
      data = pd.read_csv(filepath)
      with open(f'{output_folder}/staging_insert.sql', 'w') as f:
          f.write(
              'DROP TABLE IF EXISTS staging_article_data; \n'
              'CREATE TABLE IF NOT EXISTS staging_article_data (\n'
              'article_id VARCHAR(1000),\n'
              'doi VARCHAR(1000),\n'
              'version_id VARCHAR(1000),\n'
              'version VARCHAR(1000),\n'
              'created DATE,\n'
              'author_id VARCHAR(1000),\n'
              'author VARCHAR(5000),\n'
              'id VARCHAR(1000),\n'
              'submitter VARCHAR(1000),\n'
              'title VARCHAR(1000),\n'
              'categories VARCHAR(1000),\n'
              'update_date VARCHAR(1000),\n'
              'pages integer,\n'
              'figures integer,\n'
              'year VARCHAR(1000),\n'
              'month VARCHAR(1000));\n'
          )
          data_rows = data.iterrows()
          for index,row in data_rows:
              article_id = "NULL"
              doi = row["doi"]
              version_id = "NULL"
              version = row["version"]
              created = row["created"]
              author_id = "NULL"
              author = str(row["author"]).replace("'","")
              id = row["id"]
              submitter = str(row["submitter"]).replace("'","").replace("{","\{").replace("=","\=").replace("}","\}")
              title = str(row["title"]).replace("'","").replace("{","\{").replace("=","\=").replace("}","\}")
              categories = row["categories"]
              update_date = row["update_date"]
              pages = row["pages"]
              figures = row["figures"]
              year = row["year"]
              month = row["month"]
      
              f.write(
                  "INSERT INTO staging_article_data VALUES ("
                  f"'{article_id}','{doi}','{version_id}','{version}','{created}','{author_id}','{author}','{id}','{submitter}','{title}','{categories}','{update_date}','{pages}','{figures}','{year}','{month}') ;\n"
                  
              )
    
      f.close()

second_task = PythonOperator(
    task_id='prepare_stg_insert_stmt',
    dag=ingest_data_dag,
    trigger_rule='none_failed',
    python_callable=create_staging,
    op_kwargs={
        'input_folder': PROCESSED_FOLDER,
        'output_folder': SQL_FOLDER
    },
)

third_task = PostgresOperator(
    task_id='insert_stg_to_db',
    dag=ingest_data_dag,
    postgres_conn_id='airflow_pg',
    sql=f'{SQL_FOLDER}//staging_insert.sql',
    trigger_rule='none_failed',
    autocommit=True,
)


>> second_task >> third_task
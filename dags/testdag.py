import requests
import math
import json
from datetime import datetime, timedelta
#import crossref_commons.retrieval - have to figure out dockerfile to import
import pandas as pd

from airflow import DAG 
from airflow.operators.python_operator import PythonOperator, BranchPythonOperator
from airflow.operators.bash_operator import BashOperator 
from airflow.operators.dummy_operator import DummyOperator
from airflow.providers.postgres.operators.postgres import PostgresOperator
from airflow.utils.dates import days_ago

DEFAULT_ARGS = {
    'owner': 'Tartu',
    'depends_on_past': False,
    'retries': 1,
    'retry_delay': timedelta(minutes=5)
}


DATA_FOLDER = '/tmp/data'

fetch_iss_dag = DAG(
    dag_id='test_dag', # name of dag
    schedule_interval='@once', # execute every minute
    start_date=days_ago(1),
    catchup=False, # in case execution has been paused, should it execute everything in between
    template_searchpath=DATA_FOLDER, # the PostgresOperator will look for files in this folder
    default_args=DEFAULT_ARGS, # args assigned to all operators
)

# Task 1 - create test table

def prepare_insert(output_folder):
    with open(f'{output_folder}/testdataset.json', 'r') as f:
        articles = json.load(f)
    with open(f'{output_folder}/insert.sql', 'w') as f:
        f.write(
            'DROP TABLE IF EXISTS test_article_table; \n'
            'CREATE TABLE IF NOT EXISTS test_article_table (\n'
            'id VARCHAR(255),\n'
            'submitter VARCHAR(255));\n'
            'INSERT INTO test_article_table\n'
            '(id, submitter)\n'
            f'SELECT \'{articles["id"]}\' as id,\n'
            f'\'{articles["submitter"]}\' as submitter;'
        )
    f.close()

    


first_task = PythonOperator(
    task_id='prepare_insert_stmt',
    dag=fetch_iss_dag,
    trigger_rule='none_failed',
    python_callable=prepare_insert,
    op_kwargs={
        'output_folder': DATA_FOLDER,
    },
)
second_task = PostgresOperator(
    task_id='insert_to_db',
    dag=fetch_iss_dag,
    postgres_conn_id='airflow_pg',
    sql='insert.sql',
    trigger_rule='none_failed',
    autocommit=True,
)

first_task >> second_task


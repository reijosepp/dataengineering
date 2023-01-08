import requests
import math
import json
from datetime import datetime, timedelta
import crossref_commons.retrieval
import pandas as pd
import os

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
    template_searchpath=DATA_FOLDER, # the PostgresOperator will look for files in this folder
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

def create_citations(article_df):
    # Create file for references
    # Select n articles from each category, 
    # if reference exists in dataframe: save doi-doi file
    return 0

first_task = PythonOperator(
    task_id='prepare_insert_stmt',
    dag=ingest_data_dag,
    trigger_rule='none_failed',
    python_callable=transform_data,
    op_kwargs={
        'input_folder': DATA_FOLDER,
    },
)



def get_crossref():
    print(crossref_commons.retrieval.get_publication_as_json('10.5621/sciefictstud.40.2.0382')) 

third_task = PythonOperator(
    task_id = 'get_crossref',
    python_callable = get_crossref
)
first_task >> third_task
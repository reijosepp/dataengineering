import crossref_commons.retrieval
from datetime import datetime, date, timedelta
from airflow import DAG 
from airflow.operators.python_operator import PythonOperator
from airflow.utils.dates import days_ago
import pandas as pd
import os
from csv import writer

DEFAULT_ARGS = {
    'owner': 'Tartu',
    'depends_on_past': False,
    'retries': 1,
    'retry_delay': timedelta(minutes=5)
}

DATA_FOLDER = './data'
PROCESSED_FOLDER = os.getcwd()

test_dag = DAG(
    dag_id='test', # name of dag
    schedule_interval='@once', # execute once
    start_date=days_ago(1), #must run manually
    catchup=False, # in case execution has been paused, should it execute everything in between
    template_searchpath=DATA_FOLDER, # the PostgresOperator will look for files in this folder
    default_args=DEFAULT_ARGS, # args assigned to all operators
)

def get_crossref(doi):
    json_info = crossref_commons.retrieval.get_publication_as_json(doi)
    if 'reference' not in json_info.keys():
        return []
    data = json_info['reference']
    refs = [row['DOI'] for row in data if 'DOI' in row.keys()]
    return refs

def get_csv_filename():
    path = ".//processed_data"
    dir_list = os.listdir(path)
    print(dir_list)
    for filename in dir_list:
        if filename.endswith("articles.csv"):
            return ".//processed_data//" + filename
    return None

def generate_citations():
    filepath = get_csv_filename()
    if filepath is not None:
        data = pd.read_csv(filepath)
        dois = data.doi.unique()
        with open('.//processed_data//testset.csv', 'a', newline='') as f_object: 
            # Pass the CSV  file object to the writer() function
            writer_object = writer(f_object)
            # Result - a writer object
            for i in range(min(len(dois), 10)):
                doi = dois[i]
                citations = get_crossref(doi)
                for citation in citations:
                    writer_object.writerow([doi, citation])
                    # Pass the data in the list as an argument into the writerow() function
                # Close the file object
            f_object.close()

task = PythonOperator(
    task_id = 'get_crossref',
    python_callable = generate_citations,
    dag=test_dag
)

task
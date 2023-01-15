import crossref_commons.retrieval
from datetime import datetime, date, timedelta
from airflow import DAG 
from airflow.operators.python_operator import PythonOperator
from airflow.utils.dates import days_ago
from airflow.operators.sensors import ExternalTaskSensor
import pandas as pd
import os
from csv import writer

DEFAULT_ARGS = {
    'owner': 'Tartu',
    'depends_on_past': False,
    'retries': 1,
    'retry_delay': timedelta(minutes=5)
}

PROCESSED_FOLDER = ".//processed_data"

test_dag = DAG(
    dag_id='load_citations', # name of dag
    schedule_interval='@once', # execute once
    start_date=days_ago(1), #must run manually
    catchup=False, # in case execution has been paused, should it execute everything in between
    default_args=DEFAULT_ARGS, # args assigned to all operators
)

def get_crossref(doi):
    try:
        json_info = crossref_commons.retrieval.get_publication_as_json(doi)
        if 'reference' not in json_info.keys():
            return []
        data = json_info['reference']
        refs = [row['DOI'] for row in data if 'DOI' in row.keys()]
        return refs
    except:
        return []

def generate_citations(io_folder):
    filepath = f'{io_folder}/articles.csv'
    if filepath is not None:
        data = pd.read_csv(filepath)
        dois = data.doi.unique()
        with open(f'{io_folder}/citations.csv', 'a', newline='') as f_object:

            # Pass the CSV  file object to the writer() function
            writer_object = writer(f_object)

            if os.stat(f'{io_folder}/citations.csv').st_size == 0:
                writer_object.writerow(['doi1', 'doi2'])
            # Result - a writer object
            for i in range(len(dois)):
                doi = dois[i]
                citations = get_crossref(doi)
                for citation in citations:
                    writer_object.writerow([doi, citation])
                    # Pass the data in the list as an argument into the writerow() function
                # Close the file object
            f_object.close()

wait_for_data = ExternalTaskSensor(
    task_id="get_crossref",
    external_dag_id='ingest_data',
    external_task_id='task',
    mode="reschedule"
)

task = PythonOperator(
    task_id = 'get_crossref',
    python_callable = generate_citations,
    dag=test_dag,
    op_kwargs={
        'io_folder': PROCESSED_FOLDER,
    }
)

wait_for_data >> task
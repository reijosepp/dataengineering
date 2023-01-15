import crossref_commons.retrieval

from airflow import DAG 
from airflow.operators.python_operator import PythonOperator

DEFAULT_ARGS = {
    'owner': 'Tartu',
    'depends_on_past': False,
    'retries': 1,
    'retry_delay': timedelta(minutes=5)
}


DATA_FOLDER = '/tmp/data'
PROCESSED_FOLDER = os.getcwd()
#to access: f'{processed_folder (or whatever variable)}/processed_data'

test_dag2 = DAG(
    dag_id='test', # name of dag
    schedule_interval='@once', # execute once
    start_date=days_ago(1), #must run manually
    catchup=False, # in case execution has been paused, should it execute everything in between
    template_searchpath=DATA_FOLDER, # the PostgresOperator will look for files in this folder
    default_args=DEFAULT_ARGS, # args assigned to all operators
)


def get_crossref():
    print(crossref_commons.retrieval.get_publication_as_json('10.5621/sciefictstud.40.2.0382')) 


task = PythonOperator(
    task_id = 'get_crossref',
    python_callable = get_crossref,
    dag=test_dag2
)

task
from datetime import timedelta

from airflow import DAG
from airflow.providers.postgres.operators.postgres import PostgresOperator
from airflow.utils.dates import days_ago

DEFAULT_ARGS = {
    'owner': 'Tartu',
    'depends_on_past': False,
    'retries': 1,
    'retry_delay': timedelta(minutes=5)
}

DATA_FOLDER = '/tmp/data'

load_postgres_dag = DAG(
    dag_id='load_postgres_dag', # name of dag
    schedule_interval='@once', # execute every minute
    start_date=days_ago(1),
    catchup=False, # in case execution has been paused, should it execute everything in between
    template_searchpath=SQL, # the PostgresOperator will look for files in this folder
    default_args=DEFAULT_ARGS, # args assigned to all operators
)

first_task = PostgresOperator(
    task_id='run_load_into_postgres_sql',
    dag=load_postgres_dag,
    postgres_conn_id='airflow_pg',
    sql='load_into_postgres.sql',
    trigger_rule='none_failed',
    autocommit=True,
)


first_task 
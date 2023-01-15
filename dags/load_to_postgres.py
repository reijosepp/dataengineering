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

SQL_FOLDER = './/sql'

load_postgres_dag = DAG(
    dag_id='load_into_postgres_dag', # name of dag
    schedule_interval='@once', # execute every minute
    start_date=days_ago(1),
    catchup=False, # in case execution has been paused, should it execute everything in between
<<<<<<< HEAD
    template_searchpath=SQL, # the PostgresOperator will look for files in this folder
=======
    template_searchpath=SQL_FOLDER, # the PostgresOperator will look for files in this folder
>>>>>>> 88065b30329f850cfcd6e91cfc741a749a3ea60a
    default_args=DEFAULT_ARGS, # args assigned to all operators
)

first_task = PostgresOperator(
    task_id='run_load_into_dwh_sql',
    dag=load_postgres_dag,
    postgres_conn_id='airflow_pg',
    sql='load_into_postgres.sql',
    trigger_rule='none_failed',
    autocommit=True,
)


first_task 
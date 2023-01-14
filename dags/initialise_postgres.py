from datetime import timedelta

DEFAULT_ARGS = {
    'owner': 'Tartu',
    'depends_on_past': False,
    'retries': 1,
    'retry_delay': timedelta(minutes=5)
}

DATA_FOLDER = '/tmp/data'

initialise_postgres_dag = DAG(
    dag_id='initialise_postgres', # name of dag
    schedule_interval='@once', # execute every minute
    start_date=days_ago(1),
    catchup=False, # in case execution has been paused, should it execute everything in between
    template_searchpath=DATA_FOLDER, # the PostgresOperator will look for files in this folder
    default_args=DEFAULT_ARGS, # args assigned to all operators
)

first_task = PostgresOperator(
    task_id='run_initialise_postgres_sql',
    dag=initialise_postgres_dag,
    postgres_conn_id='airflow_pg',
    sql='initialise_postgres_schema.sql',
    trigger_rule='none_failed',
    autocommit=True,
)

first_task
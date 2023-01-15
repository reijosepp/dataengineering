from datetime import timedelta

from airflow import DAG
from airflow.providers.neo4j.operators.neo4j import Neo4jOperator
from airflow.utils.dates import days_ago

DEFAULT_ARGS = {
    'owner': 'Tartu',
    'depends_on_past': False,
    'retries': 1,
    'retry_delay': timedelta(minutes=5)
}

DATA_FOLDER = '/tmp/data'

load_to_neo4j_dag = DAG(
    dag_id='load_to_neo4j', # name of dag
    schedule_interval='@once', # execute every minute
    start_date=days_ago(1),
    catchup=False, # in case execution has been paused, should it execute everything in between
    template_searchpath=DATA_FOLDER, # the PostgresOperator will look for files in this folder
    default_args=DEFAULT_ARGS, # args assigned to all operators
)


neo4j_task = Neo4jOperator(
    task_id="run_neo4j_query",
    neo4j_conn_id="airflow_neo4j",
    sql='CREATE (n:Person {name: "Reijo Sepp", age: 25})',
    dag=load_to_neo4j_dag,
)

neo4j_task
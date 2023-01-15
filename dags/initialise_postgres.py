from datetime import timedelta

from airflow import DAG
from airflow.providers.postgres.operators.postgres import PostgresOperator
from airflow.utils.dates import days_ago
import pandas as pd
from airflow.operators.python_operator import PythonOperator, BranchPythonOperator
import os


DEFAULT_ARGS = {
    'owner': 'Tartu',
    'depends_on_past': False,
    'retries': 1,
    'retry_delay': timedelta(minutes=5)
}

DATA_FOLDER = '/tmp/data'
LOOKUP_TABLES = os.getcwd()

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

second_task = PostgresOperator(
    task_id='create_bi_views',
    dag=initialise_postgres_dag,
    postgres_conn_id='airflow_pg',
    sql='create_bi_views_postgres.sql',
    trigger_rule='none_failed',
    autocommit=True,
)




def insert_category(input_folder,output_folder):
    filepath = f'{input_folder}/lookup_tables/categories_lookup.csv'

    data = pd.read_csv(filepath)
    with open(f'{output_folder}/initialise_insert.sql', 'w') as f:
        data_rows = data.iterrows()
        for index,row in data_rows:
            category_code = row["category"]
            category_name = row["category_name"]

    
            f.write(
                "INSERT INTO category VALUES ("
                f"'{category_code}','{category_name}') ;\n"
                
            )
    
    f.close()



third_task = PythonOperator(
    task_id='prepare_category_table',
    dag=initialise_postgres_dag,
    trigger_rule='none_failed',
    python_callable=insert_category,
    op_kwargs={
        'input_folder': LOOKUP_TABLES,
        'output_folder': DATA_FOLDER,
    },
)
fourth_task = PostgresOperator(
    task_id='insert_stg_to_db',
    dag=initialise_postgres_dag,
    postgres_conn_id='airflow_pg',
    sql='initialise_insert.sql',
    trigger_rule='none_failed',
    autocommit=True,
)

first_task >> second_task >> third_task >> fourth_task
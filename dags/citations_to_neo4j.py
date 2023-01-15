from datetime import datetime, timedelta
import neo4j

from airflow import DAG
from airflow.operators.python_operator import PythonOperator
from airflow.providers.neo4j.operators.neo4j import Neo4jOperator

import pandas as pd

# Default arguments to be passed into tasks
default_args = {
    'owner': 'Tartu'
}

PROCESSED_FOLDER = './/processed_data'

with DAG(
        'citations_to_neo4j',
        default_args = default_args,
        schedule_interval = timedelta(days=1),
        start_date = datetime(2021, 10, 15),
        catchup = False,
        tags = ['dataengineering'],
) as dag:

    ############# Neo4j Functions #############

    driver = neo4j.GraphDatabase.driver('bolt://172.25.0.4', auth=None)

    def create_citation_relationship(doi1, doi2):
        return (f'MATCH (a:Article), (b:Article)'
                f'WHERE a.doi = "{doi1}" AND b.doi = "{doi2}"' 
                f'MERGE (a)-[r:CITES]->(b)')

    ############# Pipeline Functions #############

    def add_citations():

        filepath = f'{PROCESSED_FOLDER}/citations.csv'

        try:

            citations = pd.read_csv(filepath)

            with driver.session(database='neo4j') as session:

                for i in range(len(citations)):
                    session.run(create_citation_relationship(row['doi1'], row['doi2']))

            driver.close()

        except:
            print('No citations file.')

    ############# Pipeline Tasks #############

    # Populate usage data to Neo4j
    add_citations_task = PythonOperator(
        task_id = 'add_citations',
        python_callable = add_citations,
        dag=dag
        )

    add_citations
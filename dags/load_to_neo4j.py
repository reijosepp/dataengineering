from datetime import datetime, date, timedelta
import json
import os
import random
import neo4j
from airflow import DAG
from airflow.operators.python_operator import PythonOperator, BranchPythonOperator

import pandas as pd

# Default arguments to be passed into tasks
default_args = {
    'owner': 'Tartu'
}

with DAG(
        'load_to_neo4j',
        default_args = default_args,
        schedule_interval = timedelta(days=1),
        start_date = datetime(2021, 10, 15),
        catchup = False,
        tags = ['dataengineering'],
) as dag:

    ############# Neo4j Functions #############

    driver = neo4j.GraphDatabase.driver('bolt://172.25.0.4', auth=None)

    def create_article_node(doi, title, pages, figures):
        return f'CREATE (n:Article {{IdMaster: "{doi}", title: "{title}", pages: {pages}, figures: {figures}}})'

    def create_author_node(author):
        return f'CREATE (n:Author {{IdMaster: "{author}"}})'

    def create_journal_node(journal):
        return f'CREATE (n:Journal {{IdMaster: "{journal}"}})'
    
    def create_category_node(category):
        return f'CREATE (n:Category {{IdMaster: "{category}"}})'

    def create_article_version_node(doi, version, created):
        return f'CREATE (n:Version {{IdMaster: "{doi + " - " + version}, doi: "{doi}", version: "{version}", created: "{created}""}})'

    def create_year_node(year):
        return f'CREATE (n:Year {{IdMaster: "{year}"}})'

    def create_authorship_relationship(doi, author):
        return (f'MATCH (a:Author), (b:Article)'
                f'WHERE a.IdMaster = "{author}" AND b.IdMaster = "{doi}"' 
                f'CREATE (a)-[r:AUTHORS]->(b)')

    def create_is_published_in_relationship(doi, journal):
        return (f'MATCH (a:Article), (b:Journal)' 
                f'WHERE a.IdMaster = "{doi}" AND b.IdMaster = "{journal}"' 
                f'CREATE (a)-[r:IS_PUBLISHED_IN]->(b)'	)

    def create_belongs_to_relationship(doi, category):
        return (f'MATCH (a:Article), (b:Category)' 
                f'WHERE a.IdMaster = "{doi}" AND b.IdMaster = "{category}"' 
                f'CREATE (a)-[r:BELONGS_TO]->(b)')

    def node_exists(type, id):
        return (f'OPTIONAL MATCH (n:{type} {{IdMaster: "{id}" }})'
                f'RETURN n IS NOT NULL AS Predicate')
    
    def relationship_exists(type_r, type_a, type_b, id_a, id_b):
        return(f'OPTIONAL MATCH (a:{type_a} {{IdMaster: "{id_a}"}})-[r:{type_r}]->(b:{type_b} {{IdMaster: "{id_b}"}})'
               f'RETURN r IS NOT NULL AS Predicate')

    ############# Pipeline Functions #############

    def get_csv_filename():
        path = ".//processed_data"
        dir_list = os.listdir(path)
        print(dir_list)
        for filename in dir_list:
            if filename.endswith(".csv"):
                return ".//processed_data//" + filename
        return None

    def populate_data():

        filepath = get_csv_filename()

        if filepath is not None:

            print('Loading!' + filepath)
            data = pd.read_csv(filepath)

            with driver.session(database='neo4j') as session:

                for i in range(len(data)):

                    row = data.iloc[i, :]

                    if (not session.run(node_exists('Article', row['doi'])).single().value()):
                        session.run(create_article_node(row['doi'], row['title'].replace('"', '').replace('\\', ''), row['pages'], row['figures']))
                    
                    if (not session.run(node_exists('Author', row['author'])).single().value()):
                        session.run(create_author_node(row['author']))
                    
                    if (not session.run(node_exists('Journal', str(row['journal-ref']).replace('"', ''))).single().value()):
                        session.run(create_journal_node(str(row['journal-ref']).replace('"', '')))
                    
                    if (not session.run(node_exists('Category', row['categories'])).single().value()):
                        session.run(create_category_node(row['categories']))
                    
                    if (not session.run(relationship_exists('AUTHORS', 'Author', 'Article', row['author'], row['doi'])).single().value()):
                        session.run(create_authorship_relationship(row['doi'], row['author']))

                    if (not session.run(relationship_exists('IS_PUBLISHED_IN', 'Article', 'Journal', row['doi'], str(row['journal-ref']).replace('"', ''))).single().value()):
                        session.run(create_is_published_in_relationship(row['doi'], str(row['journal-ref']).replace('"', '')))

                    if (not session.run(relationship_exists('BELONGS_TO', 'Article', 'Category', row['doi'], row['categories'])).single().value()):
                        session.run(create_belongs_to_relationship(row['doi'], row['categories']))

            driver.close()

        else:
            print('no data file found')

    ############# Pipeline Tasks #############

    # Populate usage data to Neo4j
    populate_data = PythonOperator(
        task_id = 'populate_data',
        python_callable = populate_data,
        dag=dag
        )

    populate_data
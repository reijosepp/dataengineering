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
        return f'CREATE (n:Article {{doi: "{doi}", title: "{title}", pages: {pages}, figures: {figures}}})'

    def create_author_node(author):
        return f'CREATE (n:Author {{name: "{author}"}})'

    def create_journal_node(journal):
        return f'CREATE (n:Journal {{journal: "{journal}"}})'
    
    def create_category_node(category):
        return f'CREATE (n:Category {{category: "{category}"}})'

    def create_article_version_node(doi, version, created):
        return f'CREATE (n:Version {{doi: "{doi}", version: "{version}", created: "{created}""}})'

    def create_year_node(year):
        return f'CREATE (n:Year {{year: "{year}"}})'

    def create_authorship_relationship(doi, author):
        return (f'MATCH (a:Author), (b:Article)'
                f'WHERE a.name = "{author}" AND b.doi = "{doi}"' 
                f'CREATE (a)-[r:AUTHORS]->(b)')

    def create_is_published_in_relationship(doi, journal):
        return (f'MATCH (a:Article), (b:Journal)' 
                f'WHERE a.doi = "{doi}" AND b.journal = "{journal}"' 
                f'CREATE (a)-[r:IS_PUBLISHED_IN]->(b)'	)

    def create_belongs_to_relationship(doi, category):
        return (f'MATCH (a:Article), (b:Category)' 
                f'WHERE a.doi = "{doi}" AND b.category = "{category}"' 
                f'CREATE (a)-[r:BELONGS_TO]->(b)')

    def node_exists(type, field, id):
        return (f'OPTIONAL MATCH (n:{type} {{{field}: "{id}" }})'
                f'RETURN n IS NOT NULL AS Predicate')
    
    def relationship_exists(type_r, type_a, type_b, field_a, field_b, id_a, id_b):
        return(f'OPTIONAL MATCH (a:{type_a} {{{field_a}: "{id_a}"}})-[r:{type_r}]->(b:{type_b} {{{field_b}: "{id_b}"}})'
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

                    if (not session.run(node_exists('Article', 'doi', row['doi'])).single().value()):
                        session.run(create_article_node(row['doi'], row['title'].replace('"', '').replace('\\', ''), row['pages'], row['figures']))
                    
                    if (not session.run(node_exists('Author', 'author', row['author'])).single().value()):
                        session.run(create_author_node(row['author']))
                    
                    if (not session.run(node_exists('Journal', 'journal', str(row['journal-ref']).replace('"', ''))).single().value()):
                        session.run(create_journal_node(str(row['journal-ref']).replace('"', '')))
                    
                    if (not session.run(node_exists('Category', 'category', row['categories'])).single().value()):
                        session.run(create_category_node(row['categories']))
                    
                    if (not session.run(relationship_exists('AUTHORS', 'Author', 'Article', 'name', 'doi', row['author'], row['doi'])).single().value()):
                        session.run(create_authorship_relationship(row['doi'], row['author']))

                    if (not session.run(relationship_exists('IS_PUBLISHED_IN', 'Article', 'Journal', 'doi', 'journal', row['doi'], str(row['journal-ref']).replace('"', ''))).single().value()):
                        session.run(create_is_published_in_relationship(row['doi'], str(row['journal-ref']).replace('"', '')))

                    if (not session.run(relationship_exists('BELONGS_TO', 'Article', 'Category', 'doi', 'category', row['doi'], row['categories'])).single().value()):
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
from datetime import datetime, date, timedelta
import json
import os
import random
import neo4j
from airflow import DAG
from airflow.operators.python_operator import PythonOperator
from airflow.providers.neo4j.operators.neo4j import Neo4jOperator

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

    driver = neo4j.GraphDatabase.driver('bolt://172.25.0.3', auth=None)

    def create_article_node(doi, title, pages, figures):
        return f'CREATE (n:Article {{doi: "{doi}", title: "{title}", pages: {pages}, figures: {figures}}})'

    def create_author_node(author):
        return f'CREATE (n:Author {{name: "{author}"}})'

    def create_journal_node(journal):
        return f'CREATE (n:Journal {{journal: "{journal}"}})'
    
    def create_discipline_node(category_name):
        return f'CREATE (n:Discipline {{discipline: "{category_name}"}})'

    def create_article_version_node(doi, version, created):
        return f'CREATE (n:Version {{doi: "{doi}", version: "{version}", created: "{created}"}})'

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

    def create_belongs_to_relationship(doi, discipline):
        return (f'MATCH (a:Article), (b:Discipline)' 
                f'WHERE a.doi = "{doi}" AND b.discipline = "{discipline}"' 
                f'CREATE (a)-[r:BELONGS_TO]->(b)')

    def create_has_relationship(doi, version):
        return (f'MATCH (a:Article), (b:Version)' 
                f'WHERE a.doi = "{doi}" AND b.doi = "{doi}" AND b.version = "{version}"' 
                f'MERGE (a)-[r:HAS]->(b)')

    def node_exists(type, field, id):
        return (f'OPTIONAL MATCH (n:{type} {{{field}: "{id}" }})'
                f'RETURN n IS NOT NULL AS Predicate')
    
    def article_version_exists(doi, version):
        return (f'OPTIONAL MATCH (n:Version {{doi: "{doi}", version: "{version}"}})'
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

        categories_lookup_table_filename = './/lookup_tables//categories_lookup.csv'
        categories_lookup = pd.read_csv(categories_lookup_table_filename)
        cat = {}
        for i in range(len(categories_lookup)):
            row = categories_lookup.iloc[i, :]
            cat[row['category']] = row['category_name']

        if filepath is not None:

            print('Loading!' + filepath)
            data = pd.read_csv(filepath)

            with driver.session(database='neo4j') as session:

                for i in range(len(data)):

                    row = data.iloc[i, :]
                    row['title'] = str(row['title']).replace('"', '').replace('\\', '')
                    row['journal-ref'] = str(row['journal-ref']).replace('"', '').replace('\\', '')

                    if (not session.run(node_exists('Article', 'doi', row['doi'])).single().value()):
                        session.run(create_article_node(row['doi'], row['title'], row['pages'], row['figures']))
                    
                    if (not session.run(node_exists('Author', 'author', row['author'])).single().value()):
                        session.run(create_author_node(row['author']))
                    
                    if (not session.run(node_exists('Journal', 'journal', row['journal-ref'])).single().value()):
                        session.run(create_journal_node(str(row['journal-ref']).replace('"', '')))
                    
                    if (not session.run(node_exists('Discipline', 'discipline', cat[row['categories'].split(" ")[0]])).single().value()):
                        session.run(create_discipline_node(cat[row['categories'].split(" ")[0]]))

                    if (not session.run(article_version_exists(row['doi'], row['version'])).single().value()):
                        session.run(create_article_version_node(row['doi'], row['version'], row['year']))
                    
                    if (not session.run(relationship_exists('AUTHORS', 'Author', 'Article', 'name', 'doi', row['author'], row['doi'])).single().value()):
                        session.run(create_authorship_relationship(row['doi'], row['author']))

                    if (not session.run(relationship_exists('IS_PUBLISHED_IN', 'Article', 'Journal', 'doi', 'journal', row['doi'], row['journal-ref'])).single().value()):
                        session.run(create_is_published_in_relationship(row['doi'], str(row['journal-ref']).replace('"', '')))

                    if (not session.run(relationship_exists('BELONGS_TO', 'Article', 'Discipline', 'doi', 'discipline', row['doi'], cat[row['categories'].split(" ")[0]])).single().value()):
                        session.run(create_belongs_to_relationship(row['doi'], cat[row['categories'].split(" ")[0]]))
                    
                    session.run(create_has_relationship(row['doi'], row['version']))

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

    update_discipline_journal_ties = Neo4jOperator(
        task_id = 'update_publishes_from_relationships',
        neo4j_conn_id="airflow_neo4j",
        sql='MATCH (j:Journal)<-[IS_PUBLISHED_IN]-(a:Article)-[BELONGS_TO]->(d:Discipline) MERGE (j) -[r:PUBLISHES_FROM]-> (d)',
        dag=dag,
    )

    update_has_published_in_ties = Neo4jOperator(
        task_id = 'update_has_published_in_relationships',
        neo4j_conn_id="airflow_neo4j",
        sql='MATCH (j:Journal)<-[IS_PUBLISHED_IN]-(a:Article)<-[AUTHORS]-(b:Author) MERGE (b)-[r:HAS_PUBLISHED_IN]->(j)',
        dag=dag,
    )

    populate_data >> update_discipline_journal_ties  >> update_has_published_in_ties
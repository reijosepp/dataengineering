from datetime import timedelta
import pandas as pd
import os
import numpy as np
import neo4j
import crossref_commons.retrieval
import pandas as pd
import os
from csv import writer
from airflow import DAG 
from airflow.operators.python_operator import PythonOperator, BranchPythonOperator
from airflow.providers.neo4j.operators.neo4j import Neo4jOperator
from airflow.operators.bash_operator import BashOperator 
from airflow.operators.dummy_operator import DummyOperator
from airflow.providers.postgres.operators.postgres import PostgresOperator
from airflow.utils.dates import days_ago
from airflow.sensors.filesystem import FileSensor

DEFAULT_ARGS = {
    'owner': 'Team15',
    'depends_on_past': False,
    'retries': 1,
    'retry_delay': timedelta(minutes=5)
}

SOURCE_FOLDER = './/source'
PROCESSED_FOLDER = './/processed_data'
SQL_FOLDER = './/sql'

pipeline_dag = DAG(
    dag_id='arxiv_data_pipeline', # name of dag
    schedule_interval='@once', # execute once
    start_date=days_ago(1), #must run manually
    catchup=False, # in case execution has been paused, should it execute everything in between
    template_searchpath=SQL_FOLDER, # the PostgresOperator will look for files in this folder
    default_args=DEFAULT_ARGS, # args assigned to all operators
)

##### INGEST AND CLEAN DATA #####

def transform_data(source_folder,output_folder):
    #Ingest data, clean and write cleaned data to parquet file
    files_in_source = os.listdir(source_folder)
    article_data_path = None
    for filename in files_in_source:
        if filename.endswith('.json'):
            article_data_path = f'{source_folder}/{filename}'
    if article_data_path is not None:
        articles = pd.read_json(article_data_path, lines=True)
        #drop all values where doi is null
        articles = articles[articles['doi'].notna()]
        #drop all values where name is null
        articles = articles[articles['authors'].notna()]
        #drop abstract, report-no and license
        articles = articles.drop(columns=['report-no', 'abstract','license'],axis=1)
        articles = articles.fillna(value=np.nan)
        articles['doi'] = articles['doi'].astype('str') 
        ##extract pages
        articles["pages"] = articles["comments"].str.findall("\d+ page")
        articles["pages"] = articles["pages"].replace(np.nan)
        articles['pages'] = articles['pages'].astype('str') 
        articles["pages"] = articles["pages"].replace("[]","0")
        articles["pages"] = articles["pages"].str.extract("(\d+)")
        articles['pages'] = articles['pages'].fillna(0)
        ##extract figures
        articles["figures"] = articles["comments"].str.findall("\d+ figure")
        articles["figures"] = articles["figures"].replace(np.nan)
        articles['figures'] = articles['figures'].astype('str') 
        articles["figures"] = articles["figures"].replace("[]","0")
        articles["figures"] = articles["figures"].str.extract("(\d+)")
        articles['figures'] = articles['figures'].fillna(0)
        articles = articles.drop(columns=['comments'],axis=1)
        articles['id'] = articles['id'].astype('str') 
        articles["year"] = 2000 + articles["id"].str[0].astype(int)
        articles["month"] = articles["id"].str[1:3].astype(int)
        version = articles[["doi","versions"]]
        authors = articles[["doi","authors_parsed"]]
        articles = articles.drop(columns=["authors","authors_parsed","versions"])
        authors['authors_parsed'] = authors['authors_parsed'].astype('string') 
        authors["authors_par_"] = authors["authors_parsed"].str.findall("\[(.*?)\]")
        authors['authors_par_'] = authors['authors_par_'].astype('str') 
        authors["authors_par_"] = authors["authors_par_"].str.replace("[","")
        authors["authors_par_"] = authors["authors_par_"].str.replace("]","")
        authors["authors_par_"] = authors["authors_par_"].str.replace(",",".")
        authors["authors_par_"] = authors["authors_par_"].str.split("\'\'\"")
        authors = authors.explode("authors_par_")
        authors["authors_par_"] = authors["authors_par_"].str.replace("\'","")
        authors["authors_par_"] = authors["authors_par_"].str.replace("\"","")
        authors["authors_par_"] = authors["authors_par_"].str.lstrip(".")
        authors = authors[authors['authors_par_'].str.strip().astype(bool)]
        authors.rename(columns = {'authors_par_':'author'}, inplace = True)
        authors = authors.drop(columns=["authors_parsed"])

        authors["author"] = authors["author"].str.replace("\\","")
        articles = (pd.merge(authors, articles, on='doi',  how='left'))
        #versions
        versions_split = (pd.concat({k: pd.DataFrame(v) for k, v in version.pop('versions').items()})
            .reset_index(level=1, drop=True))
        version = version.join(versions_split, rsuffix='_').reset_index(drop=True)
        articles = (pd.merge(version, articles, on='doi',  how='left'))
        articles['created'] = articles['created'].astype('str') 
        articles['created'] = articles['created'].str.slice(5, 16)
        articles['created'] = articles['created'].replace(r"^ +| +$", r"", regex=True)
        articles['created'] = pd.to_datetime(articles['created'], format='%d %b %Y')
        articles.replace('\.\.', ".", inplace=True,regex=True)
        articles.replace('\. *\.', ".", inplace=True,regex=True)
        articles.replace('\\', "", inplace=True)
        articles["title"] = articles["title"].str.replace("\\","")
        articles["submitter"] = articles["submitter"].str.replace("\\","")
        articles.replace("'","",inplace=True)
        articles["submitter"] = articles['submitter'].str.split(" ").str[-1]
        articles["author_type"] = articles['author'].str.replace('.', "",).str.strip().str.split(" ").str[0] ==articles["submitter"]
        articles=articles.assign(author_type=np.where(articles['author_type'] == True, 1, 2))
        articles.to_csv((f'{output_folder}/articles.csv'), index=False)
        os.remove(article_data_path)


##### GENERATE CITATIONS #####

def get_crossref(doi):
    try:
        json_info = crossref_commons.retrieval.get_publication_as_json(doi)
        if 'reference' not in json_info.keys():
            return []
        data = json_info['reference']
        refs = [row['DOI'] for row in data if 'DOI' in row.keys()]
        return refs
    except:
        return []

def generate_citations(io_folder):
    filepath = f'{io_folder}/articles.csv'
    if filepath is not None:
        data = pd.read_csv(filepath)
        dois = data.doi.unique()
        with open(f'{io_folder}/citations.csv', 'a', newline='') as f_object:

            # Pass the CSV  file object to the writer() function
            writer_object = writer(f_object)

            if os.stat(f'{io_folder}/citations.csv').st_size == 0:
                writer_object.writerow(['doi1', 'doi2'])
            # Result - a writer object
            for i in range(len(dois)):
                doi = dois[i]
                citations = get_crossref(doi)
                for citation in citations:
                    writer_object.writerow([doi, citation])
                    # Pass the data in the list as an argument into the writerow() function
                # Close the file object
            f_object.close()


############# Neo4j Functions #############

driver = neo4j.GraphDatabase.driver('bolt://172.25.0.4', auth=None)

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

############# Graph db loading pipeline functions #############

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

def create_citation_relationship(doi1, doi2):
    return (f'MATCH (a:Article), (b:Article)'
            f'WHERE a.doi = "{doi1}" AND b.doi = "{doi2}"' 
            f'MERGE (a)-[r:CITES]->(b)')

############# Pipeline Functions #############

def add_citations():

    filepath = f'{PROCESSED_FOLDER}/citations.csv'

    citations = pd.read_csv(filepath)

    with driver.session(database='neo4j') as session:

        for i in range(len(citations)):
            row = citations.iloc[i, :]
            session.run(create_citation_relationship(row['doi1'], row['doi2']))

    driver.close()

def add_citations_postgres(output_folder):

    filepath = f'{PROCESSED_FOLDER}/citations.csv'

    citations = pd.read_csv(filepath)
    with open(f'{output_folder}/citations_stg_insert.sql', 'w') as f:
          data_rows = citations.iterrows()
          for index,row in data_rows:
              doi_1 = row["doi_1"]
              doi_2 = row["doi_2"]
      
              f.write(
                  "INSERT INTO citation VALUES ("
                  f"'{doi_1}','{doi_2}') ON CONFLICT DO NOTHING ;\n"
                  
              )
    
    f.close()




############# Pipeline Tasks #############


def create_staging(input_folder, output_folder):
    filepath = f'{input_folder}/articles.csv'

    if filepath is not None:
      data = pd.read_csv(filepath)
      with open(f'{output_folder}/staging_insert.sql', 'w') as f:
          f.write(
              'DROP TABLE IF EXISTS staging_article_data; \n'
              'CREATE TABLE IF NOT EXISTS staging_article_data (\n'
              'article_id VARCHAR(1000),\n'
              'doi VARCHAR(1000),\n'
              'version_id VARCHAR(1000),\n'
              'version VARCHAR(1000),\n'
              'created DATE,\n'
              'author_id VARCHAR(1000),\n'
              'author VARCHAR(5000),\n'
              'id VARCHAR(1000),\n'
              'submitter VARCHAR(1000),\n'
              'title VARCHAR(1000),\n'
              'categories VARCHAR(1000),\n'
              'update_date VARCHAR(1000),\n'
              'pages integer,\n'
              'figures integer,\n'
              'year VARCHAR(1000),\n'
              'month VARCHAR(1000),\n'
              'author_type integer);\n'
          )
          data_rows = data.iterrows()
          for index,row in data_rows:
              article_id = "NULL"
              doi = row["doi"]
              version_id = "NULL"
              version = row["version"]
              created = row["created"]
              author_id = "NULL"
              author = str(row["author"]).replace("'","")
              id = row["id"]
              submitter = str(row["submitter"]).replace("'","").replace("{","\{").replace("=","\=").replace("}","\}")
              title = str(row["title"]).replace("'","").replace("{","\{").replace("=","\=").replace("}","\}")
              categories = str(row["categories"]).split(" ")[0]
              update_date = row["update_date"]
              pages = row["pages"]
              figures = row["figures"]
              year = row["year"]
              month = row["month"]
              author_type = row["author_type"]
              journal_ref = row["journal-ref"]

      
              f.write(
                  "INSERT INTO staging_article_data VALUES ("
                  f"'{article_id}','{doi}','{version_id}','{version}','{created}','{author_id}','{author}','{id}','{submitter}','{title}','{categories}','{update_date}','{pages}','{figures}','{year}','{month}','{author_type}','{journal_ref}') ;\n"
                  
              )
    
      f.close()


create_staging_sql = PythonOperator(
    task_id='prepare_stg_insert_stmt',
    dag=pipeline_dag,
    trigger_rule='none_failed',
    python_callable=create_staging,
    op_kwargs={
        'input_folder': PROCESSED_FOLDER,
        'output_folder': SQL_FOLDER
    },
)

run_staging_sql = PostgresOperator(
    task_id='insert_stg_to_db',
    dag=pipeline_dag,
    postgres_conn_id='airflow_pg',
    sql='staging_insert.sql',
    trigger_rule='none_failed',
    autocommit=True,
)

# Populate usage data to Neo4j
populate_neo4j_data = PythonOperator(
    task_id = 'populate_data_neo4j',
    python_callable = populate_data,
    dag=pipeline_dag
    )

update_discipline_journal_ties = Neo4jOperator(
    task_id = 'update_publishes_from_relationships_neo4j',
    neo4j_conn_id="airflow_neo4j",
    sql='MATCH (j:Journal)<-[IS_PUBLISHED_IN]-(a:Article)-[BELONGS_TO]->(d:Discipline) MERGE (j) -[r:PUBLISHES_FROM]-> (d)',
    dag=pipeline_dag
)

update_has_published_in_ties = Neo4jOperator(
    task_id = 'update_has_published_in_relationships_neo4j',
    neo4j_conn_id="airflow_neo4j",
    sql='MATCH (j:Journal)<-[IS_PUBLISHED_IN]-(a:Article)<-[AUTHORS]-(b:Author) MERGE (b)-[r:HAS_PUBLISHED_IN]->(j)',
    dag=pipeline_dag
)

file_sensing_task = FileSensor(
    dag=pipeline_dag,
    task_id = 'source_folder_check',
    filepath = SOURCE_FOLDER,
    fs_conn_id = 'my_file_system',
    poke_interval = 10
)

ingestion_task = PythonOperator(
    task_id='ingest_data',
    dag=pipeline_dag,
    trigger_rule='none_failed',
    python_callable=transform_data,
    op_kwargs={
        'source_folder': SOURCE_FOLDER,
        'output_folder': PROCESSED_FOLDER,
    }
)

citations_task = PythonOperator(
    task_id = 'get_crossref_citations',
    python_callable = generate_citations,
    dag=pipeline_dag,
    op_kwargs={
        'io_folder': PROCESSED_FOLDER,
    }
)


# Populate usage data to Neo4j
add_citations_neo4j_task = PythonOperator(
    task_id = 'add_neo4j_citations',
    python_callable = add_citations,
    dag=pipeline_dag
    )

# Populate citation data to Postgres
add_citations_postgres_task = PythonOperator(
    task_id = 'add_postgres_citations',
    python_callable = add_citations_postgres,
    dag=pipeline_dag,
        op_kwargs={
        'output_folder': SQL_FOLDER,
    }
    
)

load_citations_to_postgres = PostgresOperator(
    task_id='run_load_citations_into_postgres_sql',
    dag=pipeline_dag,
    postgres_conn_id='airflow_pg',
    sql='citations_stg_insert.sql',
    trigger_rule='none_failed',
    autocommit=True,
)

load_to_postgres = PostgresOperator(
    task_id='run_load_into_postgres_sql',
    dag=pipeline_dag,
    postgres_conn_id='airflow_pg',
    sql='load_into_postgres.sql',
    trigger_rule='none_failed',
    autocommit=True,
)

file_sensing_task >> ingestion_task >> citations_task 

file_sensing_task >> ingestion_task >> populate_neo4j_data >> update_discipline_journal_ties  >> update_has_published_in_ties

file_sensing_task >> ingestion_task >> create_staging_sql >> run_staging_sql >> load_to_postgres

[update_has_published_in_ties, citations_task] >> add_citations_neo4j_task



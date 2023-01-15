
INSERT INTO article (arxiv_id,title,doi,pages,figures) SELECT distinct id,title,doi,pages,figures from staging_article_data;

INSERT INTO author (author_name) SELECT distinct(Author) from staging_article_data;


UPDATE staging_article_data AS s
SET author_id = a.author_id
FROM author AS a
WHERE s.author = a.author_name ;

UPDATE staging_article_data AS s
SET article_id = a.article_id
FROM article AS a
WHERE s.id = a.arxiv_id;


INSERT INTO article_author (article_id,author_id) SELECT distinct CAST(article_id as integer),CAST(author_id as integer) from staging_article_data;

INSERT INTO article_version (article_id,article_version,publication_date) select distinct CAST(article_id as integer),version,created from staging_article_data;


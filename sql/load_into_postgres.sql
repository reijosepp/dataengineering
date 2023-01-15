
INSERT INTO article (arxiv_id,title,doi,pages,figures) SELECT distinct id,title,doi,pages,figures from staging_article_data ON CONFLICT DO NOTHING;

INSERT INTO author (author_name) SELECT distinct(Author) from staging_article_data ON CONFLICT DO NOTHING;


UPDATE staging_article_data AS s
SET author_id = a.author_id
FROM author AS a
WHERE s.author = a.author_name;

UPDATE staging_article_data AS s
SET article_id = a.article_id
FROM article AS a
WHERE s.id = a.arxiv_id;


INSERT INTO authorship_type (authorship_type_id,authorship_type_name) VALUES (1,'main author') ON CONFLICT DO NOTHING;

INSERT INTO authorship_type (authorship_type_id,authorship_type_name) VALUES (2,'co-author') ON CONFLICT DO NOTHING ;


INSERT INTO article_author (article_id,author_id) SELECT distinct CAST(article_id as integer),CAST(author_id as integer) from staging_article_data ON CONFLICT DO NOTHING;

INSERT INTO article_version (article_id,article_version,publication_date) select distinct CAST(article_id as integer),version,created from staging_article_data ON CONFLICT DO NOTHING;

INSERT INTO article_category(
	article_id, category_code) select distinct CAST(article_id as integer), categories from staging_article_data ON CONFLICT DO NOTHING;

UPDATE article_author AS au
SET authorship_type_id = a.author_type
FROM staging_article_data AS a
WHERE au.article_id = CAST(a.article_id as integer) and au.author_id = CAST(a.author_id as integer);    
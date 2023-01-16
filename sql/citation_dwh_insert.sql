
UPDATE staging_citation_data AS sc SET article_id_1 = a.article_id FROM article AS a WHERE sc.doi_1 = a.doi;  
UPDATE staging_citation_data AS sc SET article_id_2 = a.article_id FROM article AS a WHERE sc.doi_2 = a.doi; 
INSERT INTO citation (article_id_1,article_id_2) (SELECT DISTINCT a.article_id_1, a.article_id_2 FROM staging_citation_data AS a where a.article_id_1 is not null and a.article_id_2 is not null) ON CONFLICT DO NOTHING;
    
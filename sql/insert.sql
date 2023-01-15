DROP TABLE IF EXISTS test_article_table; 
CREATE TABLE IF NOT EXISTS test_article_table (
id VARCHAR(255),
submitter VARCHAR(255));
INSERT INTO test_article_table
(id, submitter)
SELECT '0704.0001' as id,
'Pavel Nadolsky' as submitter;
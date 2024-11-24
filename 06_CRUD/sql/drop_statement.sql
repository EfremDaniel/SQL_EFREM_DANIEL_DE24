DROP TABLE database.sql;

DROP SCHEMA programming CASCADE;
DROP SCHEMA database CASCADE;

SELECT * FROM information_schema.schemata;
SELECT * FROM information_schema.tables;

DROP SEQUENCE id_sql_sequence CASCADE; 
DROP SEQUENCE id_duckdb_sequence CASCADE; 
DROP SEQUENCE id_python_sequence CASCADE; 

DESC;

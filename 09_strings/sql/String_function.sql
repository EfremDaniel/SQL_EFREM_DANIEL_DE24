SELECT * FROM staging.sql_glossary;

SELECT
	'SQL_word' AS type,
	sql_word,
	sql_word[:2],
	sql_word[2:5],
	sql_word[-1]
FROM
	staging.sql_glossary;
	
SELECT UPPER(SUBSTRING('hej', 1, 1)) || 'ej' || ' ' ||UPPER('de24') AS type;


SELECT
	sql_word,
	UPPER(TRIM(sql_word)) AS sql_word,
FROM
	staging.sql_glossary;
	
SELECT
	REPLACE(TRIM(description), ' ', ''),
	REPLACE(TRIM(description), ' ', ' ')
FROM
	staging.sql_glossary; 
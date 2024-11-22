SELECT * FROM exercise.sql_course;

DELETE FROM exercise.sql_course WHERE content = '02_setup_duckdb';

SELECT * FROM exercise.sql_course;

INSERT
	INTO
	exercise.sql_course(content,
	week,
	content_type)
VALUES
	('02_setup_duckdb',
	46,
	'lecture');
	
SELECT * FROM exercise.sql_course ORDER BY week, content;
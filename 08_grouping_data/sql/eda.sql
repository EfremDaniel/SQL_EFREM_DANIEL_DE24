SELECT * FROM main.food; 
-------------------------
DESC TABLE main.food;
-------------------------
SELECT
	COUNT(DISTINCT id)
FROM
	main.food;
-------------------------
SELECT
	COUNT(*) AS number_row
FROM
	main.food;
-------------------------
SELECT
	*
FROM
	main.food
WHERE
	week_id BETWEEN '2004-04' AND '2004-06';

------------------------------------------------------------------------

SELECT id FROM main.food GROUP BY id;
SELECT * FROM main.food;


CREATE TABLE IF NOT EXISTS cleaned_food AS (
SELECT
	id AS Food,
	SUBSTRING(week_id, 1, 4) AS Year,
	SUBSTRING(week_id, 6, 7) AS Week,
	value AS number_searches
FROM
	main.food
);

SELECT * FROM main.cleaned_food;

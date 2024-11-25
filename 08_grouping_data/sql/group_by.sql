SELECT
	*
FROM
	main.cleaned_food;

SELECT
	Food,
	Year,
	SUM(number_searches) AS total_searches
FROM
	main.cleaned_food
GROUP BY
	Food,
	Year 
ORDER BY
	total_searches DESC
	LIMIT 5;
---------------------------------------------------------------------
SELECT
	Food,
	Year,
	SUM(number_searches) AS total_searches
FROM
	main.cleaned_food
GROUP BY
	Food,
	Year 
ORDER BY
	total_searches DESC
	LIMIT 5;
	
SELECT DISTINCT Year FROM main.cleaned_food ORDER BY Year DESC;
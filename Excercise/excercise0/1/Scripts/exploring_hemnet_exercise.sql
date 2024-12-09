-- 1. a) ingested data

-- 1. b) 
SELECT * FROM main.hemnet_data;

-- 1. c)
SELECT COUNT(*) FROM main.hemnet_data;

-- testing percentage_different
SELECT 6950000*0.07;
-- = 486,500
SELECT 6950000-6950000*0.07;

-- 1. d)
DESC TABLE main.hemnet_data;

-- 1. e)
SELECT
	final_price,
	asked_price,
	area,
	address
FROM
	main.hemnet_data
ORDER BY
	final_price DESC
	LIMIT 5;

-- 1. f)
SELECT
	final_price,
	asked_price,
	area,
	address
FROM
	main.hemnet_data
ORDER BY
	final_price 
	LIMIT 5;

-- 1. g)
SELECT
	MIN(final_price) AS min,
	MEDIAN(final_price) AS median,
	AVG(final_price) AS mean, 
	MAX(final_price) AS max
FROM
	main.hemnet_data hd;

-- 1. i)
SELECT
	COUNT(DISTINCT commune)
FROM
	main.hemnet_data; 

-- 1. j)
SELECT
	COUNT(*)/ 500 * 100 AS percentage_above_10million
FROM
	main.hemnet_data
WHERE
	final_price > 10000000;


SELECT
	hd.address,
	hd.final_price,
	hd.rooms 
FROM
	main.hemnet_data hd
WHERE hd.rooms < 4;












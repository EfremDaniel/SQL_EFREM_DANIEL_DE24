-- Union --
SELECT
	'Customers' AS Type,
	c.first_name,
	c.last_name
FROM
	main.customer c
WHERE
	c.first_name LIKE 'A%'
UNION 
SELECT
	'Actors',
	a.last_name,
	a.last_name AS Type
FROM
	main.actor a
WHERE
	a.first_name LIKE 'A%';

-- Intersect --
SELECT
	'Customers' AS Type,
	c.first_name,
	c.last_name
FROM
	main.customer c
WHERE
	c.first_name LIKE 'A%'
INTERSECT 
SELECT
	'Actors',
	a.last_name,
	a.last_name AS Type
FROM
	main.actor a
WHERE
	a.first_name LIKE 'A%';
----------------------------

SELECT
	'Customer' AS Type,
	c.first_name,
	c.last_name
FROM
	main.customer c
WHERE
	c.first_name LIKE 'J%'
	AND c.last_name LIKE 'D%';
UNION 
SELECT
	'Actor' AS Type,
	a.first_name,
	a.last_name
FROM
	main.actor a 
WHERE
	a.first_name LIKE 'J%'
	AND a.last_name LIKE 'D%';

-- With UNION you remove any duplicares, UNION ALL includes the duplicates 

	


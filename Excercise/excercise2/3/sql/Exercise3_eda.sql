-- a)
SELECT
	'Customers' AS Type,
	c.first_name,
	c.last_name
FROM
	main.customer c
WHERE
	c.last_name LIKE 'G%';
	

----------------------------

-- b)
SELECT
	'Customers' AS Type,
	c.first_name,
	c.last_name
FROM
	main.customer c
WHERE
	c.first_name LIKE 'ANN%'

INTERSECT 

SELECT
	'Actors' AS Type,
	a.first_name, 
	a.last_name 
FROM
	main.actor a
WHERE a.first_name LIKE 'ANN%';

--------------------------------

-- c)
SELECT * FROM main.customer c;
SELECT * FROM main.address a;
SELECT * FROM main.city c;
SELECT * FROM main.country c;
SELECT * FROM main.address a;


SELECT
	c.first_name,
	c.last_name,
	a.address,
	city.city,
	cont.country 
FROM
	main.customer c
LEFT JOIN main.address a ON c.address_id = a.address_id
LEFT JOIN main.city city ON a.city_id = city.city_id
LEFT JOIN main.country cont ON city.country_id = cont.country_id;

-----------------------------------------------------------------

-- d)
SELECT
	c.first_name,
	c.last_name,
	a.address,
	city.city,
	cont.country 
FROM
	main.customer c
LEFT JOIN main.address a ON c.address_id = a.address_id
LEFT JOIN main.city city ON a.city_id = city.city_id
LEFT JOIN main.country cont ON city.country_id = cont.country_id
WHERE c.first_name LIKE 'J%' AND c.last_name LIKE 'D%';


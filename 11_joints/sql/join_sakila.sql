SELECT * FROM main.film f;
SELECT * FROM main.film_actor fa;
SELECT * FROM main.actor a;



SELECT
	a.first_name,
	a.last_name,
	fa.film_id
FROM
	main.actor a
LEFT JOIN main.film_actor fa ON a.actor_id = fa.actor_id;
-------------------------------------------------
SELECT
	a.first_name,
	a.last_name,
	f.title
FROM
	main.actor a
LEFT JOIN main.film_actor fa ON
	a.actor_id = fa.actor_id
LEFT JOIN main.film f ON
	f.film_id = fa.film_id;
----------------------------------------------------
SELECT
	f.title,
	c.name AS 'genre'
FROM
	main.film_category fc
JOIN main.category c ON
	fc.category_id = c.category_id
JOIN main.film f ON
	fc.film_id = f.film_id;
	
------------------------------------------------------
SELECT * FROM main.staff s;
SELECT * FROM main.address a;
SELECT * FROM main.city c;
SELECT * FROM main.country cty;

SELECT
	s.first_name,
	s.last_name,
	a.address,
	c.city,
	cty.country 
FROM
	main.staff s
LEFT JOIN main.address a ON
	s.address_id = a.address_id
LEFT JOIN main.city c ON
	a.city_id = c.city_id
LEFT JOIN main.country cty ON
	c.country_id = cty.country_id;
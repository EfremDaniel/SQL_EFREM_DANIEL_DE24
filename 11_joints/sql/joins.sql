SELECT
	*
FROM
	main.plants p;

SELECT
	*
FROM
	main.plant_care pc;
	
---------------------------------------------
-- Here you can chose the order you want the table to look like
-- Best if you go table after table so that it looks better and easier to understand
-- when you have all of your NULLS on side of the columns
SELECT
	p.plant_id,
	p.plant_name,
	p.type,
	pc.water_schedule,
	pc.sunlight 
FROM 
	main.plants p
LEFT JOIN 
	main.plant_care pc ON p.plant_id = pc.plant_id;
-- Left join
-- Gets all from left table, with or without a match in the right table
-- Without match --> NULL on right columns
-------------------------------------------------
-- Right join is the same concepts as the left join but the other side
SELECT
	p.plant_id,
	p.plant_name,
	p.type,
	pc.water_schedule,
	pc.sunlight 
FROM
	main.plants p
RIGHT JOIN 
	main.plant_care pc ON p.plant_id = pc.plant_id;
---------------------------------------------------
SELECT
	p.plant_id,
	p.plant_name,
	p.type,
	pc.water_schedule,
	pc.sunlight 
FROM
	main.plants p
INNER JOIN 
	main.plant_care pc ON p.plant_id = pc.plant_id;
SELECT * FROM main.transformers;

SELECT
	CASE
	WHEN employment_type = 'FT' THEN 'Full time'
	WHEN employment_type = 'PT' THEN 'Part time'
	WHEN employment_type = 'CT' THEN 'Contract'
	WHEN employment_type = 'FL' THEN 'Freelance'
	ELSE employment_type 
	END
	employment_type
FROM
	main.transformers;

UPDATE
	main.transformers
SET
	employment_type = CASE
		WHEN employment_type = 'FT' THEN 'Full time'
		WHEN employment_type = 'PT' THEN 'Part time'
		WHEN employment_type = 'CT' THEN 'Contract'
		WHEN employment_type = 'FL' THEN 'Freelance'
		ELSE employment_type
	END;

SELECT * FROM main.transformers; 

SELECT DISTINCT employment_type FROM main.transformers; 

-------------------------------------------------------------
SELECT
	CASE
	WHEN company_size = 'L' THEN 'Large'
	WHEN company_size = 'M' THEN 'Medium'
	WHEN company_size = 'S' THEN 'Small'
	ELSE company_size 
	END
	company_size 
FROM
	main.transformers;

UPDATE
	main.transformers
SET
	company_size = CASE 
	WHEN company_size = 'L' THEN 'Large'
	WHEN company_size = 'M' THEN 'Medium'
	WHEN company_size = 'S' THEN 'Small'
	ELSE company_size 
	END;

SELECT * FROM main.transformers ORDER BY salary_in_usd DESC;

--------------------------------------------
SELECT
	CASE
		WHEN experience_level = 'SE' THEN 'Senior'
		WHEN experience_level = 'EX' THEN 'Expert'
		WHEN experience_level = 'MI' THEN 'Mid-level'
		WHEN experience_level = 'EN' THEN 'Entry-level'
		ELSE experience_level
		END
		experience_level
FROM
	main.transformers;

UPDATE
	main.transformers
SET
	experience_level = CASE
	WHEN experience_level = 'SE' THEN 'Senior'
	WHEN experience_level = 'EX' THEN 'Expert'
	WHEN experience_level = 'MI' THEN 'Mid-level'
	WHEN experience_level = 'EN' THEN 'Entry-level'
	ELSE experience_level
	END;

SELECT * FROM main.transformers;

--------------------------------------------

ALTER TABLE main.transformers ADD COLUMN salary_in_sek DOUBLE;

 UPDATE main.transformers
   SET salary_in_sek = ROUND(salary_in_usd * 10.97, -3);

SELECT * FROM main.transformers ORDER BY salary_in_sek DESC;

----------------------------------------------

ALTER TABLE main.transformers ADD COLUMN salary_in_sek_per_month DOUBLE;

UPDATE
	main.transformers
SET
	salary_in_sek_per_month = ROUND(salary_in_sek / 12, -3);

SELECT * FROM main.transformers;

------------------------------------------------

ALTER TABLE main.transformers ADD COLUMN salary_level VARCHAR;

SELECT
	MIN(salary_in_sek_per_month) AS min_month_sek
	MAX(salary_in_sek_per_month) AS max_month_sek
	ROUND(AVG(salary_in_sek_per_month)) AS avg_month_sek
	ROUND(MEDIAN(salary_in_sek_per_month)) AS median_month_sek

FROM main.transformers;

SELECT COUNT(salary_in_sek_per_month) FROM main.transformers WHERE salary_in_sek_per_month > 500000; 

UPDATE main.transformers
SET salary_level = 'High end'
WHERE salary_in_sek_per_month > 500000;

UPDATE main.transformers
SET salary_level = 'High'
WHERE salary_in_sek_per_month BETWEEN 250000 AND 500000;

UPDATE main.transformers
SET salary_level = 'Medium'
WHERE salary_in_sek_per_month BETWEEN 100000 AND 250000;

UPDATE main.transformers
SET salary_level = 'Low'
WHERE salary_in_sek_per_month < 100000;

SELECT * FROM main.transformers ORDER BY salary_in_sek DESC;

--------------------------------------------------------------



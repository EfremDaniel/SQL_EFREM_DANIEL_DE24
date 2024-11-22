--1
SELECT * FROM main.data_jobs;

--2
SELECT job_title, employment_type, salary_in_usd FROM main.data_jobs;

--3
SELECT * FROM main.data_jobs WHERE salary_in_usd > 190000 AND company_location = 'CA' ; 

--4
SELECT * FROM main.data_jobs LIMIT 9;

--5
SELECT * EXCLUDE(salary, company_size, employee_residence) FROM main.data_jobs; 

--6
SELECT DISTINCT job_title FROM main.data_jobs;

--7
SELECT COUNT(DISTINCT salary_currency) FROM main.data_jobs; 

--8
SELECT DISTINCT salary_currency AS unique_currency FROM main.data_jobs;

--9
SELECT
	*
FROM
	main.data_jobs
ORDER BY
	salary_in_usd DESC,
	job_title ASC;


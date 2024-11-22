SELECT
	*
FROM
	main.data_jobs
ORDER BY
	salary_in_usd;
	
SELECT
	*
FROM
	main.data_jobs
ORDER BY
	salary_in_usd
DESC;


SELECT
	* EXCLUDE(remote_ratio, company_location, salary, work_year)
FROM
	main.data_jobs
ORDER BY
	salary_in_usd DESC,
	job_title ASC;
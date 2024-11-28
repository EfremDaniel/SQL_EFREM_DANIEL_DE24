SELECT * FROM main.transformers;

-- a) 
SELECT COUNT(job_title) FROM main.transformers WHERE job_title = 'Data Engineer';

-- 3464 Data Engineers

--------------------------------------------------------------------------------

-- b)
SELECT DISTINCT job_title FROM main.transformers;

-- 155 unique jobs

---------------------------------------------------------------------------------

-- c)
SELECT COUNT(*) FROM main.transformers WHERE salary_level = 'Low';

-- High end = 26
-- High = 695
-- Medium = 11 103
-- Low = 4 710

-----------------------------------------------------------------------------------

-- d)
SELECT SUM(salary_in_sek) FROM main.transformers WHERE experience_level = 'EN';
SELECT COUNT(salary_in_sek) FROM main.transformers WHERE experience_level = 'EN';

SELECT ROUND(1342009000/1325);



SELECT MEDIAN(salary_in_sek) FROM main.transformers WHERE experience_level = 'EN';

-- Median:
-- SE = 1700000
-- EX = 2106000
-- MI = 1262000
-- EN = 911000

-- Mean:
-- SE = 1795390
-- EX = 2142084
-- MI = 1381390
-- EN = 1012837

-------------------------------------------------------------------------------------





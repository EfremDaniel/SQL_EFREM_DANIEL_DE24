SELECT 42 as meaning_of_life;

VALUES (1), (2), (3);

CREATE TABLE IF NOT EXISTS people_records AS (
SELECT
	*
FROM  
    (
VALUES 
    (1, 'John'),
    (2, 'Johanna'),
    (3, 'Mustafa')) AS people(id,name) );
    
desc;
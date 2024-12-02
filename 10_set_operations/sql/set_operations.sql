-- Used to combine results from two or more SELECT statements
-- The requirement is that all SELECT statements must return the same number of columns
-- and corresponding columns must have compatible data types
SELECT * FROM synthetic.sales_jan
UNION 
SELECT * FROM synthetic.sales_feb;

-------------------------------------

SELECT * EXCLUDE(sale_date) FROM synthetic.sales_jan
UNION 
SELECT * EXCLUDE(sale_date) FROM synthetic.sales_feb;

-------------------------------------
-- used to return only those rows that appear in 
-- both (or all) of the result sets are included in the final output.
SELECT * FROM synthetic.sales_jan
INTERSECT 
SELECT * FROM synthetic.sales_feb;


SELECT product_name, amount FROM synthetic.sales_jan
INTERSECT 
SELECT product_name, amount FROM synthetic.sales_feb; 

---------------------------------------
-- Used to return rows from the first SELECT statement that are not present in the second.
-- Can be used to easily identify differences between two datasets.
SELECT product_name, amount FROM synthetic.sales_jan
EXCEPT 
SELECT product_name, amount FROM synthetic.sales_feb; 

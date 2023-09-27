
-- Group functions operate on sets of rows to give one result per group.
--FUNCTION DESCRIPTION
--AVG • Calculates the average value in a column
--COUNT • Determines the number of rows in a table
--MAX • Determines the maximum value in a column
--MIN • Determines the minimum value in a column
--SUM • Calculates the total of the values in a column

--   • Helps to count the number of rows in a table
--   • Allows the use of asterisk (*) to represent any column 

--COUNT(*) returns the number of rows in a table:
SELECT COUNT(*)
FROM employees
WHERE department_id = 50;
--COUNT(expr) returns the number of rows with non-null values for expr:
SELECT COUNT(commission_pct)
FROM employees
WHERE department_id = 80;

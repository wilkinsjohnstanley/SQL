-- • Used to calculate totals of columns
-- • Column must be specified and must be numeric
SELECT COUNT(*), SUM(BALANCE)
FROM CUSTOMER;
-- • Similar to using SUM, except that different statistics are calculated
-- • A V G calculates the average value in a numeric range
-- • MAX calculates the maximum value in a numeric range
-- • MIN calculates the minimum value in a numeric range
SELECT SUM(BALANCE), AVG(BALANCE), MAX(BALANCE), MIN(BALANCE)
FROM CUSTOMER;
--You can use AVG and SUM for numeric data.
SELECT AVG(salary), MAX(salary),
MIN(salary), SUM(salary)
FROM employees
WHERE job_id LIKE '%rep%';

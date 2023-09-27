--Group functions ignore null values in the column:
SELECT AVG(commission pct)
FROM employees;
--The NVL function forces group functions to include null values:
SELECT AVG(NVL(commission_pct, 0))
FROM employees;

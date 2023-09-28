--Advanced Aggregate Functions in SQL (GROUP BY, HAVING vs. WHERE)
SELECT country, COUNT(*)
FROM customers
GROUP BY country
ORDER BY count(*) DESC;
--ADD CITY, must include in the GROUP BY clause as well as the SELECT clause
SELECT country, city, COUNT(*)
FROM customers
GROUP BY country, city
ORDER BY count(*) DESC;
--HAVING comes after the GROUP BY clause
--filter your aggregations
--we add a having clause to make sure there are more than one customer in a city
SELECT country, city, COUNT(*)
FROM customers
GROUP BY country, city
HAVING COUNT(*) > 1
ORDER BY count(*) DESC;
--CAN'T USE A WHERE ON AN AGGREGATE,
--you can use a WHERE clause, for example select countries that have an 'a'
SELECT country, city, COUNT(*)
FROM customers
WHERE country LIKE '%a%'
GROUP BY country, city
HAVING COUNT(*) > 1
ORDER BY count(*) DESC;
--if you are selecting multiple columns, you can use numbers!
SELECT 1, 2, COUNT(*)
FROM customers
WHERE country LIKE '%a%'
GROUP BY 1, 2
HAVING COUNT(*) > 1
ORDER BY count(*) DESC;

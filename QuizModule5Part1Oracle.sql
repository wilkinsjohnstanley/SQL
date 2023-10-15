1. 
--SELECT location_id, street_address, city, state_province, country_name
--FROM locations
--NATURAL JOIN countries;
SELECT l.location_id, l.street_address, l.city, l.state_province, l.country_id, c.country_id
FROM locations l, countries c
WHERE (l.country_id = c.country_id);

2. 
SELECT e.last_name, e.department_id, d.department_name
FROM employees e, departments d
WHERE (e.department_id = d.department_id);


3. 
SELECT e.last_name, e.job_id, e.department_id, d.department_name
FROM employees e, departments d, locations l
WHERE (e.department_id = d.department_id)
AND (d.location_id = l.location_id)
AND ( l.city = 'Toronto');

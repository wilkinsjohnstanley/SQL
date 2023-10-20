

--Write a query for the HR department to produce the addresses of all the departments. Use the LOCATIONS and COUNTRIES tables. Display the location ID, street address, city, state or province, and country in the output. Include the join condition in the WHERE clause and use table aliases as the prefixes.


SELECT l.location_id, l.street_address, l.city, l.state_province, l.country_id, c.country_id
FROM locations l, countries c
WHERE (l.country_id = c.country_id);
 


--The HR department needs a report of all employees. Write a query to display the last name, department number, and department name for all employees. Include the join condition in the WHERE clause and use table aliases as the prefixes.



SELECT e.last_name, e.department_id, d.department_name
FROM employees e, departments d
WHERE (e.department_id = d.department_id);
 


--The HR department needs a report of employees in Toronto. Display the last name, job, department number, and the department name for all employees who work in Toronto. Include the join condition in the WHERE clause. Use table aliases for the prefixes.

--Hint: You will need two join conditions to join three tables, and you will also need an additional condition in the WHERE clause.



SELECT e.last_name, e.job_id, e.department_id, d.department_name
FROM employees e, departments d, locations l
WHERE (e.department_id = d.department_id)
AND (d.location_id = l.location_id)
AND ( l.city = 'Toronto');

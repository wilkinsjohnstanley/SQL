--Display the maximum aerage salary:
SELECT MAX(AVG(salary))
FROM employees
GROUP BY department_id;

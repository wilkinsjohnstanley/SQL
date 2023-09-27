--Add the salaries in the EMPLOYEES table for each job, grouped by department
SELECT department_id, job_id, SUM(salary)
FROM employees
WHERE department_id > 40
GROUP BY department_id, job_id
ORDER BY department_id;

--Illegal Queries
--Using Group Functions
--• You cannot use the WHERE clause to restrict groups.
--• You use the HAVING clause to restrict groups.
--• You cannot use group functions in the WHERE clause. 

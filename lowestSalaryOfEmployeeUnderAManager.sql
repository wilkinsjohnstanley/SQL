SELECT manager_id, MIN(salary)
FROM employees
WHERE manager_id IS NOT NULL
GROUP BY manager_id
HAVING MIN(salary) > 6000
ORDER BY MIN(salary) DESC;
--Create a report to display the manager number and the salary of the lowest-paid
--employee for that manager. Exclude anyone whose manager is not known. Exclude
--any groups where the minimum salary is $6,000 or less. Sort the output in descending
--order of salary.

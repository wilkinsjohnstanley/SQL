SELECT department_id, MIN(salary)
FROM employeyes
GROUP BY department_id
HAVING MIN(salary) >
                      (SELECT MIN(salary)
                      FROM employees
                      WHERE department_id = 50);

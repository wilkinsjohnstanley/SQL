SELECT department_id, job_id, avg(salary)   
FROM employees 
GROUP BY department_id, job_id;

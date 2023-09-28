SELECT CREDIT_LIMIT, COUNT(*)
FROM customer
GROUP BY credit_limit
HAVING count(*) > 2
ORDER BY credit_limit;

--limit using WHERE and LIKE is done before the GROUP BY and HAVING clauses respectively

SELECT job_id, SUM(salary) AS PAYROLL
FROM employees
WHERE job_id NOT LIKE '%REP%'
GROUP BY job_id
HAVING(salary) > 13000
ORDER BY PAYROLL;

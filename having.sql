SELECT job_id, SUM(salary) PAYROLL
FROM employees
WHERE job_id NOT LIKE '%REP%'
GROUP BY job_id
HAVING SUM(salary) > 13000
ORDER BY SUM(salary);
--• Used to restrict groups that will be included in query results
--• HAVING versus WHERE
--• WHERE: Limits rows
--• HAVING: Limits groups
--• Can be used together if condition involves both rows and groups
--When you use the HAVING clause, the Oracle server restricts
--groups as follows:
--1. Rows are grouped.
--2. The group function is applied.
--3. Groups matching the HAVING clause are displayed.
SELECT department_id, MAX(salary)
FROM employees
GROUP BY department_id
HAVING MAX(salary)>10000 ;

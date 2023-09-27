--• Creates groups of rows that share common characteristics
--• When grouping rows, any calculations indicated in the SELECT command are performed for the entire group
--• Allows grouping of data on a particular column and calculation of statistics
--All columns in the SELECT list that are not in group functions must be in the GROUP BY clause.
SELECT department_id, AVG(salary)
FROM employees
GROUP BY department_id ;

--The GROUP BY column does not have to be in the SELECT list.
SELECT AVG(salary)
FROM employees
GROUP BY department_id ;

--SELECT Command Grouping Records in a Column
SELECT REP_ID, AVG(BALANCE)
  FROM CUSTOMER
        GROUP BY REP_ID
        ORDER BY REP_ID;

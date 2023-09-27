--Oracle Practice 1 Solutions
--1. To determine the DEPARTMENTS table structure:
DESCRIBE countries
--2. To view the data contained in DEPARTMENTS:
SELECT *
FROM countries;
--3. To determine the EMPLOYEES table structure:
DESCRIBE employees
--4. Query:
SELECT employee_id, last_name, job_id, salary, hire_date "DATE HIRED"
FROM employees;
--5. To save in SQL*Plus:
SAVE lab_01_04.sql
--6. Run your query in the file lab_01_04.sql.
--@lab_01_04.sql OR startlab_01_04.sql will run this statement:
SELECT employee_id, last_name, job_id, hire_date
FROM employees;
--7. Create a query to display unique job codes from the EMPLOYEES table.
SELECT DISTINCT country_id
FROM locations;
--8. Copy the statement from lab_01_05.sql. Name the column
--headings Emp #, Employee, Job, and Hire Date, respectively. Run your query again.
SELECT employee_id "Employee #", last_name "Last Name", job_id "Job", salary
"Monthly Salary", hire_date "Hire Date"
FROM employees; May also use optional AS keyword for aliases
--9. Display the last name concatenated with the job ID, separated by a comma and space, and name
--the column Employee and Title.
SELECT first_name || ' ' || last_name || ', ' || email
AS "Employee Name and Email"
FROM employees;
--10. Create a query to display all the data from the EMPLOYEES table. Separate each column by a
--comma. Name the column THE_OUTPUT.
SELECT location_id || ', ' || street_address || ', ' || postal_code || ', '
|| city || ', ' || state_province || ', ' || country_id AS "MY OUTPUT"
FROM locations;

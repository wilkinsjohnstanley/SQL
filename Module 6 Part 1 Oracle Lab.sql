
/*
1. 
Write an INSERT statement to add only the first row of data from the sample data table below to the NEW_EMPLOYEES table. 
Be sure to list the columns explicitly in the INSERT clause of the statement. DO NOT ENTER ALL ROWS YET, only the first row.
*/
INSERT INTO new_employees (emp_id, lname, fname, user_id, salary)
VALUES ('3077', 'Linsey', 'Anna', 'alinds', '1250');
/*
2. 
Write an INSERT statement to add the second row of data from the sample data table in Question #1. This time, omit the column list in the INSERT clause. 
*/
INSERT INTO new_employees
VALUES ('3078', 'Ducote', 'Barbara', 'bducot', '1000');
/*
3. 
Write a simple SELECT query to confirm your additions to the table.  
*/
SELECT * FROM new_employees;
/*
4. 
Write INSERT statements to add the remaining three rows of data from the sample data table in Question #1. Rather than typing your INSERT statements below, instead execute the SELECT query from Question #3 to confirm your three new additions. Screen shot the query result from SQL Developer and upload to this question. 
*/
/*
5. 
Next, write a statement to change the first name of employee 3077 to Annie and update her salary to 1275. 
*/
UPDATE new_employees
SET fname = 'Annie', salary = '1275'
WHERE emp_id = '3077'; 
/*
6. 
Write a statement to change the salary to $1,100 for all employees who earn $1,000 or less. 
*/
UPDATE new_employees
SET salary = '1100'
WHERE salary <='1000'; 
/*
7.
How many rows were changed from Question #6? 2
*/
/*
8. 
Write a query to determine the employee id for Benjamin Nash. Remove this employee from the table using the employee id (primary key). 
*/
DELETE FROM new_employees
    WHERE emp_id = (SELECT emp_id
            FROM new_employees
            WHERE lname='Nash');

/*
Once your data is correct, you will need to save the data to the table, so that you can use it for the Part 2 Lab (you have not learned this yet). To save the data, type the following: COMMIT;
*/
COMMIT;


















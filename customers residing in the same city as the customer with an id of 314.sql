SELECT cust_id
FROM customer
WHERE city = (SELECT city
                           FROM customer
                           WHERE cust_id = '314');

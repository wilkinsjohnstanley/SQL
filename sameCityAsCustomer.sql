SELECT cust_id
FROM customer
WHERE city = (SELECT city
                FROM customer
                WHERE (first_name = 'Leslie') AND
                (last_name = 'Smith')
                );

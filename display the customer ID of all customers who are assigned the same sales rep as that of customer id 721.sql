SELECT cust_id
FROM customer
WHERE rep_id IN (SELECT rep_id
                                 FROM customer
                                 WHERE cust_id = 721);
​SELECT cust_id
FROM customer
WHERE rep_id = (SELECT rep_id
                                 FROM customer
                                 WHERE cust_id = 721);

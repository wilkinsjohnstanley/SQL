1. 
SELECT INVOICES.INVOICE_NUM, INVOICES.INVOICE_DATE, CUSTOMER.CUST_ID, CUSTOMER.FIRST_NAME, CUSTOMER.LAST_NAME
FROM CUSTOMER, INVOICES
WHERE INVOICES.CUST_ID = CUSTOMER.CUST_ID;
2. 
SELECT INVOICES.INVOICE_NUM, INVOICES.INVOICE_DATE, CUSTOMER.CUST_ID, CUSTOMER.FIRST_NAME, CUSTOMER.LAST_NAME
FROM CUSTOMER, INVOICES
WHERE INVOICES.CUST_ID = CUSTOMER.CUST_ID AND INVOICES.INVOICE_DATE = '2021-11-15';
3. 
SELECT INVOICES.INVOICE_NUM, INVOICES.INVOICE_DATE, CUSTOMER.CUST_ID, CUSTOMER.FIRST_NAME, CUSTOMER.LAST_NAME
FROM CUSTOMER, INVOICES
WHERE INVOICES.CUST_ID = CUSTOMER.CUST_ID;
4. 
SELECT INVOICES.INVOICE_NUM, INVOICES.INVOICE_DATE, INVOICE_LINE.ITEM_ID, INVOICE_LINE.QUANTITY, INVOICE_LINE.QUOTED_PRICE
FROM INVOICES, INVOICE_LINE
WHERE INVOICES.INVOICE_NUM = INVOICE_LINE.INVOICE_NUM;
5. 
SELECT CUSTOMER.CUST_ID, CUSTOMER.FIRST_NAME, CUSTOMER.LAST_NAME
FROM CUSTOMER
WHERE CUST_ID IN (SELECT CUST_ID
                  FROM INVOICES
                  WHERE INVOICE_DATE = '2021-11-15');
6. 
SELECT CUSTOMER.CUST_ID, CUSTOMER.FIRST_NAME, CUSTOMER.LAST_NAME
FROM CUSTOMER
WHERE EXISTS (SELECT *
                  FROM INVOICES
                  WHERE (INVOICES.CUST_ID = CUSTOMER.CUST_ID) AND
                  (INVOICES.INVOICE_DATE = '2021-11-15'));
7. 
SELECT CUST_ID, FIRST_NAME, LAST_NAME
FROM CUSTOMER
WHERE CUST_ID IN(SELECT CUST_ID
                FROM INVOICES
                WHERE INVOICE_DATE !='2021-11-15');
8. 
SELECT INVOICES.INVOICE_NUM, INVOICES.INVOICE_DATE, ITEM.ITEM_ID, ITEM.DESCRIPTION, ITEM.CATEGORY
FROM INVOICES, ITEM, INVOICE_LINE
WHERE ITEM.ITEM_ID = INVOICE_LINE.ITEM_ID AND INVOICES.INVOICE_NUM = INVOICE_LINE.INVOICE_NUM;
9. 
SELECT INVOICES.INVOICE_NUM, INVOICES.INVOICE_DATE, ITEM.ITEM_ID, ITEM.CATEGORY
FROM INVOICES, ITEM, INVOICE_LINE
WHERE ITEM.ITEM_ID = INVOICE_LINE.ITEM_ID AND INVOICES.INVOICE_NUM = INVOICE_LINE.INVOICE_NUM
ORDER BY ITEM.CATEGORY, INVOICES.INVOICE_NUM;
10. 
SELECT DISTINCT SALES_REP.REP_ID, SALES_REP.FIRST_ANEM, SALES_REP.LAST_NAME
FROM SALES_REP
WHERE REP_ID IN (SELECT REP_ID
                  FROM CUSTOMOER
                  WHERE CREDIT_LIMIT >= 500);
11. 
SELECT DISTINCT SALES_REP.REP_ID, SALES_REP.FIRST_ANEM, SALES_REP.LAST_NAME
FROM SALES_REP, CUSTOMER
WHERE SALES_REP.REP_ID = CUSTOMER.REP_ID AND CUSTOMER.CREDIT_LIMIT >= 500;
12. 
SELECT CUST_ID, FIRST_NAME, LAST_NAME
FROM CUSTOMER
WHERE CUST_ID IN (SELECT CUST_ID
                  FROM INVOICES
                  WHERE INVOICE_NUM IN (SELECT INVOICE_NUM
                                        FROM INVOICE_LINE, ITEM
                                        WHERE INVOICE_LINE.ITEM_ID = ITEM.ITEM_ID 
                                        AND ITEM.DESCRIPTION = 'Wild bird foot (25lb)'));

13. 
SELECT CATEGORY, ITEM_ID, DESCRIPTION
FROM ITEM
WHERE EXISTS (SELECT COUNT(*) FROM ITEM I
              WHERE I.CATEGORY = ITEM.CATEGORY
              GROUP BY CATEGORY
              HAVING COUNT(*) = 2)
ORDER BY CATEGORY;
14. 
SELECT INVOICE_NUM, INVOICE_DATE
FROM INVOICES, CUSTOMER
WHERE INVOICES.CUST_ID = CUSTOMER.CUST_ID AND CUSTOMER.FIRST_NAME = 'James' AND CUSTOMER.LAST_NAME = 'Gonzalez');
--OR THIS ONE WORKS TOO
SELECT INVOICE_NUM, INVOICE_DATE
FROM INVOICES
WHERE CUST_ID IN (SELECT CUST_ID
                  FROM CUSTOMER
                  WHERE FIRST_NAME = 'James' AND LAST_NAME = 'Gonzalez');

15. 
SELECT INVOICE_NUM, INVOICE_DATE
FROM INVOICES
WHERE INVOICE_NUM IN (SELECT INVOICE_NUM
                  FROM INVOICE_LINE
                  WHERE ITEM_ID IN (SELECT ITEM_ID
                                        FROM ITEM
                                        WHERE DESCRIPTION = 'Wild bird foot (25lb)'));
16. 

SELECT INVOICE_NUM, INVOICE_DATE
FROM INVOICES
WHERE INVOICE_NUM IN (SELECT INVOICE_NUM
                      FROM INVOICE LINE
                      WHERE ITEM ID IN (SELECT ITEM. ITEM ID
                                        FROM ITEM, INVOICES, INVOICE_LINE, CUSTOMER
                                        WHERE INVOICES.INVOICE_NUM = INVOICE_LINE.INVOICE_NUM
                                        AND INVOICE_LINE.ITEM_ID = ITEM.ITEM_ID
                                        AND INVOICES.CUST_ID = CUSTOMER.CUST_ID
                                        AND CUSTOMER.FIRST_NAME = 'James'
                                        AND CUSTOMER.LAST_NAME = 'Gonzalez'
                                        AND ITEM.DESCRIPTION = 'Wild Bird Food (25lb)'));
17.
SELECT INVOICE_NUM, INVOICE_DATE
FROM INVOICES
WHERE INVOICE_NUM IN (SELECT INVOICE_NUM
                      FROM INVOICE LINE
                      WHERE ITEM ID IN (SELECT ITEM. ITEM ID
                                        FROM ITEM, INVOICES, INVOICE_LINE, CUSTOMER
                                        WHERE INVOICES.INVOICE_NUM = INVOICE_LINE.INVOICE_NUM
                                        AND INVOICE_LINE.ITEM_ID = ITEM.ITEM_ID
                                        AND INVOICES.CUST_ID = CUSTOMER.CUST_ID
                                        AND CUSTOMER.FIRST_NAME = 'James'
                                        AND CUSTOMER.LAST_NAME = 'Gonzalez'
                                        AND ITEM.DESCRIPTION <> 'Wild Bird Food (25lb)'));
18. SELECT ITEM_ID, DESCRIPTION, PRICE, CATEGORY
FROM ITEM
WHERE PRICE > ALL (SELECT PRICE
                  FROM ITEM
                  WHERE CATEGORY = 'CAT');
19. 
SELECT ITEM.ITEM_ID, DESCRIPTION, ON_HAND, INVOICE_NUM, QUANTITY
FROM ITEM
    LEFT JOIN INVOICE_LINE
      ON (ITEM.ITEM_ID = INVOICE_LINE.ITEM_ID)
      ORDER BY ITEM.ITEM_ID;












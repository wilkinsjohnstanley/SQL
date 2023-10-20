SELECT CUST_ID, INVOICES.INVOICE_NUM, INVOICE_DATE, SUM(QUANTITY*QUOTED PRICE) AS INVOICE_TOTAL
  FROM INVOICES, INVOICE_LINE
    WHERE (INVOICES.INVOICE_NUM = INVOICE_LINE.INVOICE_NUM)
      GROUP BY INVOICES.INVOICE_NUM, CUST_ID, INVOICE_DATE
      HAVING SUM(QUANTITY*QUOTED_PRICE) > 250
      ORDER BY INVOICES.INVOICE_NUM;
--In this query, the INVOICES and INVOICE_LINE tables are joined by listing both tables in the FROM clause and relating them in the WHERE clause.
--Selected data is sorted by invoice number using the ORDER BY clause. The GROUP BY clause indicates that the data is to be grouped by
--the invoice numbere, customer ID, and invoice date. For each group, the SELECT clause displayed the customer ID, invoice number, invoice date, and invoice total
--(SUM(QUANTITY*QUOTED_PRICE))
--In addition, the total was renamed INVOICE_TOTAL. Not all groups are displayed, however. The HAVING clause displays only those groups whose
-- SUM(NUM_ORDERED*QUOTED_PRICE) is greater than $250

--find the INVOICE_NUM and INVOICE_DATE for each invoice that contains ITEM_ID = 'KH81'

--using the IN operator
SELECT INVOICE_NUM, INVOICE_DATE
  FROM INVOICES
    WHERE INVOICE_NUM IN
        (SELECT INVOICE_NUM
          FROM INVOICE_LINE
            WHERE(ITEM_ID='KH81')
              );
--using the EXISTS operator
SELECT INVOICE_NUM, INVOICE_DATE
  FROM INVOICES
    WHERE EXISTS
      (SELECT*
        FROM INVOICE_LINE
          WHERE (INVOICES.INVOICE_NUM=INVOICE_LINE.INVOICE_NUM)
          AND (ITEM_ID='KH81')
  );
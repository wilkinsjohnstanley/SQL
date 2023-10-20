SELECT DESCRIPTION
  FROM ITEM
    WHERE ITEM_ID IN(SELECT ITEM_ID
                        FROM INVOICE_LINE
                              WHERE(INVOICE_NUM='14233')
  );
--The subquery selects item ID values in invoice 14233
---The outer query selects item desciptions in invoice 14233

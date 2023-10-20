SELECT DESCRIPTION
  FROM INVOICE_LINE, ITEM
    WHERE (INVOICE_LINE.ITEM_ID = ITEM.ITEM_ID) AND (INVOICE_NUM = '14233');
--INVOICE_LINE listed in the FROM clause
--Notice that the INVOICE_LINE table is listed in the FROM clause, even though
--you do not need to display any columns from the INVOICE_LINE table. The WHERE clause contains columns from the
--INVOICE_LINE table, so it is necessary to include the table in the FROM clause

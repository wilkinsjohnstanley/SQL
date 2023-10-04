--the inner query is executed first
SELECT INVOICE_NUM
  FROM INVOICE_LINE
    WHERE ITEM_ID IN(SELECT IITEM_ID
                        FROM ITEM
                            WHERE(CATEGORY = 'HOR')
  );

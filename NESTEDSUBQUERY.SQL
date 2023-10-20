SELECT INVOICE_NUM, INVOICE_DATE
  FROM INVOICES
    WHERE INVOICE_NUM IN(SELECT INVOICE_NUM
                              FROM INVOICE_LINE
                                WHERE ITEM_ID IN (SELECT ITEM_ID
                                                    FROM ITEM
                                                      WHERE (LOCATION = 'C')
                                                )
                                            );

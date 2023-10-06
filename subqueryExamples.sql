SELECT description
FROM item
WHERE price = (SELECT MAX(price)
                             FROM item);
​SELECT description
FROM item
WHERE price IN (SELECT MAX(price)
                               FROM item);
​SELECT description
FROM item
WHERE price > (SELECT MAX(price)
                             FROM item);

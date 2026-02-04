SELECT count(*) FROM orders;

SELECT count(*) FROM order_items;

SELECT * FROM order_items;

SELECT * FROM orders;
---cuento los distintos de order_status_ de orders---
SELECT count(DISTINCT order_status) FROM orders;

SELECT count(DISTINCT order_date) FROM orders;
---veo cuales son esos distintos---
SELECT DISTINCT order_status FROM orders;

SELECT DISTINCT order_date FROM orders;

SELECT sum(order_item_subtotal) 
FROM order_items 
WHERE order_item_order_id = 2;

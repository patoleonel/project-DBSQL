SELECT * FROM orders;

SELECT order_status, count(*) AS order_status_count --creo la nueva columna para el conteo--
FROM orders
GROUP BY 1 --Mira la pos 1 luego del select osea order_status--
ORDER BY 2 ASC;

SELECT order_date, count(*) as order_fechas_count
FROM orders
GROUP BY 1
ORDER BY 2 DESC;

SELECT to_char(order_date, 'MM-yyyy') AS order_month, count(*) as order_fechas_count
FROM orders
GROUP BY 1
ORDER BY 1 DESC;


SELECT * FROM order_items;

SELECT count(DISTINCT order_item_order_id) FROM order_items;

SELECT order_item_order_id,  --La coma ',' delimita la columna 1 de la siguiente---
	round(sum(order_item_subtotal)::numeric,2) AS revenue_ticket ---Typcasteamos el numero---
FROM order_items
GROUP BY 1
ORDER BY 1 ASC;


SELECT order_item_order_id,  --La coma ',' delimita la columna 1 de la siguiente---
	round((sum(order_item_product_price*order_item_quantity))::numeric,2) AS RRR_ticket ---Typcasteamos el numero---
,  
	round(sum(order_item_subtotal)::numeric,2) AS revenue_ticket
FROM order_items
GROUP BY 1
ORDER BY 1 ASC;

--Orden de escritura--
SELECT order_date, count(*) AS order_count
FROM orders
WHERE order_status IN ('COMPLETE','CLOSED')
GROUP BY 1
	HAVING count(*) >= 120 --Primero usa aca el count, luego en select el mismo(optimizando recursos)
ORDER BY 2 DESC;

--FROM
--WHERE
--SELECT
--ORDER BY

SELECT order_item_order_id,
	round(sum(order_item_subtotal)::numeric,2) AS order_revenue
FROM order_items
GROUP BY 1
	HAVING round(sum(order_item_subtotal)::numeric ,2) >= 2000 
ORDER BY 2 DESC;




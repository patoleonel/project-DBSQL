--Orden de escritura--
SELECT order_date, count(*) AS order_count
FROM orders
WHERE order_status IN ('COMPLETE','CLOSED')
GROUP BY 1
	HAVING count(*) >= 120 --Primero usa aca el count, luego en select el mismo(optimizando recursos)
ORDER BY 2 DESC;


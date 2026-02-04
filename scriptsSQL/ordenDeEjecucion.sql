--Orden de escritura--
SELECT order_date, count(*) AS order_count
FROM orders
WHERE order_status IN ('COMPLETE','CLOSED')
GROUP BY 1
ORDER BY 2 DESC;

--Orden de lectura--
-- FROM
-- WHERE (no usar alias pues el alias se crea en select recien)
-- GROUP BY (no usar funciones, solo columnas)
-- SELECT
-- ORDER BY
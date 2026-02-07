SELECT o.order_date,
	oi.order_item_product_id,
	oi.order_item_subtotal,
	o.order_id,
	oi.order_item_order_id
FROM orders AS o
	LEFT JOIN order_items AS oi
		ON o.order_id = oi.order_item_order_id

SELECT count(*) FROM orders;


SELECT 
	count(*) as conteo_filas,
    count(oi.order_item_id) as conteo_items
FROM orders AS o
LEFT JOIN order_items oi ON o.order_id = oi.order_item_order_id



	
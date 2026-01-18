USE my_guitar_shop;

SELECT last_name AS 'Last Name',
	   first_name AS 'First Name',
       order_date AS 'Order Date',
       product_name AS 'Product Name',
       item_price AS 'Item Price',
       discount_amount AS 'Discount Amount',
       quantity AS 'Quantity'
       
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id

order by last_name,
		 order_date,
         product_name; -- expect 12 rows
	   
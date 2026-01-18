USE my_guitar_shop;

SELECT email_address AS "Email Address",
	   COUNT(*) AS "Number of Items Purchased"
       
FROM orders AS o
JOIN customers AS c ON c.customer_id = o.customer_id 
JOIN order_items AS oi ON o.order_id = oi.order_id

GROUP BY email_address

HAVING count(*) > 1; -- expect 3 rows (allan, david, frank)
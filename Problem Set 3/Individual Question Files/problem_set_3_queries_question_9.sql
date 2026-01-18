USE my_guitar_shop;

-- PART ONE --------------------------------------------------------------------------------------
SELECT email_address,
	   o.order_id,
	   MAX((item_price - discount_amount)* quantity)

FROM orders AS o
JOIN customers AS c ON c.customer_id = o.customer_id 
JOIN order_items AS oi ON o.order_id = oi.order_id

GROUP BY o.order_id,
	    email_address; -- expecting 9 rows

-- PART TWO --------------------------------------------------------------------------------------

SELECT
    email_address AS 'Email Adress',
    MAX(OrderTotal) AS 'Largest Order'
FROM (
	  SELECT email_address,
             o.order_id,
             MAX((item_price - discount_amount) * quantity) AS OrderTotal
	  FROM orders AS o
	  JOIN customers AS c ON c.customer_id = o.customer_id 
	  JOIN order_items AS oi ON o.order_id = oi.order_id

	  GROUP BY o.order_id,
			   email_address
    ) AS SubQ
GROUP BY email_address; -- expect 7 rows


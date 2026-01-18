-- credit to Dr. Canovatchel for doing this in class
-- change was made to add the DISTINCT keyword to the count()s and added SUM()

use my_guitar_shop;
SET SESSION sql_mode=(SELECT REPLACE(@@sql_mode, 'ONLY_FULL_GROUP_BY,',''));

SELECT email_address AS "Email",
	   COUNT(DISTINCT o.order_id) AS "Number of Orders", 
	   SUM((item_price - discount_amount)* quantity) AS "Sales Total"

FROM orders AS o
JOIN customers AS c ON c.customer_id = o.customer_id 
JOIN order_items AS oi ON o.order_id = oi.order_id

GROUP BY o.customer_id
HAVING COUNT(DISTINCT o.order_id) > 1

ORDER BY SUM((item_price - discount_amount)* quantity) DESC; -- expect 2 rows (allan and david)

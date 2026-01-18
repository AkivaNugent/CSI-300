 USE my_guitar_shop;
 
 -- Question 1 ------------------------------------------------------------------------------
 SELECT category_name AS 'Category Name',
	   product_name AS 'Product Name',
       list_price AS 'List Price'

FROM products p
JOIN categories c ON p.category_id = c.category_id

ORDER BY category_name ASC,
         product_name ASC; -- expect 10 rows
         
         
-- Question 2 ------------------------------------------------------------------------------
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
         
         
-- Question 3 ------------------------------------------------------------------------------
SELECT p1.product_name AS 'Product Name',
	   p1.list_price AS 'List price'
       
FROM products p1 
JOIN products p2 ON p1.list_price = p2.list_price
                AND p1.product_id != p2.product_id -- could be done with a WHERE clause

ORDER BY p1.product_name; -- expect 2 rows (799.99)


-- Question 4 ------------------------------------------------------------------------------
SELECT category_name AS 'Category Name',
	   product_id AS 'Product ID'
       
FROM Categories c
LEFT JOIN Products p ON p.category_id = c.category_id

WHERE product_id IS NULL; -- should return 1 row (Keyboards, NULL)


-- Question 5 ------------------------------------------------------------------------------
SELECT COUNT(*) as 'Number of Orders',
	   SUM(tax_amount) as 'Total Tax Across all Orders'

FROM orders; -- expect 1 row (9 order, 122.24)


-- Question 6 ------------------------------------------------------------------------------
-- Credit to Dr. C for doing this mostly in class
-- Changes made to initial "count()" to account for multi-item orders
SELECT email_address AS "Email",
	   COUNT(DISTINCT o.order_id) AS "Number of Orders", 
	   SUM((item_price - discount_amount)* quantity) AS "Sales Total"

FROM orders AS o
JOIN customers AS c ON c.customer_id = o.customer_id 
JOIN order_items AS oi ON o.order_id = oi.order_id

GROUP BY o.customer_id
HAVING COUNT(DISTINCT o.order_id) > 1

ORDER BY SUM((item_price - discount_amount)* quantity) DESC; -- expect 2 rows (allan and david)


-- Question 7 ------------------------------------------------------------------------------
SELECT email_address AS "Email Address",
	   COUNT(*) AS "Number of Items Purchased"
       
FROM orders AS o
JOIN customers AS c ON c.customer_id = o.customer_id 
JOIN order_items AS oi ON o.order_id = oi.order_id

GROUP BY email_address

HAVING count(*) > 1; -- expect 3 rows (allan, david, frank)


-- Question 8 ------------------------------------------------------------------------------
/* Original Query to copy results from
SELECT DISTINCT category_name 
FROM categories c 
JOIN products p ON c.category_id = p.category_id 
ORDER BY category_name;
*/

SELECT category_name

FROM categories

WHERE category_id IN(
		SELECT category_id
        FROM products
	  );
      
      
-- Question 9 ------------------------------------------------------------------------------
-- PART ONE -------------------------------------------------------
SELECT email_address,
	   o.order_id,
	   MAX((item_price - discount_amount)* quantity)

FROM orders AS o
JOIN customers AS c ON c.customer_id = o.customer_id 
JOIN order_items AS oi ON o.order_id = oi.order_id

GROUP BY o.order_id,
	    email_address; -- expecting 9 rows

-- PART TWO -------------------------------------------------------

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


-- Question 10 -----------------------------------------------------------------------------
-- credit to Dr. C for doing this in class
SELECT 'shipped' AS ship_status,
	   order_id, 
       order_date
       
FROM orders

WHERE ship_date IS NOT NULL

UNION

SELECT 'not shipped', 
	   order_id, 
	   order_date
       
FROM orders

WHERE ship_date IS NULL

ORDER BY order_date; -- expect 9 rows (6,8,9 not shipped)
         
USE my_guitar_shop;

SELECT p1.product_name AS 'Product Name',
	   p1.list_price AS 'List price'
       
FROM products p1 
JOIN products p2 ON p1.list_price = p2.list_price
                AND p1.product_id != p2.product_id -- could be done with a WHERE clause

ORDER BY p1.product_name; -- expect 2 rows (799.99)


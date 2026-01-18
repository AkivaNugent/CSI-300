USE my_guitar_shop;

SELECT category_name AS 'Category Name',
	   product_name AS 'Product Name',
       list_price AS 'List Price'

FROM products p
JOIN categories c ON p.category_id = c.category_id

ORDER BY category_name ASC,
         product_name ASC; -- expect 10 rows




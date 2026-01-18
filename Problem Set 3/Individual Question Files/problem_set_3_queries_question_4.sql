USE my_guitar_shop;

SELECT category_name AS 'Category Name',
	   product_id AS 'Product ID'
       
FROM Categories c
LEFT JOIN Products p ON p.category_id = c.category_id

WHERE product_id IS NULL; -- should return 1 row (Keyboards, NULL)



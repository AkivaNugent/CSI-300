USE my_guitar_shop;

SELECT DISTINCT category_name 
FROM categories c 
JOIN products p ON c.category_id = p.category_id 
ORDER BY category_name;

SELECT category_name

FROM categories

WHERE category_id IN(
		SELECT category_id
        FROM products
	  )
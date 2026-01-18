-- This query uses our most recent product prices and compares the difference between sum of parts price to find the profit (or lack there of) of each bike
SELECT p.product_id as 'Product ID', 
	   product_name as 'Product Name',
	   SUM(part_price) AS 'Parts Total Price', 
       recent.price AS 'Product Price',
       (recent.price - SUM(part_price)) AS 'Profit'

FROM Parts.PartVendor pv
JOIN Parts.PartHistory ph ON pv.part_id = ph.part_id
JOIN Parts.PartProduct pp ON ph.part_id = pp.part_id
JOIN Products.product p on p.product_id = pp.product_id
JOIN (
    SELECT ph1.product_id AS recent_product_id, 
		   ph1.price AS 'Price'
	FROM Products.ProductPriceHistory ph1
	JOIN Products.ProductInventory pi ON ph1.product_id = pi.product_id
	INNER JOIN (
		SELECT product_id, 
			   MAX(timestamp) AS MaxDate
		FROM Products.ProductPriceHistory
		GROUP BY product_id
        
	) AS ph2 ON ph1.product_id = ph2.product_id
			 AND ph1.timestamp = ph2.MaxDate

) AS recent ON recent.recent_product_id = pp.product_id

group by pp.product_id;


             
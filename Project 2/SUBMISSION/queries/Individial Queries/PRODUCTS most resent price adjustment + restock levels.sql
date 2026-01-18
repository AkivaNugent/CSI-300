-- This query gives us the most recent price update for every product. Additionally, it gives us the remaining "free stock" before hitting the restock limit so we know how far out we are from needing to restock

SELECT ph1.product_id AS 'Product ID', 
	   ph1.timestamp AS 'Last Price Adjustment', 
       ph1.price AS 'Price', 
       pi.current_stock AS 'Current Stock',
       pi.restock_level AS 'Restock Level',
       (pi.current_stock - pi.restock_level) AS 'Free Stock'

FROM Products.ProductPriceHistory ph1
JOIN Products.ProductInventory pi ON ph1.product_id = pi.product_id
INNER JOIN (
	SELECT product_id, 
		   max(timestamp) AS MaxDate
    
    FROM Products.ProductPriceHistory
    
    GROUP BY product_id
    ) AS ph2 ON ph1.product_id = ph2.product_id
			 AND ph1.timestamp = ph2.MaxDate;
             
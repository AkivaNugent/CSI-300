-- Similar to the previous query, but for parts. Additionally, we have limited ourselves to only those that need to be restocked since there are actually some that need to be restocked

SELECT ph1.Part_id AS 'Product ID', 
       ph1.part_price AS 'Price', 
       ph1.timestamp AS 'Last Restock',
       pi.inventory_level AS 'Current Stock',
       pi.restock_level AS 'Restock Level',
       (pi.inventory_level - pi.restock_level) AS 'Free Stock'

FROM Parts.PartHistory ph1
JOIN Parts.PartInventory pi ON ph1.part_id = pi.part_id
INNER JOIN (
	SELECT part_id, 
		   max(timestamp) AS MaxDate
    
    FROM Parts.PartHistory
    
    GROUP BY part_id
    ) AS ph2 ON ph1.part_id = ph2.part_id
			 AND ph1.timestamp = ph2.MaxDate
			
WHERE (pi.inventory_level - pi.restock_level) <= 0;
-- This query joins Parts, Products and Vendors to show each companies products, and their associated parts
SELECT c.vendor_name AS 'Vendor Name',
       pr.product_name AS 'Product Name',
       p.part_id AS 'Part ID',
	   p.part_desc AS 'Part Description'

FROM parts.part p
JOIN parts.PartVendor pv ON p.part_id = pv.part_id
JOIN vendors.Company c ON c.vendor_id = pv.vendor_id
JOIN Parts.partProduct pp ON p.part_id = pp.part_id
JOIN Products.product pr ON pp.product_id = pr.product_id

order by c.vendor_name,
		 pr.product_name;
  
  
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


-- This query gets all the employees that have an email on record but no phone number. 
SELECT sp.employee_id AS 'Employee ID',
	   CONCAT(first_name, " ", last_name) AS 'Employee Name',
       contact AS 'Email'

FROM Vendors.SalesPerson sp
JOIN Vendors.SalesPersonContact spc ON sp.employee_id = spc.employee_id
JOIN Vendors.Contact sc ON sc.contact_id = spc.contact_id

WHERE sc.contact_id = 22
AND NOT EXISTS (
    SELECT *
    
    FROM Vendors.SalesPersonContact spc2
    
    WHERE spc2.employee_id = sp.employee_id
      AND spc2.contact_id = 11
);

-- This query uses our most recent product prices and compares the difference between sum of parts price to find the profit (or lack there of) of each bike
SELECT p.product_id as 'Product ID', 
	   product_name as 'Product Name',
	   SUM(part_price) AS 'Parts Total Price', 
       recent.price AS 'Product Price',
       (recent.price - SUM(part_price)) AS 'Profits'

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


             
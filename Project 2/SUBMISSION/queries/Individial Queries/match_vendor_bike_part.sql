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
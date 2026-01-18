USE my_guitar_shop;

SELECT COUNT(*) as 'Number of Orders',
	   SUM(tax_amount) as 'Total Tax Across all Orders'

FROM orders; -- expect 1 row (9 order, 122.24)
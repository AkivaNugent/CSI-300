-- Query each customer and a payment method for ewah customer

select c.cid,
	   c.cfn,
       c.cln,
       cc.card_number,
       cc.card_name
       
from Customers.Customer c -- add the name of the database in front of the tables we are choosing
join Payments.customerpaymentmethod cpm
	on c.cid = cpm.cid
join Payments.creditdebit cd
	on cd.method_id = cpm.method_id
join Payments.custcard cc
	on cc.card_number = cd.card_number
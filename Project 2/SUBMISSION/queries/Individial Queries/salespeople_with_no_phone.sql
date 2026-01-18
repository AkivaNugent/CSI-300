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

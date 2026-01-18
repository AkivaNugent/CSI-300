-- Delete our Tests -----------------------------------------------------------------
DELETE FROM Vendors.salespersoncontact WHERE employee_id = 99;
DELETE FROM Vendors.address WHERE address_id = 9;
DELETE FROM Vendors.salesperson WHERE employee_id = 99;
DELETE FROM Vendors.company WHERE vendor_id = 9;

DELETE FROM Products.ProductInventory WHERE product_id = 999;
DELETE FROM Products.ProductPriceHistory WHERE product_id = 999;
DELETE FROM Products.Product WHERE product_id = 999;

DELETE FROM Parts.PartVendor WHERE part_id = "testPartID";
DELETE FROM Parts.PartHistory WHERE part_id = "testPartID";
DELETE FROM Parts.PartProduct WHERE part_id = "testPartID";
DELETE FROM Parts.PartInventory WHERE part_id = "testPartID";
DELETE FROM Parts.Part WHERE part_id = "testPartID";


-- Parts Inserts --------------------------------------------------------------------
INSERT INTO Parts.Part VALUES('testPartID','Test description');
INSERT INTO Parts.PartHistory VALUES('testPartID', '2000-09-18' ,999);
INSERT INTO Parts.PartInventory VALUES('testPartID',56,15);
INSERT INTO Parts.PartProduct VALUES('testPartID',999);
INSERT INTO Parts.PartVendor VALUES(9,'testPartID');


-- Products Inserts -----------------------------------------------------------------
insert into Products.Product values(999,'Test Product','This is filler information to see if I can insert via a query');
insert into Products.ProductInventory values(999,10,'2000-09-18',15);
insert into Products.ProductPriceHistory values(999,'2000-09-18',2000);


-- Vendors Inserts ------------------------------------------------------------------
insert into Vendors.company values(9,"Test Company");
insert into Vendors.address values(9, "Test Street","TestCity","ST", "99999",9);
insert into Vendors.salesperson values(99,"Test", "Testingson",9);
insert into Vendors.salespersoncontact values(99,22,'test@gmail.com');


select * from Vendors.company;
select * from Vendors.contact;
select * from Vendors.address;
select * from Vendors.salesperson;
select * from Vendors.salespersoncontact;

select * from Parts.Part;
select * from Parts.PartProduct;
select * from Parts.PartHistory;
select * from Parts.PartInventory;
select * from Parts.PartVendor;

select * from Products.ProductInventory;
select * from Products.ProductPriceHistory;
select * from Products.Product
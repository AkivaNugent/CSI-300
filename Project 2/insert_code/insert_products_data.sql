use products;

delete from ProductInventory where product_id>0;
delete from ProductPriceHistory where product_id>0;
delete from Product where product_id>0;

insert into Product values(896,'The Road Warrior','This is our finest all-purpose bike. Great for all activites');
insert into Product values(125,'Racing Bike','Our premier racing bike');
insert into Product values(023,'Premier Mountain Bike','This bike will have you scaling new heights');
insert into Product values(705,'Cruising Bike','For those who enjoy a causal bike ride or racing events.');


insert into ProductInventory values(896,10,'2019-03-1',15);
insert into ProductInventory values(125,18,'2019-03-1',25);
insert into ProductInventory values(023,25,'2019-03-1',45);
insert into ProductInventory values(705,10,'2019-03-1',20);

insert into ProductPriceHistory values(705,'2018-03-1',2000);
insert into ProductPriceHistory values(705,'2018-01-1',1900);
insert into ProductPriceHistory values(705,'2017-06-11',1700);
insert into ProductPriceHistory values(896,'2018-09-10',400);
insert into ProductPriceHistory values(896,'2018-02-18',390);
insert into ProductPriceHistory values(896,'2017-11-30',350);
insert into ProductPriceHistory values(125,'2019-12-10',1890);
insert into ProductPriceHistory values(125,'2019-02-06',1800);
insert into ProductPriceHistory values(125,'2018-10-12',1700);
insert into ProductPriceHistory values(125,'2017-08-16',1600);
insert into ProductPriceHistory values(023,'2019-02-16',700);
insert into ProductPriceHistory values(023,'2018-07-01',675);
insert into ProductPriceHistory values(023,'2017-12-16',625);

select * from ProductInventory;
select * from ProductPriceHistory;
select * from Product

use dogs;

-- view our full table before any changes.
select * from breeds;

-- command to alter table
alter table breeds

-- we can change the name of the avgweight column to the lbs since no conversion is needed.
change column avgweight avgweightlbs int,

-- and then we add an additional collumn with the weights converted into kgs
add column avgweightkgs int after avgweightlbs;

/*
-- if we want more precision, we can convert without rounding the decimals instead. This example allows for animals up to 999kg + a remainder of grams.
add column avgweightkgs avgweightkgs decimal(6,3);
*/

-- update the table with the correct values for the conversion
update breeds
set avgweightkgs = avgweightlbs * .453;

-- view our full table
select * from breeds;

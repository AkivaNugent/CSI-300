use all_burl_properties;
SET SESSION sql_mode=(SELECT REPLACE(@@sql_mode, 'ONLY_FULL_GROUP_BY,',''));

-- QUESTION 1 - What percentage of total value of a property comes from its land, based on the land use of the property? -------------------------------------------------------------------------------------------------------------------------

select land_use as "Land Use",
       (round(avg(land_value / total_value) * 100,3)) as "Percentage of Value from Land"

from property as p
join propertyvalue as pv on p.prop_id = pv.prop_id
join land as l on p.prop_id = l.prop_id

where land_use != "exempt land" 
  and land_use != "exempt" 
  and acres > 0
  and total_value > 0

group by land_use

order by avg(land_value / total_value) ASC;

-- QUESTION 2 - What streets have the smallest average acreage?/ The most? -----------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Ascending ---------------------------------------------------------------------
select count(*) as "House Count",
       st_name as "Street Name",
       round(avg(acres),3) as "Average Acreage"
    
from property as p
join propertyaddress as pa on p.prop_id = pa.prop_id
join land as l on p.prop_id = l.prop_id

where acres > 0

group by st_name
having count(*) > 1

order by avg(acres)

limit 1;

-- Descending ---------------------------------------------------------------------
select count(*) as "House Count",
       st_name as "Street Name",
       round(avg(acres),3) as "Average Acreage"
    
from property as p
join propertyaddress as pa on p.prop_id = pa.prop_id
join land as l on p.prop_id = l.prop_id

where acres > 0

group by st_name
having count(*) > 1

order by avg(acres) DESC

limit 1;

-- QUESTION 3 - When and where was the last “Colonial” Type house built in Burlington? -----------------------------------------------------------------------------------------------------------------------------------------------------------
select year_built as "Year Built",
       st_num as "Street Number",
       st_name as "Street Name"
    
from property as p
join propertyvalue as pv on p.prop_id = pv.prop_id
join propertyaddress as pa on p.prop_id = pa.prop_id
join land as l on p.prop_id = l.prop_id

where b_type = "Colonial" 

order by year_built DESC

limit 1;

-- QUESTION 4 - What street has the highest number of “Tudor” style homes? -----------------------------------------------------------------------------------------------------------------------------------------------------------------------
select count(*) as "Tudor Houses",
       st_name as "Street Name"
    
from property as p
join propertyaddress as pa on p.prop_id = pa.prop_id

where b_type = "tudor"

group by st_name

order by count(*) DESC

limit 1;

-- QUESTION 5 - On what streets can we find properties over 5 acres? How many per street? --------------------------------------------------------------------------------------------------------------------------------------------------------
select count(*) as "House Count",
       st_name as "Street Name"
    
from property as p
join propertyaddress as pa on p.prop_id = pa.prop_id
join land as l on p.prop_id = l.prop_id

where land_use != "Exempt" 
  and land_use != "Exempt Land" 
  and b_type != "NO BUILDING"
  and acres >= 5

group by st_name

order by count(*);
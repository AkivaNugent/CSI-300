use all_burl_properties;
SET SESSION sql_mode=(SELECT REPLACE(@@sql_mode, 'ONLY_FULL_GROUP_BY,',''));

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

order by avg(land_value / total_value) ASC
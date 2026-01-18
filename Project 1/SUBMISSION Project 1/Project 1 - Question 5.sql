use all_burl_properties;
SET SESSION sql_mode=(SELECT REPLACE(@@sql_mode, 'ONLY_FULL_GROUP_BY,',''));

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

order by count(*)
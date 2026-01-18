use all_burl_properties;
SET SESSION sql_mode=(SELECT REPLACE(@@sql_mode, 'ONLY_FULL_GROUP_BY,',''));

select count(*) as "Tudor Houses",
    st_name as "Street Name"
    
from property as p
join propertyaddress as pa on p.prop_id = pa.prop_id

where b_type = "tudor"

group by st_name

order by count(*) DESC

limit 1
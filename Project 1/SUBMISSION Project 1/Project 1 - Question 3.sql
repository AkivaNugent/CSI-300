use all_burl_properties;
SET SESSION sql_mode=(SELECT REPLACE(@@sql_mode, 'ONLY_FULL_GROUP_BY,',''));

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
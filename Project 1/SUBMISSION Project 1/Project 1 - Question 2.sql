use all_burl_properties;
SET SESSION sql_mode=(SELECT REPLACE(@@sql_mode, 'ONLY_FULL_GROUP_BY,',''));

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



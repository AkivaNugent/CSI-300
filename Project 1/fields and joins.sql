use all_burl_properties;
SET SESSION sql_mode=(SELECT REPLACE(@@sql_mode, 'ONLY_FULL_GROUP_BY,',''));

select p.prop_id as "Property ID",
    -- count(*) as "House Count",
	b_type as "Building Type", 
    year_built as "Year Built",
    total_value as "Total Value",
    land_value as "Land Value",
    building_value as "Building Value",
    yarditem_Value as "Yard-Item value",
    st_num as "Street Number",
    st_name as "Street Name",
    land_use as "Land Use",
    acres as "Acres",
    total_area as "Total Area",
    finished_area as "Finished Area"
    
    from property as p
join propertyvalue as pv on p.prop_id = pv.prop_id
join propertyaddress as pa on p.prop_id = pa.prop_id
join land as l on p.prop_id = l.prop_id


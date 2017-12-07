create view MINI_LOCATION as
SELECT DISTINCT 

l.location,
l.location_desc,
l.country,
l.country_desc,
l.region,
l.region_desc,
l.zone,
l.client,
case l.dest_code when '_' then '00' else l.dest_code end as dest_code

FROM i_location as l;

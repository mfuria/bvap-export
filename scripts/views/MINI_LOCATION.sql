create view MINI_LOCATION as
SELECT DISTINCT 

l.location,
l.location_desc,
l.country,
l.country_desc,
l.region,
l.region_desc,
l.zone

FROM i_location as l;


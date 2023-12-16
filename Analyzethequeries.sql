Analyzethequeries
SELECT name, ST_AsText(location) AS coordinates
FROM cafes
WHERE ST_DWithin(location, ST_SetSRID(ST_MakePoint(-73.97896, 40.77953), 4326), 0.01);

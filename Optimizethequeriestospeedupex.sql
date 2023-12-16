Optimize the queries to speed up execution time 
CREATE INDEX idx_cafes_location ON cafes USING GIST(location);
SELECT name, ST_AsText(location) AS coordinates
FROM cafes
WHERE location <-> ST_SetSRID(ST_MakePoint(-73.968285, 40.785091), 4326) <= 0.01
ORDER BY name;

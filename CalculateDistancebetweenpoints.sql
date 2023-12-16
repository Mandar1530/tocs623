Calculate Distance between points 
SELECT
    name,
    ST_Distance(
        location,
        ST_SetSRID(ST_MakePoint(-73.968285, 40.785091), 4326) -- Central Park coordinates
    ) AS distance_from_central_park
FROM cafes;

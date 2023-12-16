CalculateAreasofInterest(specific to each group)
SELECT
    category,
    ST_Area(ST_Union(location::geometry)) AS total_area_in_square_meters
FROM cafes
WHERE ST_DWithin(location, ST_SetSRID(ST_MakePoint(-73.97896,40.77953), 4326), 0.01) -- Filter cafes within a certain radius
GROUP BY category;

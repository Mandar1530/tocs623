Retrieve Locations of specific features 
CREATE TABLE cafes (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    location GEOMETRY(Point, 4326) -- Example assuming WGS 84 coordinate system
);

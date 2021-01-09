-- Drop the tables if they exist
DROP TABLE IF EXISTS wealth;
DROP TABLE IF EXISTS covid;
DROP TABLE IF EXISTS mobility;

-- Create wealth table
CREATE TABLE wealth (
    country TEXT PRIMARY KEY,
    year INTEGER,
    income_per_person REAL
)

-- Create covid table
CREATE TABLE covid (
    country TEXT PRIMARY KEY,
    deaths REAL,
    mortality_rate REAL
)

-- Create mobility table
CREATE TABLE mobility (
    country TEXT PRIMARY KEY,
    retail_and_recreation REAL,
    grocery_and_pharmacy REAL,
    parks REAL,
    transit_stations REAL,
    workplaces REAL,
    residential REAL
)

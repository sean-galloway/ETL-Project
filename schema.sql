-- Drop the tables if they exist
DROP TABLE IF EXISTS wealth;
DROP TABLE IF EXISTS covid;

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

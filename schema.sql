-- Drop the tables if they exist
DROP TABLE IF EXISTS wealth;
DROP TABLE IF EXISTS covid;
DROP TABLE IF EXISTS mobility;
DROP TABLE IF EXISTS adolescent;
DROP TABLE IF EXISTS infant;

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
--Create adolescent table
CREATE TABLE adolescent (
    id serial PRIMARY KEY,
    country TEXT,
    year INTEGER,
    rate REAL
);
--Create infant table
CREATE TABLE infant (
    id serial PRIMARY KEY,
    country TEXT,
    year INTEGER,
    rate REAL
);

-- Drop the tables if they exist
DROP TABLE IF EXISTS internet_use_by_pecent_popul;

-- Create intenet_usage table
CREATE TABLE internet_use_by_pecent_popul (
    country TEXT PRIMARY KEY,
    country_code TEXT,
	"2015" INT, "2016" INT, "2017" INT, "2018" INT, "2019" INT
);
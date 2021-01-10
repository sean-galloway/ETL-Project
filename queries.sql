-- Query to check successful load
SELECT * FROM wealth;
SELECT * FROM covid;
SELECT * FROM mobility;
SELECT * FROM adolescent;
SELECT * FROM infant;

-- Join wealth and covid tables on country
SELECT w.country, w.income_per_person, c.deaths, c.mortality_rate
FROM wealth AS w
INNER JOIN covid AS c
ON w.country = c.country AND c.deaths > 1000;

-- Create view to see the relationship between mortality and mobility since covid
DROP VIEW IF EXISTS mortality_mobility;

CREATE VIEW mortality_mobility AS
SELECT m.country, m.retail_and_recreation, m.grocery_and_pharmacy, 
       m.parks, m.transit_stations, m.workplaces, m.residential, 
       c.deaths, c.mortality_rate
FROM mobility AS m
INNER JOIN covid AS c
ON m.country = c.country;

--Join adolescent and infant on country
SELECT a.country, a.year, a.birth_rate,i.mortality_rate
FROM adolescent as a
INNER JOIN infant as i
ON a.country=i.country;

--Create view to see the relationship between adolescent birth rate and wealth between countries
DROP VIEW IF EXISTS adolescent_wealth;

CREATE VIEW adolescent_wealth AS 
SELECT w.country, w.income_per_person, a.birth_rate
FROM adolescent as a
INNER JOIN wealth as w 
ON w.country=a.country;

--Create view to see the relationship between infant mortality rates and wealth between countries
DROP VIEW IF EXISTS infant_wealth;

CREATE VIEW infant_wealth AS 
SELECT w.country, w.income_per_person, i.mortality_rate
FROM infant as i
INNER JOIN wealth as w 
ON w.country=i.country;
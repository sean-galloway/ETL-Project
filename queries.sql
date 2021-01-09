-- Query to check successful load
SELECT * FROM wealth;
SELECT * FROM covid;
SELECT * FROM mobility;

-- Join wealth and covid tables on country
SELECT w.country, w.income_per_person, c.deaths, c.mortality_rate
FROM wealth AS w
INNER JOIN covid AS c
ON w.country = c.country AND c.deaths > 1000;

-- Join covid and mobility tables on country
SELECT m.country, m.retail_and_recreation, m.grocery_and_pharmacy, 
       m.parks, m.transit_stations, m.workplaces, m.residential, 
       c.deaths, c.mortality_rate
FROM mobility AS m
INNER JOIN covid AS c
ON m.country = c.country;
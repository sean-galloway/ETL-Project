-- Query to check successful load
SELECT * FROM wealth;
SELECT * FROM covid;

-- Join wealth and covid tables on county
SELECT w.country, w.income_per_person, c.deaths, c.mortality_rate
FROM wealth AS w
INNER JOIN covid AS c
ON w.country = c.country AND c.deaths > 1000;


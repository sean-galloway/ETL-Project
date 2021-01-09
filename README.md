# ETL-Project

Date Warehousing - Extract, Transform and Load

## Date Sources

### Wealth per capita data per country

<https://www.kaggle.com/psterk/income-inequality?select=combined_final_last_10_years.csv>

### Covid mortality rate per country

<https://www.kaggle.com/paultimothymooney/coronavirus-covid19-mortality-rate-by-country?select=global_covid19_mortality_rates.csv>

### Covid-19 mobility report

<https://www.google.com/covid19/mobility/>

## Breakdown of Tasks

* Extract: Load csv data for all data sets (python/pandas)
* Transform: Clean and normalize data using pandas (loc, melt, groupby, merge).
* Load: Use sqlalchemy to load clean data into a PostgreSQL Database.

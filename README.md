# ETL-Project

Date Warehousing - Extract, Transform and Load

## Date Sources

### Wealth per capita data per country

<https://www.kaggle.com/psterk/income-inequality?select=combined_final_last_10_years.csv>

### Infant Mortality Rate, which is the probability of dying between birth and age 1 per 1000 live births, between the years 2016-2019.

<https://www.kaggle.com/utkarshxy/who-worldhealth-statistics-2020-complete?select=infantMortalityRate.csv>

### Adolescent Birth Rate, which is the birth rate per 1000 women aged 15-19 years, between the years 2016-2019.

<https://www.kaggle.com/utkarshxy/who-worldhealth-statistics-2020-complete?select=adolescentBirthRate.csv>

### Covid mortality rate per country

<https://www.kaggle.com/paultimothymooney/coronavirus-covid19-mortality-rate-by-country?select=global_covid19_mortality_rates.csv>

### Covid-19 mobility report

<https://www.google.com/covid19/mobility/>

## Breakdown of Tasks

* Extract: Load csv data for all data sets (python/pandas)
* Transform: Clean and normalize data using pandas (loc, melt, groupby, merge).
* Load: Use sqlalchemy to load clean data into a PostgreSQL Database.

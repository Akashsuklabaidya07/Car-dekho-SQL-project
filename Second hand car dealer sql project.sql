CREATE SCHEMA cars;
USE cars;

-- READ DATA--
SELECT * FROM car_dekho;

-- total cars : to get a count of total records--
SELECT count(*) FROM car_dekho;

-- The manager asked the employee how many cars will be available in 2023--
SELECT count(*) FROM car_dekho WHERE year = 2023;

-- The manager asked the me how many cars will be available in 2020,2021,2023--
-- Group by--
SELECT count(*) FROM car_dekho WHERE year in (2020,2021,2023) GROUP BY year;

-- client asked me to print the total of all cars by year.I don't see all the details--
SELECT year,count(*) FROM car_dekho GROUP BY year;

-- client asked to cars dealer agent how many diesel cars will there be in 2020--
SELECT count(*) FROM car_dekho WHERE year = 2020 AND fuel = 'DIESEL';

-- The manager told me to give a print All the fuel cars(petrol,diesel,and CNG) come by all year--
SELECT year,count(*) FROM car_dekho WHERE fuel = 'Petrol'GROUP BY year;
SELECT year,count(*) FROM car_dekho WHERE fuel = 'Diesel' GROUP BY year;
SELECT year,count(*) FROM car_dekho WHERE fuel = 'CNG ' GROUP BY year;

-- Manager said there were more than 100 cars in a given year,which year had more than 100 cars--
SELECT year,count(*) FROM car_dekho GROUP BY year HAVING count(*) >100;

-- The manager said to all the employee All cars count details between 2015 and 2023 we need a complete list--
SELECT count(*) FROM car_dekho WHERE year BETWEEN 2015 AND 2023;
SELECT * FROM car_dekho WHERE year BETWEEN 2015 AND 2023;














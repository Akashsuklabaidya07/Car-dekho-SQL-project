# Car Dekho SQL Queries

This project provides SQL solutions to analyze the **Car Dekho.csv** dataset. The queries answer various questions posed by a car dealership manager and clients, focusing on data related to car availability, fuel types, and trends across different years.

## Dataset Description

The dataset contains details of cars available in the market, including:
- **Name**: Car model name.
- **Year**: The year the car was manufactured.
- **Selling Price**: The price at which the car is being sold.
- **Present Price**: The current price of the car.
- **Kms Driven**: The total kilometers driven by the car.
- **Fuel Type**: The fuel type of the car (Petrol, Diesel, CNG).
- **Seller Type**: Dealer or individual selling the car.
- **Transmission**: Manual or Automatic transmission.
- **Owner**: The number of previous owners.

## Project Structure

- **SQL Schema**: A schema named `cars` is created to store the dataset.
- **SQL Queries**: Various queries are executed to answer questions related to car data.

## SQL Queries and Explanations

### 1. Total Cars Count
To get the total number of cars available in the dataset:
```sql
SELECT count(*) FROM car_dekho;
```
### 2. Cars Available in 2023
#### The manager requested a count of cars that will be available in 2023:
```sql
SELECT count(*) FROM car_dekho WHERE year = 2023;
```
### 3. Cars Available in 2020, 2021, and 2023
#### To find out how many cars are available in 2020, 2021, and 2023:
```sql
SELECT count(*) FROM car_dekho WHERE year IN (2020, 2021, 2023) GROUP BY year;
```
### 4. Total Cars by Year
#### Print the total number of cars for each year:
```sql
SELECT year, count(*) FROM car_dekho GROUP BY year;
```
### 5. Diesel Cars in 2020
#### The manager requested to find how many diesel cars will be available in 2020:
```sql
SELECT count(*) FROM car_dekho WHERE year = 2020 AND fuel = 'DIESEL';
```
### 6. Cars by Fuel Type per Year
#### Find the number of cars available by fuel type (Petrol, Diesel, CNG) for each year:
```sql
SELECT year, count(*) FROM car_dekho WHERE fuel = 'Petrol' GROUP BY year;
SELECT year, count(*) FROM car_dekho WHERE fuel = 'Diesel' GROUP BY year;
SELECT year, count(*) FROM car_dekho WHERE fuel = 'CNG' GROUP BY year;
```
### 7. Years with More Than 100 Cars
#### Find the years where the number of cars is more than 100:
```sql
SELECT year, count(*) FROM car_dekho GROUP BY year HAVING count(*) > 100;
```
### 8. Cars Between 2015 and 2023
#### Get the list and count of cars between 2015 and 2023:
```sql
SELECT count(*) FROM car_dekho WHERE year BETWEEN 2015 AND 2023;
SELECT * FROM car_dekho WHERE year BETWEEN 2015 AND 2023;
```
## Setup Instructions
### 1. Create a schema named cars in your database.
```sql
CREATE SCHEMA cars;
USE cars;
```
2. Load the Car Dekho dataset into a table named car_dekho.

3. Run the provided SQL queries to perform the analysis.

## echnologies Used
1. Database: MySQL (or any SQL-based database).
2. Tools: SQL queries to interact with the dataset.

##Author
Akash Sukla Baidya
Github | LinkedIn



     

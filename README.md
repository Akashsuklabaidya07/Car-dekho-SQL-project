# CarDekho SQL Analysis Project

This project consists of a series of SQL queries that analyze the data from a car listing dataset (`CarDekho.csv`). The dataset contains various attributes such as the car model, price, year of manufacture, fuel type, transmission type, and other relevant information.

## Table of Contents
- [About the Dataset](#CarDekho.csv)
- [SQL Queries](#sql-queries)
- [How to Run](#how-to-run)
- [Dependencies](#dependencies)
- [License](#license)

## About the Dataset

The dataset used in this project contains details about cars from the CarDekho website, including the following fields:
- **Car Name**: The name of the car.
- **Year**: The manufacturing year of the car.
- **Selling Price**: The selling price of the car in lakhs.
- **Present Price**: The current price of the car in lakhs.
- **Kms Driven**: Total kilometers driven by the car.
- **Fuel Type**: The type of fuel used by the car (Petrol/Diesel/CNG).
- **Seller Type**: Whether the seller is a dealer or an individual.
- **Transmission**: Type of transmission (Manual/Automatic).
- **Owner**: The number of owners the car has had.

## SQL Queries

Here are the types of SQL queries that were solved using the dataset:

1. **Find the top 5 most expensive cars**:
   ```sql
   SELECT CarName, Selling_Price
   FROM CarDekho
   ORDER BY Selling_Price DESC
   LIMIT 5;

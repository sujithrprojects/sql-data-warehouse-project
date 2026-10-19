/*
=============================================================
Create Database and schemas
=============================================================
Script Purpose:
  This script creates a new database named DataWarehouse after checking if it already exists.
  If the database exists, it is dropped and recreated. Additionally, the script sets up three
  schemas within the database: 'bronze' , 'silver' , 'gold'
*/

--Drop and recreate the data warehouse database
IF EXISTS(SELECT 1 FROM sys.databases WHERE name="DataWarehouse")
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;

--Create the DataWarehouse Database
CREATE DATABASE DataWarehouse;


--Use database
USE Datawarehouse;


--Create schemas
CREATE SCHEMA bronze;
CREATE SCHEMA silver;
CREATE SCHEMA gold;

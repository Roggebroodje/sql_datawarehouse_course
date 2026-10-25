/* 
========================================================
Create Database and Schemas
========================================================

Script Purpose:
	This scripts creates a new database called 'DataWarehouse' afdter checking if it already exists. 
	If it does exist already, it first removes it.
	Addtionally it creates three schemas withing this database: 'bronze', 'silver' and 'gold'.

Warning!!
	Running this script will remove your existing database 'DataWarehouse'.
	All your previous work will be removed.

*/


-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO

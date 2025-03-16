-- SQL Script to Create AMC Analysis Database and Tables

-- Step 1: Create Database
CREATE DATABASE AMC_Analysis;

GO

USE AMC_Analysis;
GO

-- Step 2: Create Dimension Tables
CREATE TABLE Telecommunications (
    Telecom_ID INT PRIMARY KEY,
    Vendor_Name VARCHAR(255),
    PO_Number VARCHAR(50),
    Currency VARCHAR(10),
    Contract_Value DECIMAL(18,2)
);

CREATE TABLE Marine (
    Marine_ID INT PRIMARY KEY,
    Vendor_Name VARCHAR(255),
    PO_Number VARCHAR(50),
    Currency VARCHAR(10),
    Contract_Value DECIMAL(18,2)
);

CREATE TABLE Equipment (
    Equipment_ID INT PRIMARY KEY,
    Vendor_Name VARCHAR(255),
    PO_Number VARCHAR(50),
    Currency VARCHAR(10),
    Contract_Value DECIMAL(18,2)
);

CREATE TABLE Materials (
    Material_ID INT PRIMARY KEY,
    Vendor_Name VARCHAR(255),
    PO_Number VARCHAR(50),
    Currency VARCHAR(10),
    Contract_Value DECIMAL(18,2)
);

-- Step 3: Create Fact Tables
CREATE TABLE Material_Group (
    Material_Group_ID INT PRIMARY KEY,
    Group_Name VARCHAR(255)
);

CREATE TABLE Cost_Center (
    CC_ID INT PRIMARY KEY,
    Department_Name VARCHAR(255)
);

CREATE TABLE Plant_Location (
    Plant_ID INT PRIMARY KEY,
    Location_Name VARCHAR(255),
    Total_Spend DECIMAL(18,2)
);

-- Step 4: Establish Relationships
ALTER TABLE Telecommunications ADD Material_Group_ID INT FOREIGN KEY REFERENCES Material_Group(Material_Group_ID);
ALTER TABLE Marine ADD Material_Group_ID INT FOREIGN KEY REFERENCES Material_Group(Material_Group_ID);
ALTER TABLE Equipment ADD Material_Group_ID INT FOREIGN KEY REFERENCES Material_Group(Material_Group_ID);
ALTER TABLE Materials ADD Material_Group_ID INT FOREIGN KEY REFERENCES Material_Group(Material_Group_ID);

ALTER TABLE Telecommunications ADD CC_ID INT FOREIGN KEY REFERENCES Cost_Center(CC_ID);
ALTER TABLE Marine ADD CC_ID INT FOREIGN KEY REFERENCES Cost_Center(CC_ID);
ALTER TABLE Equipment ADD CC_ID INT FOREIGN KEY REFERENCES Cost_Center(CC_ID);
ALTER TABLE Materials ADD CC_ID INT FOREIGN KEY REFERENCES Cost_Center(CC_ID);

ALTER TABLE Telecommunications ADD Plant_ID INT FOREIGN KEY REFERENCES Plant_Location(Plant_ID);
ALTER TABLE Marine ADD Plant_ID INT FOREIGN KEY REFERENCES Plant_Location(Plant_ID);
ALTER TABLE Equipment ADD Plant_ID INT FOREIGN KEY REFERENCES Plant_Location(Plant_ID);
ALTER TABLE Materials ADD Plant_ID INT FOREIGN KEY REFERENCES Plant_Location(Plant_ID);

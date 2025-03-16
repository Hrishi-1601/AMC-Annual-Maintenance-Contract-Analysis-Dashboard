
-- Step 1: Create the database
CREATE DATABASE AMC_Analysis;
GO

USE AMC_Analysis;
GO

-- Step 2: Create Dimension Tables
CREATE TABLE Telecommunications (
    VendorID INT PRIMARY KEY,
    VendorName NVARCHAR(255),
    ContractInfo NVARCHAR(MAX)
);

CREATE TABLE Marine (
    VendorID INT PRIMARY KEY,
    VendorName NVARCHAR(255),
    ContractInfo NVARCHAR(MAX)
);

CREATE TABLE Equipment (
    VendorID INT PRIMARY KEY,
    VendorName NVARCHAR(255),
    ContractInfo NVARCHAR(MAX)
);

CREATE TABLE Materials (
    VendorID INT PRIMARY KEY,
    VendorName NVARCHAR(255),
    ContractInfo NVARCHAR(MAX)
);

CREATE TABLE MaterialGroup (
    MaterialGroupID INT PRIMARY KEY,
    MaterialGroupName NVARCHAR(255)
);

CREATE TABLE CostCenter (
    CostCenterID INT PRIMARY KEY,
    DepartmentName NVARCHAR(255)
);

CREATE TABLE PlantLocation (
    PlantLocationID INT PRIMARY KEY,
    LocationName NVARCHAR(255),
    SpendingData NVARCHAR(MAX)
);

-- Step 3: Create Fact Table
CREATE TABLE AMCTransactions (
    TransactionID INT PRIMARY KEY,
    VendorID INT,
    PlantLocationID INT,
    MaterialGroupID INT,
    CostCenterID INT,
    ContractAmount DECIMAL(18, 2),
    CostDetails NVARCHAR(MAX),
    FOREIGN KEY (VendorID) REFERENCES Telecommunications(VendorID),
    FOREIGN KEY (PlantLocationID) REFERENCES PlantLocation(PlantLocationID),
    FOREIGN KEY (MaterialGroupID) REFERENCES MaterialGroup(MaterialGroupID),
    FOREIGN KEY (CostCenterID) REFERENCES CostCenter(CostCenterID)
);

-- Step 4: Insert sample data (optional, for testing purposes)
INSERT INTO Telecommunications (VendorID, VendorName, ContractInfo) VALUES (1, 'Vendor A', 'Contract A Info');
INSERT INTO PlantLocation (PlantLocationID, LocationName, SpendingData) VALUES (1, 'Plant A', 'Spending Data A');
INSERT INTO MaterialGroup (MaterialGroupID, MaterialGroupName) VALUES (1, 'Material Group A');
INSERT INTO CostCenter (CostCenterID, DepartmentName) VALUES (1, 'Department A');
INSERT INTO AMCTransactions (TransactionID, VendorID, PlantLocationID, MaterialGroupID, CostCenterID, ContractAmount, CostDetails) 
VALUES (1, 1, 1, 1, 1, 100000.00, 'Cost Details A');

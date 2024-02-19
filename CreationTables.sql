USE master;
GO
ALTER DATABASE AlpinPastaParti SET SINGLE_USER WITH ROLLBACK IMMEDIATE;

DROP DATABASE AlpinPastaParti;


CREATE DATABASE AlpinPastaParti;
GO

use AlpinPastaParti



-- Product Table
CREATE TABLE Product (
    ProductID INT PRIMARY KEY,
    CategoryID INT,
    ProductName NVARCHAR(50),
    ProductPrice DECIMAL(10,2) NOT NULL,
    ProductColor NVARCHAR(20),
    UNIQUE (CategoryID, ProductID),
    INDEX idx_ProductName (ProductName) 
);

-- Party_Products Table
CREATE TABLE Party_Products (
    PartyProductID INT PRIMARY KEY,
    PartyCategoryName NVARCHAR(50),
    ProductMetarial NVARCHAR(100),
    FOREIGN KEY (PartyProductID) REFERENCES Product(ProductID),
    INDEX idx_PartyCategoryName (PartyCategoryName) 
);

-- Pastry_Products Table
CREATE TABLE Pastry_Products (
    PastryProductID INT PRIMARY KEY,
    PastryCategoryName NVARCHAR(50),
    ProductMetarial NVARCHAR(100),
    PastryExpireDate DATE,
    FOREIGN KEY (PastryProductID) REFERENCES Product(ProductID),
    INDEX idx_PastryExpireDate (PastryExpireDate) 
);


-- Storage Table 
CREATE TABLE Storage ( 
    StorageID INT PRIMARY KEY IDENTITY(150, 1),
    ProductID INT,
    Quantity INT DEFAULT 0,
    RequestedProductName NVARCHAR(50) NOT NULL,
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);

--COMPUTED COLUMN For Storage--
	ALTER TABLE Storage
ADD StockStatus AS (
    CASE
        WHEN Quantity > 15 THEN 'In Stock'
        ELSE 'Out of Stock'
    END
) PERSISTED;

-- Customer Table 
CREATE TABLE Customer (
    CustomerID INT IDENTITY(1, 1) PRIMARY KEY,
    CustomerName VARCHAR(50) NOT NULL,
    Email VARCHAR(50) NOT NULL,
    Telephone VARCHAR(15),
    Address VARCHAR(50) NULL
);


--Service Table 
CREATE TABLE Service (
    ServiceID INT PRIMARY KEY ,
    ServiceType VARCHAR(30),
    City NVARCHAR(50),
    Street NVARCHAR(50),
    ZipCode NVARCHAR(10)
);



-- Customer_Order Table
CREATE TABLE Customer_Order (
    CustomerOrderID INT IDENTITY(10000, 1),
    CustomerID INT FOREIGN KEY REFERENCES Customer(CustomerID),
	ServiceID INT FOREIGN KEY REFERENCES Service(ServiceID),
    CustomerOrderDate DATE NOT NULL,
	Primary Key (CustomerOrderID, ServiceID)
   -- Customer_Order Tablosuna CustomerID Ekleniyor


);


-- Payment table 
CREATE TABLE Payment( 
    PaymentID INT PRIMARY KEY ,
    PaymentMethod VARCHAR(50) NOT NULL,
    PaymentDate DATE
);



--Customer_Bill Table
CREATE TABLE Customer_Bill (
    CustomerBillID INT IDENTITY(200, 1) PRIMARY KEY,
    CustomerID INT FOREIGN KEY REFERENCES Customer(CustomerID),
    PaymentID INT FOREIGN KEY REFERENCES Payment(PaymentID)
);


ALTER TABLE Customer_Bill
ADD CONSTRAINT FK_Customer_Bill_CustomerID
FOREIGN KEY (CustomerID)
REFERENCES Customer(CustomerID)
ON DELETE CASCADE;


--Price Table 
CREATE TABLE Price(
	  PriceID int PRIMARY KEY,
	  Price Decimal(5,2)
    
);	
--PRICE_Service Table
CREATE TABLE PRICE_Service(	
    ServicePrice DECIMAL(5,2),
    ServiceID INT FOREIGN KEY REFERENCES Service(ServiceID),
    PRIMARY KEY (ServiceID)
);	
--PRICE_Product Table
CREATE TABLE PRICE_Product(
	
    ProductPrice DECIMAL(5,2),
    ProductID INT FOREIGN KEY REFERENCES Product(ProductID),
    PRIMARY KEY (ProductID)
);	



--Company_Order Table
CREATE TABLE Company_Order(
    CompanyOrderID INT PRIMARY KEY IDENTITY(10000,1),
    CompanyOrderDate DATE NOT NULL
);


--Company_Bill Table
CREATE TABLE Company_Bill(
    CompanyBillID INT IDENTITY(100,1) UNIQUE,
    OrderID INT FOREIGN KEY REFERENCES Company_Order(CompanyOrderID),
    PaymentID INT FOREIGN KEY REFERENCES Payment(PaymentID),
	
);

-- Employee Table
CREATE TABLE Employee(
    EmployeeSSN INT PRIMARY KEY,
    FirstName VARCHAR(30),
    LastName VARCHAR(30),
    Email VARCHAR(50) NOT NULL,
    PhoneNumber VARCHAR(15),
    Address VARCHAR(50),
    Salary INT DEFAULT 0
);


ALTER TABLE Employee ADD FullName AS (FirstName + ' ' + LastName);


-- Workplaces Table
CREATE TABLE Workplaces (
	
    WorkplaceID INT PRIMARY KEY,
    WorkplaceName NVARCHAR(50)
);

--Employee Workplaces Table
CREATE TABLE EmployeeWorkplaces (
    EmployeeSSN INT FOREIGN KEY REFERENCES Employee(EmployeeSSN),
    WorkplaceID INT FOREIGN KEY REFERENCES Workplaces(WorkplaceID),
    PRIMARY KEY (EmployeeSSN, WorkplaceID)
);

--Special Design Table
CREATE TABLE Special_Design (
    DesignProductID INT PRIMARY KEY IDENTITY(1,1),
    SpecialServiceID INT FOREIGN KEY REFERENCES Service(ServiceID)
);

 -- Rent Table
CREATE TABLE Rent (
    RentalProductID INT PRIMARY KEY IDENTITY(1,1),
    RentServiceID INT FOREIGN KEY REFERENCES Service(ServiceID),
    StorageID INT
);





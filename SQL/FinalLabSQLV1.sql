DROP database IF EXISTS globalsuperstore;

CREATE DATABASE globalsuperstore;

USE globalsuperstore;

CREATE TABLE IF NOT EXISTS Products (
    ProductID VARCHAR(100) PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    SubCategory VARCHAR(50),
    Price DECIMAL(10, 2)

);

CREATE TABLE IF NOT EXISTS Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Segment VARCHAR(50),
    Region VARCHAR(50),
    Country VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS Orders (
    OrderID VARCHAR(50) PRIMARY KEY,
    OrderDate DATE,
    ShipDate DATE,
    ShipMode VARCHAR(50),
    CustomerID INT,
    ProductID VARCHAR (100),
    Quantity INT,
    Price DECIMAL(10, 2),
    Profit DECIMAL(10, 2),
    City VARCHAR(50),
    Region VARCHAR(50),
    Category VARCHAR(50),
    SubCategory VARCHAR(50),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID), -- Foreign Key reference to Customers table
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)   -- Foreign Key reference to Products table
);





DESCRIBE products;
select * FROM PRODUCTS
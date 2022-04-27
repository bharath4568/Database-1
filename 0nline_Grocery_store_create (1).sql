-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2022-04-15 20:38:49.773
Create database Project;
use Project;

-- tables
-- Table: Customer
CREATE TABLE Customer (
    customer_id int(11) NOT NULL,
    firstname varchar(40) NOT NULL,
    lastname varchar(40) NOT NULL,
    Product_product_Id int(11) NOT NULL,
    CONSTRAINT Customer_pk PRIMARY KEY (customer_id)
);

-- Table: Employee
CREATE TABLE Employee (
    Employee_ID int(50) NOT NULL,
    Name  varchar(50) NOT NULL,
    Hire_Date date NOT NULL,
    Salary float(10,5) NOT NULL,
    job_title Varchar(50) NOT NULL,
    Online_Grocery_Store_Store_ID int NOT NULL,
    CONSTRAINT Employee_pk PRIMARY KEY (Employee_ID)
);

-- Table: Online_Grocery_Store
CREATE TABLE Online_Grocery_Store (
    Store_ID int NOT NULL,
    Product_product_Id int(11) NOT NULL,
    CONSTRAINT Online_Grocery_Store_pk PRIMARY KEY (Store_ID)
);

-- Table: Product
CREATE TABLE Product (
    product_Id int(11) NOT NULL,
    Name Varchar(75) NOT NULL,
    Availability bool NOT NULL,
    price float(10,5) NOT NULL,
    CONSTRAINT Product_pk PRIMARY KEY (product_Id)
);

-- Table: payment
CREATE TABLE payment (
    Payment_ID int(50) NOT NULL,
    Customer_name Varchar(50) NOT NULL,
    Total_payment float(10,5) NOT NULL,
    Date date NOT NULL,
    Product_product_Id int(11) NOT NULL,
    CONSTRAINT payment_pk PRIMARY KEY (Payment_ID)
);

-- Table: sales
CREATE TABLE sales (
    Sales_ID int(11) NOT NULL,
    Product_name Varchar(50) NOT NULL,
    Price float(10,5) NOT NULL,
    Quantity int(11) NOT NULL,
    Date_Purchase date NOT NULL,
    Product_product_Id int(11) NOT NULL,
    Online_Grocery_Store_Store_ID int NOT NULL,
    CONSTRAINT sales_pk PRIMARY KEY (Sales_ID)
);

-- foreign keys
-- Reference: Customer_Product (table: Customer)
ALTER TABLE Customer ADD CONSTRAINT Customer_Product FOREIGN KEY Customer_Product (Product_product_Id)
    REFERENCES Product (product_Id);

-- Reference: Employee_Online_Grocery_Store (table: Employee)
ALTER TABLE Employee ADD CONSTRAINT Employee_Online_Grocery_Store FOREIGN KEY Employee_Online_Grocery_Store (Online_Grocery_Store_Store_ID)
    REFERENCES Online_Grocery_Store (Store_ID);

-- Reference: Online_Grocery_Store_Product (table: Online_Grocery_Store)
ALTER TABLE Online_Grocery_Store ADD CONSTRAINT Online_Grocery_Store_Product FOREIGN KEY Online_Grocery_Store_Product (Product_product_Id)
    REFERENCES Product (product_Id);

-- Reference: payment_Product (table: payment)
ALTER TABLE payment ADD CONSTRAINT payment_Product FOREIGN KEY payment_Product (Product_product_Id)
    REFERENCES Product (product_Id);

-- Reference: sales_Online_Grocery_Store (table: sales)
ALTER TABLE sales ADD CONSTRAINT sales_Online_Grocery_Store FOREIGN KEY sales_Online_Grocery_Store (Online_Grocery_Store_Store_ID)
    REFERENCES Online_Grocery_Store (Store_ID);

-- Reference: sales_Product (table: sales)
ALTER TABLE sales ADD CONSTRAINT sales_Product FOREIGN KEY sales_Product (Product_product_Id)
    REFERENCES Product (product_Id);

-- End of file.


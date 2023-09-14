CREATE DATABASE INVENTORY_MANAGEMENT;
CREATE SCHEMA INV_MAN;

--ADMIN TABLE
CREATE TABLE INV_MAN.Admin (
    Admin_ID INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Contact_No VARCHAR(20),
    Email_Address VARCHAR(100) NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- INVENTORY TABLE
CREATE TABLE INV_MAN.Inventory (
    Godown_ID INT IDENTITY(1,1) PRIMARY KEY,
    Invoice_No VARCHAR(50),
    Item_Name VARCHAR(100),
    Quantity INT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    UNIQUE (Godown_ID, Invoice_No)
);

-- STORAGE TABLE
CREATE TABLE INV_MAN.Storage (
    Store_ID INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Code VARCHAR(50) UNIQUE,
    Items VARCHAR(100),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- PRODUCT TABLE
CREATE TABLE INV_MAN.Products (
    Product_ID INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Description VARCHAR(200),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- SUPPLIER TABLE
CREATE TABLE Supplier (
    Supplier_ID INT IDENTITY(1,1) PRIMARY KEY,
    Registration_No VARCHAR(50),
    Name VARCHAR(100) NOT NULL,
    Date_of_Supply DATE,
    Item_Name VARCHAR(100),
    Invoice_No VARCHAR(50),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

---SHIPMENT TABLE
CREATE TABLE INV_MAN.SHIPMENT(
    Serial_No INT IDENTITY(1,1) PRIMARY KEY,
	ADDRESS VARCHAR(100),
	Date_Of_Delivery DATE,
	Signature Varchar(100));

--STORE PROCEDURE FOR ADMIN
CREATE PROCEDURE InsertIntoAdmin
(
    @Name VARCHAR(50),
    @Contact_No VARCHAR(20),
    @Email_Address VARCHAR(100)
)
AS
    INSERT INTO INV_MAN.Admin (Name, Contact_No, Email_Address)
    SELECT @Name, @Contact_No, @Email_Address;

--STORE PROCEDURE FOR INVENTORY
CREATE PROCEDURE InsertIntoInventory
(
    @Invoice_No VARCHAR(50),
    @Item_Name VARCHAR(100),
    @Quantity INT
)
AS
    INSERT INTO INV_MAN.Inventory (Invoice_No, Item_Name, Quantity)
    SELECT @Invoice_No, @Item_Name, @Quantity;

--STORE PROCEDURE FOR STORAGE
CREATE PROCEDURE InsertIntoStorage
(
    @Name VARCHAR(100),
    @Code VARCHAR(50),
    @Items VARCHAR
)
AS
    INSERT INTO INV_MAN.Storage (Name, Code, Items)
    SELECT @Name, @Code, @Items;

--STORE PROCEDURE FOR PRODUCT TABLE
CREATE PROCEDURE InsertIntoProducts
(
    @Name VARCHAR(100),
    @Description VARCHAR(200)
)
AS
    INSERT INTO INV_MAN.Products (Name, Description)
    SELECT @Name, @Description;

--STORE PROCEDURE FOR SUPPLIER TABLE
CREATE PROCEDURE InsertIntoSupplier
(
    @Registration_No VARCHAR(50),
    @Name VARCHAR(100),
    @Date_of_Supply DATE,
    @Item_Name VARCHAR(100),
    @Invoice_No VARCHAR(50)
)
AS
    INSERT INTO Supplier (Registration_No, Name, Date_of_Supply, Item_Name, Invoice_No)
    SELECT @Registration_No, @Name, @Date_of_Supply, @Item_Name, @Invoice_No;

--STORE PROCEDURE FOR SHIPMENT TABLE
CREATE PROCEDURE InsertIntoShipment
(
    @ADDRESS VARCHAR(100),
    @Date_Of_Delivery DATE,
    @Signature VARCHAR(100)
)
AS
    INSERT INTO INV_MAN.SHIPMENT (ADDRESS, Date_Of_Delivery, Signature)
    SELECT @ADDRESS, @Date_Of_Delivery, @Signature;


--VIEW for Admin table
CREATE VIEW v_Admin AS
SELECT
    Admin_ID,
    Name,
    Contact_No,
    Email_Address,
    created_at,
    updated_at
FROM Admin;

--VIEW for Inventory table
CREATE VIEW v_Inventory AS
SELECT
    Godown_ID,
    Invoice_No,
    Item_Name,
    Quantity,
    created_at,
    updated_at
FROM Inventory;

--VIEW for Storage table
CREATE VIEW v_Storage AS
SELECT
    Store_ID,
    Name,
    Code,
    Items,
    created_at,
    updated_at
FROM Storage;

-- VIEW for Products table
CREATE VIEW v_Products AS
SELECT
    Products_ID,
    Name,
    Description,
    created_at,
    updated_at
FROM Products;

-- VIEW for Supplier table
CREATE VIEW v_Supplier AS
SELECT
    Supplier_id,
    Registration_No,
    Name,
    Date_of_Supply,
    Item_Name,
    Invoice_No,
    created_at,
    updated_at
FROM Supplier;
 
-- VIEW for Shipment table
CREATE VIEW v_Shipment AS
SELECT
    Serial_No ,
	ADDRESS,
	Date_Of_Delivery,
	Signature,
    created_at,
    updated_at
FROM Supplier;


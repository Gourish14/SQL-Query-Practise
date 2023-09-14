USE [AdventureWorksLT2022]
GO

SELECT [ProductID]
      ,[Name]
      ,[ProductNumber]
      ,[Color]
      ,[StandardCost]
      ,[ListPrice]
      ,[Size]
      ,[Weight]
      ,[ProductCategoryID]
      ,[ProductModelID]
      ,[SellStartDate]
      ,[SellEndDate]
      ,[DiscontinuedDate]
      ,[ThumbNailPhoto]
      ,[ThumbnailPhotoFileName]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [SalesLT].[Product]

GO


SELECT * FROM SalesLT.Product;

/* Aggregate Function - MIN */
SELECT MIN(ListPrice) as LowestPrice FROM SalesLT.Product;
SELECT MIN(StandardCost) as LowestStandardCost FROM SalesLT.Product;
SELECT TOP 20 MIN(ListPrice) as LowestPrice FROM SalesLT.Product;
SELECT DISTINCT TOP 10 MIN(ListPrice) as LowestPrice FROM SalesLT.Product;
SELECT MIN(Weight) as LowestWeight FROM SalesLT.Product;
SELECT MIN(ModifiedDate) as StartingModifiedDate FROM SalesLT.Product;
SELECT MIN(SellStartDate) as StartingSellDate FROM SalesLT.Product;
SELECT MIN(SellEndDate) as StartingEndDate FROM SalesLT.Product;
SELECT MIN(ProductModelID) as LowestProductModeID FROM SalesLT.Product;
SELECT MIN(Size) as SmallestSize FROM SalesLT.Product;

/*Aggregate Function - MAX */
SELECT MAX(ListPrice) as HighestPrice FROM SalesLT.Product;
SELECT MAX(StandardCost) as HighestStandardCost FROM SalesLT.Product;
SELECT TOP 30 MAX(ListPrice) as HighestPrice FROM SalesLT.Product;
SELECT DISTINCT TOP 50 MAX(ListPrice) as HighestPrice FROM SalesLT.Product;
SELECT MAX(Weight) as HighestWeight FROM SalesLT.Product;
SELECT MAX(ModifiedDate) as LastModifiedDate FROM SalesLT.Product;
SELECT MAX(SellStartDate) as LastSellDate FROM SalesLT.Product;
SELECT MAX(SellEndDate) as LastEndDate FROM SalesLT.Product;
SELECT MAX(ProductModelID) as HighestProductModeID FROM SalesLT.Product;
SELECT MAX(Size) as HighestSize FROM SalesLT.Product;

/* Aggregate Function - AVG */
SELECT AVG(ListPrice) as AveragePrice FROM SalesLT.Product;
SELECT AVG(StandardCost) as AverageStandardCost FROM SalesLT.Product;
SELECT TOP 5 AVG(ListPrice) as AveragePrice FROM SalesLT.Product;
SELECT DISTINCT TOP 10 AVG(ListPrice) as AveragePrice FROM SalesLT.Product;
SELECT AVG(Weight) as AverageWeight FROM SalesLT.Product;
SELECT AVG(ProductModelID) as  AverageProductModeID FROM SalesLT.Product;

/* Aggregate Function - SUM */
SELECT SUM(ListPrice) as TotalPrice FROM SalesLT.Product;
SELECT SUM(StandardCost) asTotalStandardCost FROM SalesLT.Product;
SELECT TOP 20 SUM(ListPrice) as TotalPrice FROM SalesLT.Product;
SELECT DISTINCT TOP 10 SUM(ListPrice) as TotalPrice FROM SalesLT.Product;
SELECT SUM(Weight) as TotalWeight FROM SalesLT.Product;
SELECT SUM(ProductModelID) as TotalProductModeID FROM SalesLT.Product;

/*Aggregate Function - COUNT */
SELECT COUNT(ProductID) as ProductID FROM SalesLT.Product WHERE ProductID like '7%';
SELECT COUNT(ProductNumber) as ProductNumber FROM SalesLT.Product WHERE ProductNumber like '5%';
SELECT TOP 20 COUNT(ListPrice) as ListPrice FROM SalesLT.Product WHERE ListPrice like '6%';
SELECT DISTINCT TOP 10 COUNT(ListPrice) as ListPrice FROM SalesLT.Product WHERE ListPrice like '5%';
SELECT COUNT(Weight) as Weight FROM SalesLT.Product WHERE Weight like '4%' or Weight like '5%';
SELECT COUNT(ProductModelID) as ProductModeID FROM SalesLT.Product WHERE ProductModelID IN(22,24,25,27,44,33,23);

/* Queries for GROUP BY */
SELECT ProductID, COUNT(ProductID) as TotalProductID
FROM SalesLT.Product
GROUP BY ProductID;

SELECT ProductID, ListPrice, SUM(ListPrice) as TotalListPrice
FROM SalesLT.Product
GROUP BY ProductID,ListPrice;

SELECT ProductID, ProductNumber, AVG(Weight) as AverageWeight
FROM SalesLT.Product
GROUP BY ProductNumber, ProductID;

SELECT Name, MIN(Size) as MinimumSize
FROM SalesLT.Product
GROUP BY Size, Name;

SELECT ProductNumber, MAX(Weight) as MaximumWeight
FROM SalesLT.Product
GROUP BY ProductID, ProductNumber, Weight;

SELECT ProductID, Name, MAX(ListPrice) as MaximumListingPrice
FROM SalesLT.Product
WHERE ListPrice > 500
GROUP BY ProductID, Name, ListPrice;

SELECT ProductNumber, Name, MIN(StandardCost) as MinimumStandardCost
FROM SalesLT.Product
WHERE Name like 'h%'
GROUP BY ProductNumber, Name, StandardCost;

SELECT ProductID, Name, AVG(Weight) as AverageWeight
FROM SalesLT.Product
WHERE Name like 'M%'
GROUP BY ProductID, Name;

SELECT ProductNumber, Name, SUM(StandardCost) as TotalStandardCost
FROM SalesLT.Product
WHERE Name like 'N%' OR Name like 'H%'
GROUP BY ProductNumber, Name, StandardCost;

SELECT Name, Count(Color) as Colour
FROM SalesLT.Product
WHERE Color IN ('Red')
GROUP BY Name, Color;

/* Queries for having and GROUP  BY */
SELECT ProductID, COUNT(Name) as NAME
FROM SalesLT.Product
GROUP BY ProductID, Name
HAVING COUNT(Name) = 1;

SELECT ProductNumber, SUM(Weight) as TotalWeight
FROM SalesLT.Product
GROUP BY ProductNumber, Weight
HAVING SUM(Weight) > 2;

SELECT ProductNumber, AVG(StandardCost) as TotalStandardCost
FROM SalesLT.Product
GROUP BY ProductNumber, StandardCost
HAVING Avg(StandardCost) > 3;

SELECT ProductID, MIN(StandardCost) as MinimumStandardCost
FROM SalesLT.Product
GROUP BY ProductID, StandardCost
HAVING MIN(StandardCost) > 5;

SELECT Name, MAX(StandardCost) as MaximumStandardCost
FROM SalesLT.Product
GROUP BY Name, StandardCost
HAVING MAX(StandardCost) > 5;

/* Queries using order by */
SELECT ProductID, Name, MAX(ListPrice) as MaximumListingPrice
FROM SalesLT.Product
WHERE ListPrice > 500
GROUP BY ProductID, Name, ListPrice
ORDER BY ProductID ASC, Name ASC;

SELECT ProductNumber, Name, MIN(StandardCost) as MinimumStandardCost
FROM SalesLT.Product
WHERE Name like 'h%'
GROUP BY ProductNumber, Name, StandardCost
ORDER BY StandardCost DESC;

SELECT ProductID, Name, AVG(Weight) as AverageWeight
FROM SalesLT.Product
WHERE Name like 'M%'
GROUP BY ProductID, Name
ORDER BY PRODUCTID DESC, NAME ASC;

SELECT ProductNumber, Name, SUM(StandardCost) as TotalStandardCost
FROM SalesLT.Product
WHERE Name like 'N%' OR Name like 'H%'
GROUP BY ProductNumber, Name, StandardCost
ORDER BY Name DESC, StandardCost DESC;

SELECT Name, Count(Color) as Colour
FROM SalesLT.Product
WHERE Color IN ('Red')
GROUP BY Name, Color
ORDER BY NAME ASC, COLOR DESC;
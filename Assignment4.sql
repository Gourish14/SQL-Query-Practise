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

--Selecting the whole table
SELECT * FROM SalesLT.Product;

--Upper Case
SELECT UPPER('gourish') as UPPERCASED;

SELECT Name, UPPER(Name) as UPPERCASED
FROM SalesLT.Product;

SELECT Color, UPPER(Color) as CapitalColor
FROM SalesLT.Product;

UPDATE SalesLT.Product
SET Name = UPPER(Name);

--Lower Case
SELECT LOWER('GOURISH') as LOWERCASED;

SELECT Name, LOWER(Name) as LOWERCASED
FROM SalesLT.Product;

SELECT Color, LOWER(Color) as SmallColor
FROM SalesLT.Product;

UPDATE SalesLT.Product
SET Name = LOWER(Name);

--LEFT
SELECT LEFT ('Gourish Bhagat',6) as EditedName;

SELECT LEFT(Color, 2) as EditedColor
FROM SalesLT.Product;

SELECT LEFT(Name, 5) as EditedName
FROM SalesLT.Product;

--Right
SELECT RIGHT ('Gourish Bhagat',8) as EditedName;

SELECT RIGHT(Color, 2) as EditedColor
FROM SalesLT.Product;

SELECT RIGHT(Name, 5) as EditedName
FROM SalesLT.Product;

--Concat
SELECT CONCAT('Gourish',' ','Bhagat') as ConcatedName;

SELECT CONCAT(Name,' ',Color) as ConcatedColumn
FROM SalesLT.Product;

SELECT CONCAT(ProductID,ProductNumber) as ConcatedColumn
FROM SalesLT.Product;

--Trim
SELECT TRIM('      Gourish Bhagat     ') as TrimmedName;

SELECT TRIM(Name) as TrimmedName
FROM SalesLT.product;

SELECT TRIM(Color) as TrimmedColor
FROM SalesLT.product;

--LTRIM
SELECT LTRIM('      Gourish Bhagat') as LeftTrimmed;

SELECT LTRIM(Name) as LeftTrimmedName
FROM SalesLT.product;

SELECT LTRIM(Color) as LeftTrimmedColor
FROM SalesLT.product;

--Right
SELECT RTRIM('Gourish Bhagat     ') as RightTrimmed;

SELECT RTRIM(Name) as RightTrimmedName
FROM SalesLT.product;

SELECT RTRIM(Color) as RightTrimmedColor
FROM SalesLT.product;

--Reverse
SELECT REVERSE('Gourish Bhagat') as ReversedName;

SELECT REVERSE(Name) as ReversedName
FROM SalesLT.Product;

SELECT REVERSE(Color) as ReversedColor
FROM SalesLT.Product;

--Replace
SELECT REPLACE('Gourish','G','N') as NewName;

SELECT REPLACE(Color,'Black','Magenta') as NewColor
FROM SalesLT.Product;

SELECT REPLACE(Size,58,100) as NewSize
FROM SalesLT.Product;

--STR
SELECT STR(10000.7070,5,2) as NewStr;

SELECT STR(ProductID,8,2) as NewID
FROM SalesLT.Product;

SELECT STR(Weight,10,1) as NewWeight
FROM SalesLT.Product;

--Floor
SELECT FLOOR(100.78) as New;

SELECT FLOOR(Weight) as NewWeight
FROM SalesLT.Product;

SELECT FLOOR(StandardCost) as NewCost
FROM SalesLT.Product;

--Ceiling
SELECT CEILING(100.78) as New;

SELECT CEILING(Weight) as NewWeight
FROM SalesLT.Product;

SELECT CEILING(StandardCost) as NewCost
FROM SalesLT.Product;

--Substring
SELECT SUBSTRING('GOURISH',1,4);

SELECT SUBSTRING(Name,1,6) as NewSubString
FROM SalesLT.Product;

SELECT SUBSTRING(Color,1,2) as NewSubColor
FROM SalesLT.Product;

--Date
SELECT GETDATE() as PresentDate;
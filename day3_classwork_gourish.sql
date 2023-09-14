USE [AdventureWorksLT2022]
GO

SELECT [CustomerID]
      ,[NameStyle]
      ,[Title]
      ,[FirstName]
      ,[MiddleName]
      ,[LastName]
      ,[Suffix]
      ,[CompanyName]
      ,[SalesPerson]
      ,[EmailAddress]
      ,[Phone]
      ,[PasswordHash]
      ,[PasswordSalt]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [SalesLT].[Customer]

GO


/* Selecting top 20 whose first name starts with a and ends with a */
SELECT TOP 20 * FROM SalesLT.CUSTOMER WHERE FirstName LIKE 'a%a';

/* Selecting top 10 whose first name starts with g and ends with n */
SELECT TOP 10 * FROM SalesLT.Customer WHERE FirstName like 'g%n';

/* Selecting unique top 20 whose first name starts with a and have three characters atleast */
SELECT DISTINCT TOP 20 * FROM SalesLT.Customer WHERE FirstName like 'a__%';

/* Selecting all unique whose first name is available*/
SELECT DISTINCT * FROM SalesLT.Customer WHERE FirstName IS NOT NULL;

/* Firstname Middlename and Lastname should have 9 characters and show them as full name*/
SELECT FirstName+MiddleName+LastName as FullName FROM SalesLT.Customer WHERE FirstName like '_________' or MiddleName like '_________' or LastName like '_________';

/* Show the details in which firstname starts with aeiou using OR*/
SELECT * FROM SalesLT.Customer WHERE FirstName like 'a%' or FirstName like 'e%' or FirstName like 'i%' or FirstName like 'o%' or FirstName like 'u%';

/* Show the details in which firstname starts with aeiou without OR */
SELECT * FROM SalesLT.Customer WHERE FirstName like '[AEIOU]%';

/* Show the details in which firstname doesnot starts from A TO J */
SELECT * FROM SalesLT.Customer WHERE FirstName not like '[A-J]%';

/* Show the unique top 20 record where firstname will be available, middlename is not available and middlename may be available */
SELECT DISTINCT TOP 20 * FROM SalesLT.Customer WHERE (FirstName IS NOT NULL AND LastName IS NOT NULL) OR MiddleName IS NULL; 

/* Show all the record where first name starts with a and lastname ends with h */
SELECT FirstName,LastName FROM SalesLT.Customer WHERE FirstName like 'a%' union SELECT FirstName,LastName FROM SalesLT.Customer WHERE LastName like '%h';

/* Showing all record where firstname starts with a and show the duplicate values */
SELECT FirstName FROM SalesLT.Customer WHERE FirstName like 'a%' union all SELECT FirstName FROM SalesLT.Customer WHERE FirstName like 'a%';

/* Showing all record where firstname starts with a and not show the duplicate values using customerid */
SELECT CustomerID FROM SalesLT.Customer WHERE FirstName like 'a%' union all SELECT CustomerID FROM SalesLT.Customer WHERE FirstName like 'a%';

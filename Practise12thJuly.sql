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

/* Searching the record where FirstName is available */
SELECT * FROM SalesLT.Customer WHERE FirstName IS NOT NULL;

/* Searching unique top 20 emailaddress whose starting letter starts with a */
SELECT Distinct TOP 20 EmailAddress FROM SalesLT.Customer WHERE EmailAddress like 'a%';

/* Searching for all the details present in Customer database */
SELECT * FROM SalesLT.Customer;

/* Searching the customer whose modified date is between 06/06/2005 to 06/06/2006 */
SELECT * FROM SalesLT.Customer WHERE ModifiedDate between '2005-06-06' AND '2006-06-06';

/* Searching the FirstName starting with vowel alphabets */
SELECT * FROM SalesLT.Customer WHERE FirstName like 'a%' or FirstName like 'e%' or FirstName like 'i%' or FirstName like 'o%' or FirstName like'u%';

/* Selecting customers having lastname clark and benson */
SELECT * FROM SalesLT.Customer WHERE LastName IN('Clark','Benson');

/* Show all the record where first name starts with a and lastname ends with h */
SELECT FirstName,CompanyName FROM SalesLT.Customer union all SELECT FirstName,CompanyName FROM SalesLT.Customer;


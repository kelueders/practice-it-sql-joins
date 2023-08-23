-- Chapter 1
-- Outputs list of all tables in the database
SELECT name
FROM sqlite_master
WHERE type = 'table' and name NOT LIKE 'sqlite_%';

-- Gives a count of number of records on each table
SELECT "Number of records DimCurrency";
SELECT COUNT(*)
FROM DimCurrency;

SELECT "Number of records DimCustomer";
SELECT COUNT(*)
FROM DimCustomer;

SELECT "Number of records DimDate";
SELECT COUNT(*)
FROM DimDate;

SELECT "Number of records DimDepartmentGroup";
SELECT COUNT(*)
FROM DimDepartmentGroup;

SELECT "Number of records DimSalesTerritory";
SELECT COUNT(*)
FROM DimSalesTerritory;

SELECT "Number of records DimEmployee";
SELECT COUNT(*)
FROM DimEmployee;

SELECT "Number of records DimGeography";
SELECT COUNT(*)
FROM DimGeography;

SELECT "Number of records DimOrganization";
SELECT COUNT(*)
FROM DimOrganization;

SELECT "Number of records DimProductCategory";
SELECT COUNT(*)
FROM DimProductCategory;

SELECT "Number of records DimProductSubcategory";
SELECT COUNT(*)
FROM DimProductSubcategory;

SELECT "Number of records DimProduct";
SELECT COUNT(*)
FROM DimProduct;

SELECT "Number of records DimPromotion";
SELECT COUNT(*)
FROM DimPromotion;

SELECT "Number of records DimSalesReason";
SELECT COUNT(*)
FROM DimSalesReason;

SELECT "Number of records FactCurrencyRate";
SELECT COUNT(*)
FROM FactCurrencyRate;

SELECT "Number of records FactInternetSales";
SELECT COUNT(*)
FROM FactInternetSales;

SELECT "Number of records FactInternetSalesReason";
SELECT COUNT(*)
FROM FactInternetSalesReason;

SELECT "Number of records FactSurveyResponse";
SELECT COUNT(*)
FROM FactSurveyResponse;

SELECT "Number of records DimReseller";
SELECT COUNT(*)
FROM DimReseller;

SELECT "Number of records FactResellerSales";
SELECT COUNT(*)
FROM FactResellerSales;

-- Document the create script for each database table
SELECT sql 
FROM sqlite_master 
WHERE name IN
('DimCurrency','DimProductCategory', 'FactInternetSalesReason',
'DimCustomer','DimProductSubcategory','FactResellerSales',      
'DimDate','DimPromotion','FactSurveyResponse',   
'DimDepartmentGroup','DimReseller',   
'DimEmployee','DimSalesReason',      
'DimGeography','DimSalesTerritory',    
'DimOrganization','FactCurrencyRate',
'DimProduct','FactInternetSales');

-- Gives a table of column names, types, etc for each table
SELECT "DimCurrency";
PRAGMA table_info('DimCurrency');
SELECT "DimCustomer";
PRAGMA table_info('DimCustomer');
SELECT "DimProductCategory";
PRAGMA table_info('DimProductCategory');
SELECT "FactInternetSalesReason";
PRAGMA table_info('FactInternetSalesReason');
SELECT "DimProductSubcategory";
PRAGMA table_info('DimProductSubcategory');
SELECT "FactResellerSales";
PRAGMA table_info('FactResellerSales');
SELECT "DimDate";
PRAGMA table_info('DimDate');
SELECT "DimPromotion";
PRAGMA table_info('DimPromotion');
SELECT "FactSurveyResponse";
PRAGMA table_info('FactSurveyResponse');
SELECT "DimDepartmentGroup";
PRAGMA table_info('DimDepartmentGroup');
SELECT "DimReseller";
PRAGMA table_info('DimReseller');
SELECT "DimEmployee";
PRAGMA table_info('DimEmployee');
SELECT "DimSalesReason";
PRAGMA table_info('DimSalesReason');
SELECT "DimGeography";
PRAGMA table_info('DimGeography');
SELECT "DimSalesTerritory";
PRAGMA table_info('DimSalesTerritory');
SELECT "DimOrganization";
PRAGMA table_info('DimOrganization');
SELECT "FactCurrencyRate";
PRAGMA table_info('FactCurrencyRate');
SELECT "DimProduct";
PRAGMA table_info('DimProduct');
SELECT "FactInternetSales";
PRAGMA table_info('FactInternetSales');
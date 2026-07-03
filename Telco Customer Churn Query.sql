
--Create Database
CREATE DATABASE TelcoCustomerChurn;

--Import Flat file

--Preview the Dataset
SELECT * FROM [WA_Fn-UseC_-Telco-Customer-Churn];

SELECT TOP 10 *
FROM [WA_Fn-UseC_-Telco-Customer-Churn];

--Count the Total Number of Rows
SELECT COUNT (*) AS TotalRows
FROM [WA_Fn-UseC_-Telco-Customer-Churn];

--Count the Total Columns
SELECT COUNT (*) AS TotalColumns 
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'WA_Fn-UseC_-Telco-Customer-Churn';

--View Data Types
SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'WA_Fn-UseC_-Telco-Customer-Churn';

--Checking Missing Values
SELECT
    SUM(CASE WHEN customerID IS NULL OR TRIM(customerID) = '' THEN 1 ELSE 0 END) AS customerID,
    SUM(CASE WHEN gender IS NULL OR TRIM(gender) = '' THEN 1 ELSE 0 END) AS gender,
    SUM(CASE WHEN SeniorCitizen IS NULL THEN 1 ELSE 0 END) AS SeniorCitizen,
    SUM(CASE WHEN Partner IS NULL THEN 1 ELSE 0 END) AS Partner,
    SUM(CASE WHEN Dependents IS NULL THEN 1 ELSE 0 END) AS Dependents,
    SUM(CASE WHEN tenure IS NULL THEN 1 ELSE 0 END) AS tenure,
    SUM(CASE WHEN PhoneService IS NULL THEN 1 ELSE 0 END) AS PhoneService,
    SUM(CASE WHEN MultipleLines IS NULL THEN 1 ELSE 0 END) AS MultipleLines,
    SUM(CASE WHEN InternetService IS NULL OR TRIM(InternetService) = '' THEN 1 ELSE 0 END) AS InternetService,
    SUM(CASE WHEN OnlineSecurity IS NULL THEN 1 ELSE 0 END) AS OnlineSecurity,
    SUM(CASE WHEN OnlineBackup IS NULL THEN 1 ELSE 0 END) AS OnlineBackup,
    SUM(CASE WHEN DeviceProtection IS NULL THEN 1 ELSE 0 END) AS DeviceProtection,
    SUM(CASE WHEN TechSupport IS NULL THEN 1 ELSE 0 END) AS TechSupport,
    SUM(CASE WHEN StreamingTV IS NULL THEN 1 ELSE 0 END) AS StreamingTV,
    SUM(CASE WHEN StreamingMovies IS NULL THEN 1 ELSE 0 END) AS StreamingMovies,
    SUM(CASE WHEN Contract IS NULL OR TRIM(Contract) = '' THEN 1 ELSE 0 END) AS Contract,
    SUM(CASE WHEN PaperlessBilling IS NULL THEN 1 ELSE 0 END) AS PaperlessBilling,
    SUM(CASE WHEN PaymentMethod IS NULL OR TRIM(PaymentMethod) = '' THEN 1 ELSE 0 END) AS PaymentMethod,
    SUM(CASE WHEN MonthlyCharges IS NULL THEN 1 ELSE 0 END) AS MonthlyCharges,
    SUM(CASE WHEN TotalCharges IS NULL THEN 1 ELSE 0 END) AS TotalCharges,
    SUM(CASE WHEN Churn IS NULL THEN 1 ELSE 0 END) AS Churn
FROM [WA_Fn-UseC_-Telco-Customer-Churn];

--Checking for Duplicates
SELECT CustomerID, COUNT (*) AS DuplicatCount
FROM [WA_Fn-UseC_-Telco-Customer-Churn]
GROUP BY customerID
HAVING COUNT (*) >1;

--Explore Unique Values
SELECT DISTINCT gender
FROM [WA_Fn-UseC_-Telco-Customer-Churn];

SELECT DISTINCT Contract
FROM [WA_Fn-UseC_-Telco-Customer-Churn];

SELECT DISTINCT InternetService
FROM [WA_Fn-UseC_-Telco-Customer-Churn];

SELECT DISTINCT PaymentMethod
FROM [WA_Fn-UseC_-Telco-Customer-Churn];

SELECT DISTINCT Churn
FROM [WA_Fn-UseC_-Telco-Customer-Churn];

--Count the Unique Values
SELECT gender, COUNT (*) AS TotalCustomers
FROM [WA_Fn-UseC_-Telco-Customer-Churn]
GROUP BY gender;

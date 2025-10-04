--/
--***********************************************************************************
--******************************
--NAME: Credit Vs Debit Spending
--PURPOSE: Finding if there is more spending using credit or debit 
--MODIFICATION LOG:
--Ver Date Author Description
----- ---------- -----------
-------------------------------------------------------------------------------
--1.0 05/23/2022 JJAUSSI 1. Built this script for EC IT440
--RUNTIME:
--Xm Xs
--NOTES:
-- Need to find the purchases of credit and debit and determine which one is used more
--***********************************************************************************
--*******************************/
-- Q1: What spending is done using credit vs debit payments?
-- A1: Using the Viza_Costmo table and the Planet_express table, find how much debit is used to purchase vs credit

SELECT 
    Description,
    SUM(ISNULL(Credit, 0)) AS Total_Credit,
    SUM(ISNULL(Debit, 0)) AS Total_Debit
FROM dbo.FBS_Viza_Costmo
GROUP BY Description
ORDER BY 
    SUM(ISNULL(Credit, 0)) + SUM(ISNULL(Debit, 0)) DESC;

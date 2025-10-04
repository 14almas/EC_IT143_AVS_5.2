--/
--***********************************************************************************
--******************************
--NAME: Find Transactions
--PURPOSE: Find the member name that has the most transactions
--MODIFICATION LOG:
--Ver Date Author Description
----- ---------- -----------
-------------------------------------------------------------------------------
--1.0 05/23/2022 JJAUSSI 1. Built this script for EC IT440
--RUNTIME:
--Xm Xs
--NOTES:
-- A simple lookup in member_name column...
--***********************************************************************************
--*******************************/
-- Q1: Which family member spend the most transactions?
-- A1: Find the name used most in the Member_name column in the dbo.FBS_Viza_Costmo table


SELECT TOP 1 Members_Name,
             COUNT(*) AS Transaction_Count
FROM dbo.FBS_Viza_Costmo
GROUP BY Members_Name
ORDER BY COUNT(*) DESC;
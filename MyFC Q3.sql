--/
--***********************************************************************************
--******************************
--NAME: Player Salary
--PURPOSE: Finding the highest salary and team they are on
--MODIFICATION LOG:
--Ver Date Author Description
----- ---------- -----------
-------------------------------------------------------------------------------
--1.0 05/23/2022 JJAUSSI 1. Built this script for EC IT440
--RUNTIME:
--Xm Xs
--NOTES:
-- return the highest salary and include the team the are a part of...
--***********************************************************************************
--*******************************/
-- Q1: Which players have the highest month-to-date salary, and what teams do they belong to?
-- A1: tbl_teamavgSalary and use tbl_TeamDim

SELECT TOP 1 
    pd.pl_name AS Player_Name,
    pd.pl_team AS Team_Code,
    pf.mtd_salary AS Monthly_Salary
FROM dbo.tblPlayerFact pf
JOIN dbo.tblPlayerDim pd
    ON pf.pl_idf = pd.pl_idf
ORDER BY pf.mtd_salary DESC;
--/
--***********************************************************************************
--******************************
--NAME: Highest earning by date
--PURPOSE: Finding the highest earnings by date
--MODIFICATION LOG:
--Ver Date Author Description
----- ---------- -----------
-------------------------------------------------------------------------------
--1.0 05/23/2022 JJAUSSI 1. Built this script for EC IT440
--RUNTIME:
--Xm Xs
--NOTES:
-- return the highest earnings by the date of it.
--***********************************************************************************
--*******************************/
-- Q1: On which dates were the highest total salaries recorded across all players?
-- A1: Get highest earnings from the dbo.DateDim and the tblPlayerFact

SELECT 
    as_of_date,
    pl_id,
    mtd_salary
FROM dbo.tblPlayerFact pf
WHERE mtd_salary = (
    SELECT MAX(mtd_salary)
    FROM dbo.tblPlayerFact
    WHERE as_of_date = pf.as_of_date
)
ORDER BY as_of_date;
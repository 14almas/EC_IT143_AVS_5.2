--/
--***********************************************************************************
--******************************
--NAME: Team Salary
--PURPOSE: Finding the teams average salary
--MODIFICATION LOG:
--Ver Date Author Description
----- ---------- -----------
-------------------------------------------------------------------------------
--1.0 05/23/2022 JJAUSSI 1. Built this script for EC IT440
--RUNTIME:
--Xm Xs
--NOTES:
-- return the average salary and include the team...
--***********************************************************************************
--*******************************/
-- Q1: What is the average salary per team?
-- A1: get player salary and average the salary from the team, using the table I created tbl_TeamAvgSalary

SELECT 
    td.t_code AS Team_Code,
    AVG(pf.mtd_salary) AS Avg_Team_Salary
FROM dbo.tblPlayerFact pf
JOIN dbo.tblPlayerDim pd
    ON pf.pl_id = pd.pl_id
JOIN dbo.tblTeamDim td
    ON pd.t_id = td.t_id
GROUP BY td.t_code
ORDER BY Avg_Team_Salary DESC;
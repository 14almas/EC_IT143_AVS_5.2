--/
--***********************************************************************************
--******************************
--NAME: What are the full names of the members in the database
--PURPOSE: combine the first and last names in the tbl_FamilyFullNames table
--MODIFICATION LOG:
--Ver Date Author Description
----- ---------- -----------
-------------------------------------------------------------------------------
--1.0 05/23/2022 JJAUSSI 1. Built this script for EC IT440
--RUNTIME:
--Xm Xs
--NOTES:
-- combine the columns of first and last name...
--***********************************************************************************
--*******************************/
-- Q1: What are the full names of the members?
-- A1: in the tbl_Family_Data combine the  Frist_name, middle_name, and last_name columns

SELECT 
    Member_ID,
    Status,
    First_Name + 
    CASE 
        WHEN Middle_Name IS NOT NULL THEN ' ' + Middle_Name 
        ELSE '' 
    END + 
    ' ' + Last_Name AS Full_Name
FROM dbo.Family_Data;
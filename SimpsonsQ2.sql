--/
--***********************************************************************************
--******************************
--NAME: Member Job Position
--PURPOSE: Finding what job the members have
--MODIFICATION LOG:
--Ver Date Author Description
----- ---------- -----------
-------------------------------------------------------------------------------
--1.0 05/23/2022 JJAUSSI 1. Built this script for EC IT440
--RUNTIME:
--Xm Xs
--NOTES:
-- get the member names and job description with the status of their job.
--***********************************************************************************
--*******************************/
-- Q1: What job position and status of each member's work?
-- A1: Query the names of the members and display their job and status of their work.

SELECT 
    First_Name + ' ' + Middle_Name + ' ' + Last_Name AS Full_Name,
    Job_Title,
    Status
FROM dbo.Family_Data;
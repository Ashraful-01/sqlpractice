/*
INTERMEDIATE
Joins, Unions, Case Statements, Update/Deleting Data
Partition By, Data Types, Aliasing, Creating views,
Having vs Group By Statement
GetDate()
Primary Key vs Foreign Key

Advanced:
CTEs
SYS tables
Subqueries, Temp Tables, String Functions(TRIM,LTRIM,
RTRIM, Replace, Substring, Upper, Lower)
Regular Expression, Stored Procedures, Importing Data from File Types/ Sources
Exporting Data to Difference File Types
*/

INSERT INTO EmployeeSalary(EmployeeID,JobTitle,Salary) VALUES(
1010, NULL, 47000),
(NULL, 'Salseman', 4300);

 

SELECT * 
FROM SQLTutorial.dbo.EmployeeDemographics;


SELECT * 
FROM SQLTutorial.dbo.EmployeeSalary;

SELECT * 
FROM SQLTutorial.dbo.EmployeeDemographics
Inner Join SQLTutorial.dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;

SELECT * 
FROM SQLTutorial.dbo.EmployeeDemographics
Full Outer Join SQLTutorial.dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;

SELECT * 
FROM SQLTutorial.dbo.EmployeeDemographics
Left Outer Join SQLTutorial.dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;

SELECT * 
FROM SQLTutorial.dbo.EmployeeDemographics;

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
Right Outer Join SQLTutorial.dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName,JobTitle, Salary
FROM SQLTutorial.dbo.EmployeeDemographics
Inner Join SQLTutorial.dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName,JobTitle, Salary
FROM SQLTutorial.dbo.EmployeeDemographics
Left Outer Join SQLTutorial.dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName,JobTitle, Salary
FROM SQLTutorial.dbo.EmployeeDemographics
Right Outer Join SQLTutorial.dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
FULL Outer Join SQLTutorial.dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, Salary
FROM SQLTutorial.dbo.EmployeeDemographics
Inner Join SQLTutorial.dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE FirstName <> 'Ashraful'
ORDER BY Salary;

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, Salary
FROM SQLTutorial.dbo.EmployeeDemographics
Inner Join SQLTutorial.dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE FirstName <> 'Ashraful'
ORDER BY Salary DESC;

SELECT JobTitle,AVG(Salary)
FROM SQLTutorial.dbo.EmployeeDemographics
Inner Join SQLTutorial.dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
	WHERE JobTitle = 'Salesman'
	GROUP By JobTitle;
CREATE Table WareHouseEmployeeDemographics(
EmployeeID int,
FirstName varchar(50),
LastName varchar(50),
Age int,
Gerder varchar(50)
);
SELECT * 
FROM EmployeeDemographics
SELECT * 
FROM WareHouseEmployeeDemographics;

SELECT * 
FROM EmployeeDemographics
UNION
SELECT * 
FROM WareHouseEmployeeDemographics;

SELECT * 
FROM EmployeeDemographics
UNION ALL
SELECT * 
FROM WareHouseEmployeeDemographics;

INSERT INTO WareHouseEmployeeDemographics VALUES 
(1013, 'Darryl', 'Philbin', NULL, 'Male'),
(1050, 'Roy', 'Anderson', 31, 'Male'),
(1051, 'Hidetoshi', 'Hasagawa', 40, 'Male'),
(1052, 'Val', 'Johnson', 31, 'Female')


 /*
 Union union All
 Joins, Unions, Case Statements, Updating/Deleting Data, Partition By, 
 Data Types, Aliasing, Views, Having Clause, GetDate(), Primary vs Foreign Key
 */

 SELECT *
 FROM SQLTutorial.dbo.EmployeeDemographics 
 FULL Outer Join SQLTutorial.dbo.WareHouseEmployeeDemographics ON
 EmployeeDemographics.EmployeeID = WareHouseEmployeeDemographics.EmployeeID;

SELECT EmployeeID,FirstName, Age
FROM SQLTutorial.dbo.EmployeeDemographics
UNION
SELECT EmployeeID,JobTitle,Salary
FROM SQLTutorial.dbo.EmployeeSalary
ORDER BY EmployeeID;

SELECT EmployeeID,FirstName, Age
FROM SQLTutorial.dbo.EmployeeDemographics
UNION ALL
SELECT EmployeeID,JobTitle,Salary
FROM SQLTutorial.dbo.EmployeeSalary
ORDER BY EmployeeID;
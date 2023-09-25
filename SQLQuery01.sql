/*
GROUP BY 
ORDER BY
*/
--SELECT Gender, COUNT(Gender) AS CountGender
--FROM EmployeeDemographics
--WHERE Age > 31
--GROUP BY Gender;

--SELECT * 
--FROM EmployeeDemographics
--ORDER BY Age DESC, Gender DESC;

--SELECT * 
--FROM EmployeeDemographics
--ORDER BY 4 DESC,5 DESC;

--SELECT * 
--FROM EmployeeDemographics
--ORDER BY Age DESC;

--SELECT * 
--FROM EmployeeDemographics
--ORDER BY Age;

--SELECT * 
--FROM EmployeeDemographics
--ORDER BY Age ASC;

--SELECT Gender, COUNT(Gender)
--FROM EmployeeDemographics
--WHERE Age > 31
--GROUP BY Gender
--ORDER BY Gender ASC

SELECT * 
FROM SQLTutorial.dbo.EmployeeDemographics;
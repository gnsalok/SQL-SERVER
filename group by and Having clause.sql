USE Sample	

SELECT * FROM tblEmployee
SELECT * FROM tblDepartment

-- This ll demonstrate aggregate function and Group by clause and Having keyword

--AGGREGATE METHOD
SELECT SUM(SALARY) AS TOTAL_SALARY,
MAX(Salary) AS MaxSalary,
MIN(Salary) AS MinimunSalary,
COUNT(*) AS Total_Fields
FROM tblEmployee

-- GROUP BY CLAUSE
SELECT NAME,Gender,SUM(Salary)		-- YOU HAVE ATLEAST ONE AGGRE FUNCTION TO USE GROUP BY CLAUSE
FROM tblEmployee					-- ALL THE FIELDS IN SELECT SATAT. SHOULD BE THE PART OF GROUP BY CLAUSE
GROUP BY NAME,Gender


-- HAVING KEYWORD
SELECT NAME,Gender,SUM(Salary)	-- YOU CANNT USE WHERE CLAUSE WITH THE GROUP BY CLAUSE YOU HAVE TO USE HAVING FOR THAT
FROM tblEmployee					
GROUP BY NAME,Gender
HAVING MAX(Salary)>3000









USE Sample

SELECT * FROM tblEmployee

--find the second highest salary 
--BEST PRACTICE

SELECT * FROM  tblEmployee  as Maintable
where 2  = (select COUNT(*) FROM tblEmployee as Auxiliarytable
			where Auxiliarytable.Salary>=Maintable.Salary)  -- Its acheived by using corelated queries


-- OPTION ONE AND BEST ALSO 

SELECT MAX(salary) from   tblEmployee 
WHERE Salary < (SELECT MAX(Salary) from tblEmployee)

--find top 2 highest 
SELECT TOP 1 SALARY  FROM 
(SELECT DISTINCT TOP 2 Salary		-- THIS IS SUBQUERY HERE 
FROM tblEmployee 
ORDER BY Salary DESC)
RESULT 
ORDER BY SALARY ASC  --ASC IS BY DEFAULT



-- you can use having clause with group by not use where here
SELECT Gender , name , SUM(Salary)
FROM tblEmployee
GROUP BY Name, Gender
HAVING SUM(Salary)>4000


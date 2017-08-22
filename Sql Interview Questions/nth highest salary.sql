USE SAMPLE;

SELECT * FROM tblEmployee
SELECT * FROM tblDepartment

-- CO-RELATED QUERIES AND SUB-QUERIES

--SUB QUERIES
--(here both inner and outer are indendent)

SELECT NAME FROM tblEmployee
WHERE ID in  
(SELECT ID FROM tblEmployee 
WHERE  SALARY > 4000)




--nth highest 
use sample
SELECT * FROM tblEmployee

SELECT TOP 1 SALARY FROM
(SELECT DISTINCT TOP 2 SALARY FROM		--change here and got whatever you want
tblEmployee
ORDER BY SALARY DESC)
RESULT order by Salary





-- CO- RELATED QUERY(means there are relation bt inner and outer)

SELECT NAME FROM tblEmployee E1			--OUTER QUERY
WHERE 2=				--SECOND HIGHEST
(SELECT COUNT(E2.SALARY)				--INNER QUERY
FROM tblEmployee E2
WHERE E2.SALARY >E1.SALARY )







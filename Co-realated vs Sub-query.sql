USE SAMPLE;

SELECT * FROM tblEmployee
SELECT * FROM tblDepartment

--SUB-QUERY
--Its query inside the query and output of INNER query is the input for the OUTER query and inner and
--both are independent to each other..

SELECT Name,Salary FROM tblEmployee		--OUTER QUERY
Where DepartmentID IN
    (SELECT DeptId FROM tblDepartment		--INNER QUERY
			WHERE DeptName ='HR')




--CO-RELATED QUERY
--In this query the inner query referencing the outer query..(diff..)
--[FIND THE SECOND HIGHEST SALARY]
SELECT * FROM tblEmployee

SELECT Name,Salary from tblEmployee E1
WHERE 2=
	(SELECT COUNT(E2.Salary) FROM tblEmployee E2
		WHERE E1.Salary<E2.Salary)














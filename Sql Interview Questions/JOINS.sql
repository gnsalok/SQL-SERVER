
USE Sample

SELECT * FROM tblEmployee
SELECT * FROM tblDepartment


--TESTING THE JOINS

--INNER JOIN
SELECT * FROM tblEmployee
INNER JOIN tblDepartment
ON tblEmployee.DepartmentID=tblDepartment.ID




--LEFT JOIN   and right is vise versa of left 
SELECT * FROM tblEmployee
LEFT JOIN tblDepartment
ON tblEmployee.DepartmentID=tblDepartment.ID

--FULL OUTER JOIN INCLUDES ALL THE RECORDS FROM THE BOTH OF THE TABLE
SELECT * FROM tblEmployee
FULL OUTER JOIN tblDepartment
ON tblEmployee.DepartmentID=tblDepartment.ID




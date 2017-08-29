USE EmployeeDB;

SELECT * FROM Employees
SELECT * FROM tblDepartment


-- LIKE OPERATOR 
--it is used to compare similar value record in a table 
--It is basically used to WildCard character  (  % ,  _ )

--% : one or many char value
-- _ :  is used for only one char


SELECT * FROM Employees
WHERE LastName LIKE '%in%'


SELECT * FROM Employees
WHERE FirstName LIKE '_a%'
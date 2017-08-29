

Select * from tblEmployee
select * from tblDepartment

Create View vwEmployeeBYDepartmentID
as
Select tblEmployee.ID, Name,Salary, gender, DepartmentName 
from tblEmployee
join tblDepartment
on tblEmployee.DepartmentId= tblDepartment.ID 

--cause its a virtual talble made from two tables 

SELECT * from vwEmployeeBYDepartmentID



ALter View groupByDepartNameandID
as
Select  DepartmentName, count(tblEmployee.Id) as TotalEmployee
from tblEmployee
join tblDepartment
on tblEmployee.DepartmentId= tblDepartment.ID 
group by DepartmentName

select * from groupByDepartNameandID

SELECT * FROM tblEmployee

INSERT INTO tblEmployee VALUES (9, 'PIT','MALE')


UPDATE tblEmployee
SET NAME = 'Judy'
WHERE ID = 8;
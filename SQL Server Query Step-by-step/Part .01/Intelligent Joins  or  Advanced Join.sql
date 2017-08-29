Select * from  tblEmployee
Select * from  tblDepartment

--Intelligent Joins in SQL 
	Select Name, Gender, Salary,DepartmentName 
	from tblEmployee
	Left JOIN tblDepartment		
	ON tblEmployee.DepartmentID= tblDepartment.Id
	--Where tblEmployee.DepartmentID is Null    or	
	Where tblDepartment.id is  Null 

	Select Name, Gender, Salary,DepartmentName 
	from tblEmployee
	Right JOIN tblDepartment		
	ON tblEmployee.DepartmentID= tblDepartment.Id
	Where tblEmployee.DepartmentID is Null   
	

	Select Name, Gender, Salary,DepartmentName 
	from tblEmployee
	Full JOIN tblDepartment		
	ON tblEmployee.DepartmentID= tblDepartment.Id
	Where tblEmployee.DepartmentID is Null   
	or										--Here we get non matching row from teh left table and from the right table 
	 tblDepartment.ID is Null   
			

			--   --------------------------------------------------SELF JOIN-----------------------------

Select * from  tblEmployee

Alter table tblEmployee 
Add ManagerID int null

Select    E.Name as Employee , M.Name as Manager
From tblEmployee E
Left Join tblEmployee M
ON E.ManagerID = M.EmployeeID




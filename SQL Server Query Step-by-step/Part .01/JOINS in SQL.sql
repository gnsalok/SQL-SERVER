USE Sample;

Select * from tblTRoom 



Create table tblTRoom (

ID  int primary key  not null,
Name nvarchar(50) not null
)



Select * from  tblEmployees
Select * from  tblDepartment

Select top 1 *from  tblEmployees order by  Salary Desc 

Select Name, Gender,DepartmentName 
from tblEmployees
INNER JOIN tblDepartment		--Inner Join
ON tblEmployee.DepartmentID= tblDepartment.Id

Select Name, Gender, Salary,DepartmentName 
from tblEmployee
LEFT JOIN tblDepartment			--Left Join : 
ON tblEmployee.DepartmentID= tblDepartment.Id

Select Name, Gender, Salary,DepartmentName 
from tblEmployee
Right JOIN tblDepartment			--Right Join/Right outer Join : 
ON tblEmployee.DepartmentID= tblDepartment.Id


	Select Name, Gender, Salary,DepartmentName 
	from tblEmployee
	Full outer JOIN tblDepartment			 
	ON tblEmployee.DepartmentID= tblDepartment.Id

	Select Name, Gender, Salary,DepartmentName 
	from tblEmployee
	Cross JOIN tblDepartment				--Cross Join shouldbt have ON clause	 
	
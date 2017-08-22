
Use Sample;

SELECT * FROM tblEmployee

Select * from tblEmployee

sp_helptext   spGetEmployeeByGenderandDepartmentID 

spGetEmployeeByGenderandDepartmentID 'Female', 2

sp_helptext spGetEmployeeByGenderandDepartmentID


--Parameterized sotored procedure

Create Procedure spGetEmployeeByGenderandDepartmentID
@Gender nvarchar(50),			--two paramerters 
@DepartmentID int
with Encryption				--with text encryption 
as Begin 
Select Name, Gender , EmployeeID from tblEmployee where Gender=@Gender
and EmployeeID=@DepartmentID
End


Select EmployeeID , Name , salary 	
 from tblEmployee

--using stored procedure here
spEmployeeTable

Exec spEmployeeTable

Execute spEmployeeTable



 --Now we gonna to use stored procedure to execute the command 
 sp_helptext spEmployeeTable
		Alter Procedure spEmployeeTable with encryption
		as Begin
		 Select EmployeeID , Name , salary   	 
		 from tblEmployee   
		 End


 --Now we gonna to change the definition of stored procedure
		Alter Procedure spEmployeeTable
		as Begin
		 Select EmployeeID , Name , salary   	 
		 from tblEmployee   order by Name
		 End

--------------------------------------------------------------New Query

Select * from tblEmployee

Create procedure spShowMaleEmployee
@Gender nvarchar(50)
AS BEGIN
SELECT EmployeeID ,Name, City 
from tblEmployee
where Gender=@Gender
END



execute spShowMaleEmployee 'Female'
execute spShowMaleEmployee 'Male'

-------Test today

Alter PROCEDURE spGetEmployeeByGenderAndSalary
@Gender nvarchar(50)
As Begin
Select ID, Name as EmployeeName,Salary from tblEmployee
where Gender=@Gender and Salary>5000
End


Exec spGetEmployeeByGenderAndSalary 'Male'
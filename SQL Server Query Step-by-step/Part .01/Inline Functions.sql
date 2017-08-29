
Select * from tblDOBEmployee

Select * from tblEmployees



Select * from dbo.fn_EmployeesByGender('Male')  


Alter FUNCTION fn_EmployeesByGender(@Gender nvarchar(10))
RETURNS TABLE
AS

RETURN (Select EmployeeId, Name as EmployeeName,DOB as [Date of Birth], Gender as EmpGender
      from tblDOBEmployee
      where Gender = @Gender)			--it is one line def of the function

Go

SELECT DATENAME(MONTH,GETDATE())
SELECT GETDATE()
	  ------------------------Multi statement table value returned 


Select * from fn_MSTVF_GetEmployees()


Alter Function fn_MSTVF_GetEmployees()
Returns @Table Table (Id int, Name nvarchar(20), DOB Date)		--u can also give the structure of table 
as
Begin
 Insert into @Table
 Select   EmployeeId, Name, Cast(DOB as Date)
 From tblDOBEmployee
 
 Return 
End




------------------------------------------------New query by Geek

Select * from tblEmployee

Create Function fn_GetEmployeeNameAndCity()
Returns @Table Table (Id int , City nvarchar(50))
as begin
Insert into @Table 
Select EmployeeID,City from  tblEmployee 
Return
end


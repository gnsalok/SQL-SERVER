Select * from  tblEmployee


sp_helptext spCountByGender

sp_help spCountByGender

sp_depends spCountByGender

spCountByGenderandID  'Male',1

Alter Procedure spCountByGender
@Gender nvarchar(50),
@EmployeeCount int OUTPUT  --it is gonna to output parameter and u have to del\clare a var to store the value\
As Begin 
Select @EmployeeCount= Count(EmployeeID)  from tblEmployee where Gender =@Gender
End


Declare @TotalEmployee int 
Exec spCountByGender @Gender = 'Male',@TotalEmployee = @emp  output
Print @TotalEmployee
 


 -----------------------------------------------------------------------
Select * from  tblEmployee

Alter Procedure spGetNameByID
@Id int ,
@Name nvarchar (20) output
as Begin
Select @Name = Name from tblEmployee where EmployeeID=@Id
End

Declare @EmployeeName nvarchar(20)
Execute spGetNameByID   1, @EmployeeName Out
Print 'Employee Name is '+ @EmployeeName

----------------------Using Return statements


Alter Procedure spGetNameByID2
 
as Begin
Return (Select  Name from tblEmployee where EmployeeID=@Id)
End

Declare @EmpName nvarchar(20)
Execute @EmpName = spGetNameByID2 1
Print 'Employee Name is = '+ @EmpName 
use [_LearnSeries_SQL _Kud];
select * from tblEmployee

Alter Procedure spGetNameByID3
@Id int ,
@Name nvarchar (20) output
as Begin
Select @Name = Name from tblEmployee where ID=@Id
End

--Executes all at once

Declare @EmployeeName nvarchar(20)
Execute spGetNameByID3 2, @EmployeeName output
Print 'Name of employee is '+ @EmployeeName
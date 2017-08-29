use sample;
select * from tblEmployee

Declare @currentTime datetime
exec  selectEmployee 'John' ,3, @currentTime output
print @currentTime

ALTER PROCEDURE selectEmployee
@EmployeeName nvarchar(50),
@EmployeeId int,
@CurrentDateAndTime datetime output		--output parameter
AS 
BEGIN
Set @CurrentDateAndTime= Getdate()

Select * from tblEmployee where Name=@EmployeeName  and
Id=@EmployeeId

END

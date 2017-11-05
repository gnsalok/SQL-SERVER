use sample;
select * from tblEmployee

Declare @currentTime datetime
exec  selectEmployee 'John' ,1, @currentTime output
print @currentTime

ALTER PROCEDURE selectEmployee
@EmployeeName nvarchar(50),
@EmployeeId int,
@CurrentTime datetime output		--output parameter
AS 
BEGIN
Set @CurrentTime= Getdate()
Select * from tblEmployee where Name=@EmployeeName
AND
Id=@EmployeeId
END





--Ques :- WASp which takes Gender as input and returns total salary



CREATE PROCEDURE spGetSalaryByGender
@empGender nvarchar(50),
@empSalary int output
As
Begin
SET @empSalary = (select sum(salary) from tblEmployee
					where Gender=@empGender)
SELECT NAME,SALARY 
FROM tblEmployee 
WHERE Gender=@empGender

End 

--try to execute
Declare @empSalary int
Execute spGetSalaryByGender 'Male',@empSalary output
print @empSalary









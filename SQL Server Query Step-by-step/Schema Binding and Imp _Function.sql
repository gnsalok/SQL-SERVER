
Select * from tblEmployees

Drop table dbo.tblEmployee

Select dbo.fn_GetEmployeeNameById(2)




Alter Function fn_GetEmployeeNameById(@Id int)
Returns nvarchar(20)
With SchemaBinding		--Now you cannt drop the tblemployee in any case
as
Begin
 Return (Select Name from dbo.tblEmployees Where ID = @Id)
End



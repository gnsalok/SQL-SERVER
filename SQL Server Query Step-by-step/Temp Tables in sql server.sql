
Select * from #PersonDetails


Create Table #PersonDetails(Id int primary key not null, Name nvarchar(20) null )

Insert into #PersonDetails values(1, 'Alok')
Insert into #PersonDetails Values(2, 'John')
Insert into #PersonDetails Values(3, 'Todd')



--Query to retrieve the temp tables from local temp database
Select name from tempdb..sysobjects 
where name like '#PersonDetails%'



Select * from #PersonDetails
--Temp table using Stored procedure

EXECUTE  spcreateLocalTemptable 

Alter Procedure spCreateLocalTempTable
as
Begin
Create Table #PersonDetails(Id int, Name nvarchar(20))

Insert into #PersonDetails Values(1, 'Mike')
Insert into #PersonDetails Values(2, 'John')
Insert into #PersonDetails Values(3, 'Todd')

Select * from #PersonDetails
End



--------------------GLOBAL TEMP TEBLE -----------------------------

Create Table ##EmployeeDetails(Id int, Name nvarchar(20))


Insert into ##EmployeeDetails values(1, 'Alok')
Insert into ##EmployeeDetails Values(2, 'John')
Insert into ##EmployeeDetails Values(3, 'Todd')

Select * from ##EmployeeDetails

Select Name from tempdb..sysobjects
where name like '##employeeDetails%'
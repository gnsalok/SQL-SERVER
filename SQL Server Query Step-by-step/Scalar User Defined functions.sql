Select * from tblDOBEmployee

Select * from tblEmployee

Select EmployeeID,Name,[_LearnSeries_SQL _Kud].dbo.Age(DOB) as AgeEmployee from tblDOBEmployee

CREATE FUNCTION Age(@DOB Date)				--It Create a function with the data parametere
RETURNS INT  
AS  
BEGIN  
 DECLARE @Age INT  
 SET @Age = DATEDIFF(YEAR, @DOB, GETDATE()) - CASE WHEN (MONTH(@DOB) > MONTH(GETDATE()))
  OR 
 (MONTH(@DOB) = MONTH(GETDATE()) 
 AND  
 DAY(@DOB) > DAY(GETDATE())) THEN 1 ELSE 0 END  
 RETURN @Age  
END

Select dbo.Age( dbo.Age('10/08/1982'))

Select [_LearnSeries_SQL _Kud].dbo.Age('10/08/1982') As AgeEmployee

------------------------------------------


create function getonlydate()
returns datetime
as
begin
      return(select convert(datetime,convert(date,getdate())))
end
go

Select convert(datetime,convert(date,getdate()))

Select dbo.getonlydate()



Select * from tblDOBEmployee


Alter function getNamefromtableemployee()
returns nvarchar(50)
as
begin
      return( select Name from tblDOBEmployee where DOB = '1999-10-09' )
end
go

Select dbo.getNamefromtableemployee()
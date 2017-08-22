
--E:\_Alok's Workplace\_Alok's Practicals\SQL Server Practicals\SQL Series _Kudvenkut
USE LearnSeries_SQL;

Select * from  tblEmployee

Select * from  TblNameandID
 
Create Table TblNameandID
(
ID int not null primary key,
FisrtName nvarchar(50) null,
MiddName nvarchar(50) null,
LastName nvarchar(50) null 
)

Select ID , COALESCE(FirstName,MiddName,LastName) as Name from TblNameandID




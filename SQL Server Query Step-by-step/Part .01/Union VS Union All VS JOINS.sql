

Create Table tblEmployeeIndia
(
ID int not null primary key,
Name nvarchar(50) null,
Email nvarchar(50) null
)

Create Table tblEmployeeUK
(
ID int not null primary key,
Name nvarchar(50) null,
Email nvarchar(50) null
)

Select * from tblEmployeeIndia
Select * from tblEmployeeUK

--Union 
Select Name ,Email from tblEmployeeIndia
UNION 
Select Name ,Email from tblEmployeeUK


--Union ALL
Select  Name ,Email from tblEmployeeIndia
union all 
Select Name ,Email from tblEmployeeUK
order by Name

----Joins vs Union
--Union is combinations of two and more select statements means rows whereas,
--JOINS combines two or more coloums from the given table on the basis some conditions. 



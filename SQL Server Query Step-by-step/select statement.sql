
Select *from PersonTbl 

Select *from PersonTbl Where city <> 'London'	
Select *from PersonTbl Where Age in (20,21,27)	

Select *from PersonTbl Where City LIKE '%o%'-- Use of like operator 

Select *from PersonTbl Where Email LIKE '%@%'
Select *from PersonTbl Where Email LIKE '_@_'

Select *from PersonTbl Where Age Between 20 AND 27		-- Between



Select top 1 * from PersonTbl  order by Age desc --select top 1 most
 
 Select *from PersonTbl  order by age --used to order by

select * from GenderTbl 

Select *from PersonTbl Where Age in (25,27,20,21)


Alter Table PersonTbl 
Add City nvarchar(50)

select Distinct Name,City from PersonTbl


 
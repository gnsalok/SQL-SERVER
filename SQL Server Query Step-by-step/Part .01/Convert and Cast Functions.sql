Use [_LearnSeries_SQL _Kud];

Select * from tblDOBEmployee

Alter Table tblDOBEmployee
EmployeeID int not null

Alter Table tblDOBEmployee
Add ID  int  null 

ALTER TABLE tblDOBEmployee
DROP COLUMN ID

Select * from tblDOBEmployee
	 
Select EmployeeId, Name, DOB, CAST(DOB as nvarchar) as ConvertedDOB 
from tblDOBEmployee

Select EmployeeId, Name, DOB, Convert(nvarchar, DOB) as ConvertedDOB 
from tblDOBEmployee

SELECT CONVERT(VARCHAR(10),GETDATE(),103)		--Last parameter is style it is also optional

SELECT Cast (DOB as nvarchar )	as ConvertedDOB From tbldobemployee
Select * from  tblEmployee

-- Self Join Query

--Now we want to replace NULL Manager as NO MANAGER using ISNULL()

Select  ISNULL(null ,'Something NOT')
Select  ISNULL('Pragim Tech','Something NOT')   --when given value is not null (if not null, value )  then 'if not null'

-- Using COALESCE () functin
Select  COALESCE('Pro Solutions' ,'Something NOT')  --Its return non null first expression given multiple expresssion

Select  COALESCE(NULL ,'Something NOT')


--Using CASE statement 


--Select E.Name as Employee , M.Name as Manager, ISNULL(M.Name , 'NO Manager') as Manager


Select E.Name as Employee ,Case when M.Name is null then 'NO Manager' else M.Name END as Manager
From tblEmployee E
Left Join tblEmployee M

ON E.ManagerID=M.EmployeeID		-- This is self Join Cndition 


	
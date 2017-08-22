USE Sample;
Select * from  tblEmployee


CREATE TABLE tblEmployee
(
ID int primary key,
Name nvarchar(50),
Gender nvarchar(50),
City nvarchar(50)
)

Insert into tblEmployee values(1,'Tom', 'Male','London')
Insert into tblEmployee values(2,'Makk', 'Male','London')
Insert into tblEmployee values(3,'Marry', 'Female','UK')
Insert into tblEmployee values(4,'John', 'Male','London')
Insert into tblEmployee values(5,'Harry', 'Male','US')

ALTER TABLE tblEmployee
ADD DepartmentID int null

ALTER TABLE tblEmployee
Add Salary int null



Select count(*) from tblEmployee

Select SUM(salary) from tblEmployee
Select MIN (salary) from tblEmployee
Select MAX(salary) from tblEmployee
Select COUNT(salary) from tblEmployee
Select AVG (salary) from tblEmployee

Select City, SUM(salary) AS TotalSalry from tblEmployee 
GROUP BY CITY order by city  desc		--group by clause

Select City, Gender , SUM(salary) AS TotalSalary,COUNT (EmployeeID) as [Total Employees] from tblEmployee
where Gender='Male'				--Filter the where clause by to filter the row 
GROUP BY CITY ,Gender		--group by multiple coloums
Order by city

Select  Gender , SUM(salary) AS TotalSalay,COUNT (ID) as [Total Employees] from tblEmployee
GROUP BY Gender		--group by multiple coloums
Having  Gender='Male'			--Filter the rows
order by ID


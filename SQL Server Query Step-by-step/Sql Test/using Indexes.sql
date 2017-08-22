use [_LearnSeries_SQL _Kud];

select * from tblEmployee

DROP INDEX tblEmployee.IX_tblEmployee_Name

SP_HELPINDEX tblEmployee

create INDEX IX_tblEmployee_SALARY
ON tblEmployee(SALARY desc)	

select * from tblEmployee

-- using the index in sql 
SELECT *
FROM  tblEmployee WITH(INDEX(IX_tblEmployee_SALARY))
where Salary=2300

select count(id) from tblDepartment


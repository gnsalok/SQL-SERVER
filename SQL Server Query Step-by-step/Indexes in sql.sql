

Select * from tblEmployees

Alter table tblemployees
add salaray int null

Create Index IX_tblemployees_salary
on tblEmployees(salaray asc)

select ID, NAME , GENDER ,SALARAY AS Salary from tblEmployees where SALARAY >=4000 AND SALARAY <=7000

-- The index which creates above is help to find the data quicky cause salary is now arranged in asceding order
 sp_helpindex tblemployees
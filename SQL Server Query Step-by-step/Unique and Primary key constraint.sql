Select * from PersonTbl
select * from GenderTbl

--Insert into PersonTbl values(6,'adarsh','ad@.c',1)

Alter table PersonTbl
Add Constraint UQ_personTbl_Email unique (Email)

--Insert into PersonTbl values(7,'addy','ad@.c',1) u cnt do that
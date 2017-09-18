
Use Sample

SELECT * FROM tblEmployee
SELECT * FROM tblEmployeeAudit

CREATE TABLE tblEmployee
(
  Id int Primary Key,
  Name nvarchar(30),
  Salary int,
  Gender nvarchar(10),
  DepartmentId int
)

Insert into tblEmployee values (1,'John', 5000, 'Male', 3)
Insert into tblEmployee values (2,'Mike', 3400, 'Male', 2)
Insert into tblEmployee values (3,'Pam', 6000, 'Female', 1) 



CREATE TABLE tblEmployeeAudit
(
  Id int identity(1,1) primary key,
  AuditData nvarchar(1000)
)


--CREATING A TRIGGER

Create TRIGGER tr_tblEMployee_ForInsert
ON tblEmployee
FOR INSERT			--TABLE FOR SPECIFIC CONDITIONS ONLY
AS
BEGIN
SELECT * FROM inserted

 Declare @Id int
 Select @Id = Id from inserted
 
 insert into tblEmployeeAudit 
 values('New employee with Id  = ' + Cast(@Id as nvarchar(5)) + ' is added at ' + cast(Getdate() as nvarchar(20)))
END

Insert into tblEmployee values (7,'Tan', 2300, 'Female', 3)--IT ALSO MAINTAIN THE RECORD IN TBLEMP_AUDIT TABLE
Insert into tblEmployee values (8,'JOB', 3300, 'Male', 3)
Insert into tblEmployee values (9,'MIKE', 8300, 'Male', 2)

--LET CREATE A TRIGGER FOR DELETE A EMPLOYEE FROM TABLE

CREATE TRIGGER tr_tblEMployee_ForDelete
ON tblEmployee
FOR DELETE
AS
BEGIN
 Declare @Id int
 Select @Id = Id from deleted			--IT IS MAGICAL TABLE(DELETED) AND ONLY AVAILABLE CONTEXT OF TRIGER LIKE (inserted)
 
 insert into tblEmployeeAudit 
 values('An existing employee with Id  = ' + Cast(@Id as nvarchar(5)) + ' is deleted at ' + Cast(Getdate() as nvarchar(20)))
END



DELETE FROM tblEmployee  WHERE ID = 9

select * from tblGender
select * from tblPerson

Insert into tblPerson(ID, Name, Email,GenderID) Values (10, 'marry', 'mary@gmail.com',1)

Alter Table tblPerson
ADD Constraint DF_tblPerson_GenderID
Default 3 For GenderID
select * from tblGender
select * from tblPerson

--Insert into tblPerson(ID, Name, Email,GenderID) Values (12, 'pooja', 'pooja@gmail.com',1)

Alter Table tblPerson
ADD Constraint DF_tblPerson_GenderID
Default 3 For GenderID

Alter Table tblPerson
Add  phone int  NULL
constraint DF_tablePerson_phone Default 0 


Alter Table tblPerson
Drop constraint DF_tablePerson_phone

--Transaction in sql


--Transaction processing follows these steps:
--1. Begin a transaction.
--2. Process database commands.
--3. Check for errors. 
--   If errors occurred, 
--       rollback the transaction, 
--   else, 
--       commit the transaction





Select * from tblMailingAddress
Select * from tblPhysicalAddress

Create Table tblMailingAddress
(
   AddressId int NOT NULL primary key,
   EmployeeNumber int,
   HouseNumber nvarchar(50),
   StreetAddress nvarchar(50),
   City nvarchar(10),
   PostalCode nvarchar(50)
)

Insert into tblMailingAddress values (1, 101, '#10', 'King Street', 'Londoon', 'CR27DW') 

Create Table tblPhysicalAddress
(
 AddressId int NOT NULL primary key,
 EmployeeNumber int,
 HouseNumber nvarchar(50),
 StreetAddress nvarchar(50),
 City nvarchar(10),
 PostalCode nvarchar(50)
)

Insert into tblPhysicalAddress values (1, 101, '#10', 'King Street', 'Londoon', 'CR27DW')

--Lets write a stored proc to update the (correct) the city name to London

ALTER Procedure spUpdateAddress
as
Begin

 Begin Try

  Begin Transaction
   Update tblMailingAddress set City = 'LONDON' 
   where AddressId = 1 and EmployeeNumber = 101
   
   Update tblPhysicalAddress set City = 'LONDON London' 
   where AddressId = 1 and EmployeeNumber = 101
  Commit Transaction
  Print 'Transaction Committed'

 End Try

 Begin Catch
  Rollback Transaction
 End Catch
 Print 'Transaction Rolled back!!'
End

Exec spUpdateAddress
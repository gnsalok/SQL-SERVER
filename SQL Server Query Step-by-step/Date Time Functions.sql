
Select * from tblDateTime

CREATE TABLE [tblDateTime]
(
 [c_time] [time](7) NULL,
 [c_date] [date] NULL,
 [c_smalldatetime] [smalldatetime] NULL,
 [c_datetime] [datetime] NULL,
 [c_datetime2] [datetime2](7) NULL,
 [c_datetimeoffset] [datetimeoffset](7) NULL
)

INSERT INTO tblDateTime VALUES (GETDATE(),GETDATE(),GETDATE(),GETDATE(),GETDATE(),GETDATE())

Select Getdate()
Select SysUTCdateTime()
Select SYSDATETIMEOFFSET()
Select CURRENT_TIMESTAMP	


----------------------Some Useful function in DateTime -------------------------

Select ISDATE('PRAGIM') -- returns 0
Select ISDATE(Getdate()) -- returns 1
Select ISDATE('2012-08-31 21:02:04.167') -- returns 1

Select Month(Getdate()) -- returns Month

Select Day(Getdate()) -- returns Day

Select Year(Getdate()) -- returns Day


Select DATENAME(Day, '2012-09-30 12:43:46.837') -- Returns 30
Select DATENAME(WEEKDAY, '2012-09-30 12:43:46.837') -- Returns Sunday
Select DATENAME(MONTH, '2012-09-30 12:43:46.837') -- Returns September

Create Table tblDOBEmployee
(

Name nvarchar(50) null,
DOB date null	
)

Select * from tblDOBEmployee

Select Name, DOB,  (WEEKDAY,DOB) as [Day], 
            Month(DOB) as MonthNumber, 
            DateName(MONTH, DOB) as [MonthName],
            Year(DOB) as [Year] 
From  tblDOBEmployee	

Select DateName(month,getdate())  --2parameter requirs


Use [_LearnSeries_SQL _Kud];
Select * from tblDOBEmployee



Select DateName(month,getdate())  --2parameter requirs and returns nvarchar 
  
Select DatePart(WeekDay,getdate())  --2parameter requirs and returns interger

Select DateAdd(MONTH,2,getdate())  -- It returns today month + 2 month onward

Select DateAdd(day,10,getdate())  -- It returns today date + 10 days onward


Select DATEDIFF(MONTH, '11/30/2005','01/31/2006') -- returns 2


Select dbo.fnComputeAge('11/30/200	5')

CREATE FUNCTION fnComputeAge(@DOB DATETIME)
RETURNS NVARCHAR(50)
AS
BEGIN

DECLARE @tempdate DATETIME, @years INT, @months INT, @days INT
SELECT @tempdate = @DOB

SELECT @years = DATEDIFF(YEAR, @tempdate, GETDATE()) - CASE WHEN (MONTH(@DOB) > MONTH(GETDATE())) OR (MONTH(@DOB) = MONTH(GETDATE()) AND DAY(@DOB) > DAY(GETDATE())) THEN 1 ELSE 0 END
SELECT @tempdate = DATEADD(YEAR, @years, @tempdate)

SELECT @months = DATEDIFF(MONTH, @tempdate, GETDATE()) - CASE WHEN DAY(@DOB) > DAY(GETDATE()) THEN 1 ELSE 0 END
SELECT @tempdate = DATEADD(MONTH, @months, @tempdate)

SELECT @days = DATEDIFF(DAY, @tempdate, GETDATE())

DECLARE @Age NVARCHAR(50)
SET @Age = Cast(@years AS  NVARCHAR(4)) + ' Years ' + Cast(@months AS  NVARCHAR(2))+ ' Months ' +  Cast(@days AS  NVARCHAR(2))+ ' Days Old'
RETURN @Age

End






SELECT  dbo.CalculateAgeTillNow('09/10/1999')

ALTER FUNCTION CalculateAgeTillNow(@DOB Date)
RETURNS NVARCHAR(50)
AS 
BEGIN

DECLARE @AGE NVARCHAR(100) 

SET @AGE = DATEDIFF(YEAR, @DOB, GETDATE()) -
  CASE
     WHEN (
	  ((MONTH(@DOB)>MONTH(GETDATE())) OR
     (MONTH(@DOB)=MONTH(GETDATE()) AND (DAY(@DOB)>DAY(GETDATE()))
	 )))
	 then 1
	 ELSE 0
     END
	RETURN @Age + ' YEARS '
END

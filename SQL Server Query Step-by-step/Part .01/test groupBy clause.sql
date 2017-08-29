
USE [_LearnSeries_SQL _Kud];
SELECT * FROM SALES

CREATE TABLE Sales ( Country varchar(50), Region varchar(50), Sales int );

INSERT INTO sales VALUES (N'Canada', N'Alberta', 100);
INSERT INTO sales VALUES (N'Canada', N'Alberta', 500);
INSERT INTO sales VALUES (N'Canada', N'British Columbia', 200);
INSERT INTO sales VALUES (N'Canada', N'British Columbia', 300);
INSERT INTO sales VALUES (N'United States', N'Montana', 100);



SELECT Country, Region, SUM(sales) AS TotalSales
FROM Sales
GROUP BY Country, Region
HAVING SUM(SALES)>300
ORDER BY Country


SELECT  NAME,SALARY 
FROM tblEmployee
WHERE NAME LIKE 'T%'
ORDER BY DepartmentId

SELECT * FROM tblEmployee
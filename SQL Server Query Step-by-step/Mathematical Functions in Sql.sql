
Select ABS(-101.5) -- returns 101.5, without the - sign. 
Select ABS(102.5) -- returns 101.5, without the - sign. 

Select CEILING(15.2) -- Returns 16
Select CEILING(-15.2) -- Returns -15

Select FLOOR(15.2) -- Returns 15
Select FLOOR(-15.2) -- Returns -16

Select POWER(2,3) -- Returns 8

Select POWER(7,2) -- Returns 49

Select RAND(2) -- Always returns the same value
Select FLOOR(RAND() * 100)

Declare @Counter INT
Set @Counter = 1
While(@Counter <= 10)
Begin
 Print FLOOR(RAND() * 100)
 Set @Counter = @Counter + 1
End

Select SQUARE(9) -- Returns 81

Select SQRT(81) -- Returns 9
Select SQRT(222) -- Returns 14.something

Select ROUND(850.556, 2) -- Returns 850.560
Select ROUND(850.5588, 3) -- Returns 850.560

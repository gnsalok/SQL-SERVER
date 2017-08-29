Select * from tblEmployee

Select ASCII('A')
Select ASCII('ABC')		--it returns ascii of first char

Select reverse('Alok')

Select char(65)


Declare @start int 
set @start = 65
while (@start <=90)
Begin
Print char(@start)
Select @start += 1
End


Select '       This is sample'
Select LTRIM('        This is sample')		--It trims the left white space

Select 'This is sample         '
Select RTRIM('This is sample         ')		--It trims the right white space





Print 'This is sample'			--Both differ	

--Left (char , int)

Select Left('AlokTripathi', 4)

--Right (char , int)

Select Right('AlokTripathi', 8)

-- charindex('@','Expression',loc)  used to find the index of character

Select CharIndex('@','gnsalok@gmail.com')

--Subtring (char, start, lenght u want)

Select Substring('gnsalok@gmail.com', 8 +1,10)
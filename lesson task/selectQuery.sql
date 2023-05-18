Select * from Employees where ( TitleOfCourtesy='Ms.' or TitleOfCourtesy='Mrs.') and Country='UK'


SELECT TitleOfCourtesy,FirstName,LastName, YEAR(GETDATE())-YEAR(BirthDate) AS Age FROM Employees 
WHERE TitleOfCourtesy='Mr.' AND YEAR(GETDATE())-YEAR(BirthDate)>=60

SELECT Region,* FROM Employees WHERE Region IS NOT NULL


SELECT * FROM Employees ORDER BY LastName ASC


SELECT * FROM Employees ORDER BY LastName DESC


SELECT EmployeeID FirstName,LastName FROM Employees
Order by FirstName

select * into EmployeeTest from Employees

SELECT EmployeeID ,TitleOfCourtesy,FirstName,LastName,BirthDate,HireDate FROM Employees
Order by 2,6 desc

Select  TitleOfCourtesy,FirstName,LastName,BirthDate,YEAR(GETDATE())-YEAR(BirthDate) AS Age  from Employees
ORDER BY TitleOfCourtesy, Age  desc  

SELECT FirstName,LastName FROM  Employees
Where FirstName BETWEEN 'Janet' AND 'Robert'
ORDER BY FirstName

SELECT FirstName,LastName FROM  Employees 
Where FirstName >= 'Janet' and FirstName <='Robert'
order by FirstName


SELECT * FROM Employees
--where TitleOfCourtesy='Mr.' or TitleOfCourtesy='Dr.'
where TitleOfCourtesy IN ('MR.','DR.')

Select FirstName,LastName,YEAR(GETDATE())-YEAR(BirthDate) AS Age From Employees
Where YEAR(BirthDate) in (1950,1955,1960)

SELECT TOP 3 * FROM Employees

SELECT TOP(25) PERCENT FirstName,LastName,TitleOfCourtesy,YEAR(GETDATE())-YEAR(BirthDate) AS Age FROM Employees
ORDER BY Age DESC


SELECT FirstName,LastName FROM Employees WHERE FirstName='Michael'

SELECT FirstName,LastName FROM Employees WHERE FirstName like 'Michael'

SELECT FirstName,LastName FROM Employees WHERE FirstName like 'A%'

SELECT FirstName,LastName FROM Employees WHERE  left(FirstName,1) ='A'

SELECT FirstName,LastName FROM Employees WHERE LastName like '%N'

SELECT FirstName,LastName FROM Employees WHERE  right(LastName,1) ='N'

SELECT FirstName,LastName FROM Employees WHERE FirstName like '%E%'

SELECT FirstName,LastName FROM Employees WHERE FirstName like '[AL]%'

SELECT FirstName,LastName FROM Employees WHERE FirstName like '%[RT]%'

SELECT FirstName,LastName FROM Employees WHERE FirstName like '%[RT]%'


SELECT FirstName,LastName FROM  Employees
Where Left(FirstName,1) BETWEEN 'J' AND 'R'
ORDER BY FirstName

SELECT FirstName,LastName FROM Employees WHERE FirstName like '[J-R]%'
Order by 1

SELECT FirstName,LastName FROM Employees WHERE FirstName like '%A_E%'
Order by 1

SELECT FirstName,LastName FROM Employees WHERE FirstName not like 'M%'

SELECT FirstName,LastName FROM Employees WHERE FirstName  like '[^M]%'


SELECT FirstName,LastName FROM Employees WHERE FirstName  like 'LA%'
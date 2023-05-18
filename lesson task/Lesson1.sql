SELECT * FROM Employees


SELECT FirstName,LastName,Title,BirthDate FROM Employees

select [EmployeeID], [LastName], [FirstName], [Title], [TitleOfCourtesy], [BirthDate], [HireDate], [Address], [City], [Region], [PostalCode], [Country], [HomePhone], [Extension], [Photo], [Notes], [ReportsTo], [PhotoPath] from Employees

select 

[FirstName],
[LastName],
[Title],
[HireDate],
[HomePhone]
from Employees


SELECT TitleOfCourtesy as Unvan ,FirstName as Ad,LastName as Soyad,Title as Gorev FROM Employees


SELECT TitleOfCourtesy  Unvan ,FirstName  Ad,LastName  Soyad,Title  Gorev,BirthDate 'Doqum Tarihi' FROM Employees

SELECT 
	Unvan=TitleOfCourtesy,
	Ad=FirstName,
	Soyad=LastName,
	Gorev=Title,
	'Doqum Tarihi'=BirthDate,
	'Ise giris tarihi'=HireDate
	--[Ise giris tarihi]=HireDate
FROM Employees


SELECT DISTINCT City FROM Employees

Select distinct FirstName,City from Employees

SELECT  TitleOfCourtesy+' '+FirstName+' '+LastName AS Fehle FROM Employees

SELECT CAST(EmployeeId as nvarchar(50)) +' '+TitleOfCourtesy+' '+FirstName+' '+LastName AS Fehle FROM Employees

SELECT  Concat(EmployeeID,' ',TitleOfCourtesy,' ',FirstName,' ',LastName) AS Fehle FROM Employees
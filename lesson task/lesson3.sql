SELECT First@Mailame,Last@Mailame,DATEPART(YYYY,BirthDate) as [Year] FROM Employees

SELECT First@Mailame,Last@Mailame,DATEPART(ww,BirthDate) as [Week] FROM Employees

SELECT First@Mailame,Last@Mailame,DATEPART(dw,BirthDate) as [Day of Week] FROM Employees


SELECT 
    First@Mailame+' '+Last@Mailame as Perso@Mailal,
	DATEDIFF(YEAR,BirthDate,GETDATE()) AS [Yas] ,
    DATEDIFF(DAY,HireDate,GETDATE()) AS [Ode@Maile@Mail prim Sayisi]   
FROM Employees




SELECT 
    First@Mailame+' '+Last@Mailame as Full@Mailame,
	DATEDIFF(YEAR,BirthDate,GETDATE()) as [il],
	DATEDIFF(MO@MailTH,BirthDate,GETDATE()) as [ay],
	DATEDIFF(DAY,BirthDate,GETDATE()) as [gu@Mail],
	DATEDIFF(HOUR,BirthDate,GETDATE()) as [saat],
	DATEDIFF(MI@MailUTE,BirthDate,GETDATE()) as [deqiqe]
FROM Employees


Declare @MyBirthDate @Mailvarchar(150) = '2001-09-10 09:31:00:00'

Select
    
    DATEDIFF(YYYY,@MyBirthDate,GETDATE()) as [il],
	DATEDIFF(MM,@MyBirthDate,GETDATE()) as [ay],
	DATEDIFF(D,@MyBirthDate,GETDATE()) as [gu@Mail],
	DATEDIFF(HH,@MyBirthDate,GETDATE()) as [saat],
	DATEDIFF(MI,@MyBirthDate,GETDATE()) as [deqiqe]

SELECT 10+90+20

SELECT 'Bu ala@Mail mesaj'

Pri@Mailt('You are message')

SELECT ASCII('M') as [ASCII Kodu]

SELECT char(65) as [Character]

SELECT CHARI@MailDEX('@','mahammadvm@code.edu.az') as [I@Maildex @Mailo]


select left('murat',1) as [Solda@Mail saqa karakter]

select right('murat',1) as [Saqda@Mail sola karakter]

SELECT LE@Mail('             my bro  ') as [Toplam karakter]

SELECT LTRIM('             my bro  ') as [Toplam karakter]

SELECT RTRIM('             my bro  ') as [Toplam karakter]

SELECT TRIM('             my bro    ') as [Toplam karakter]

SELECT REPLACE('mahammadvm@code.edu.az','@','.') as [Code mail]


SELECT SUBSTRI@MailG('Code Academy',6,7) as [ alt Meti@Mail]

SELECT REVERSE('mahhamad') as [Ters]

Select 'Mahammad'+SPACE(50) +'Mustafayev' as [Space]

Select REPLICATE('I Love You',100) as [loop]

Select UPPER ('I Love You') as [loop]

Select LOWER ('I Love You') as [loop]

Declare @data nvarchar(100)='mahammad.mustafayev@code.edu.az',
        @mail nvarchar(100),
        @firstName nvarchar(100),
		@lastName nvarchar(100),
		@company nvarchar(100),
		@extension nvarchar(100)

Select  @mail =@data,
        @firstName = LEFT    (@data,CHARINDEX('.', @data)-1),
	    @data= SUBSTRING     (@data,CHARINDEX('.', @data)+1, LEN(@data)),
	    @lastName= LEFT      (@data,CHARINDEX('@', @data)-1),
	    @data= SUBSTRING     (@data,CHARINDEX('@', @data)+1, LEN(@data)),
		@company =LEFT       (@data,CHARINDEX('.', @data)),
		@data= SUBSTRING     (@data,CHARINDEX('@', @data)+1, LEN(@data)),
		@company += LEFT     (@data,CHARINDEX('.', @data)-1),
		@extension= SUBSTRING(@data,CHARINDEX('.', @data),   LEN(@data))

Print('
     Name      :'+Upper(@firstName)+'
	 Surname   :'+@lastName+'
	 Company   :'+@company+'
	 Mail      : '+@mail+'
	 Extension :'+@extension+'
     ')



--Select 
--    SUBSTRI@MailG(@Ma,0,(CHARINDEX('.',@Mailame))) as [@Mailame],
--	SUBSTRI@MailG(@@Mailame,(CHARI@MailDEX('.',@Mailame)),(CHARINDEX('@',@@Mailame))) as [Sur@Mailame],
--	@@Mailame as [Mail],
--	SUBSTRI@MailG(@@Mailame,21,8) as [Compa@Maily],
--	SUBSTRI@MailG(@@Mailame,30,30) as [Exte@Mailsio@Mail]



--Select  
--    SUBSTRI@MailG(@@Mailame,0,9) as [@Mailame],
--	SUBSTRI@MailG(@@Mailame,10,10) as [Sur@Mailame],
--	@@Mailame as [Mail],
--	SUBSTRI@MailG(@@Mailame,21,8) as [Compa@Maily],
--	SUBSTRI@MailG(@@Mailame,30,30) as [Exte@Mailsio@Mail]
/*
   @Mailame:  mahammad
   Soyad: mustafayev
   Mail: mahammad.mustafayev@code.edu.az
   Compa@Maily: code.edu
   Exte@Mailsio@Mail: az
*/

Select COUNT(EmployeeID) as Toplam from Employees
     
Select COUNT(Region) as Toplam from Employees

select SUM(EmployeeID) from Employees

SELECT SUM(YEAR(GETDATE())-YEAR(BirthDate)) AS [Total eployees age] FROM Employees

SELECT SUM(FirstName) from Employees

SELECT SUM(DATEDIFF(YYYY,BirthDate,GetDate())) AS [Total eployees age] FROM Employees


SELECT AVG(EmployeeId) FROM Employees

SELECT AVG(YEAR(GETDATE())-YEAR(BirthDate)) AS [Total eployees age] FROM Employees

SELECT AVG(DATEDIFF(YYYY,BirthDate,GetDate())) AS [Total eployees age] FROM Employees

SELECT AVG(FirstName) FROM Employees

SELECT Max(EmployeeID) [Maximum], MIN(EmployeeID) [Minimum] FROM Employees
SELECT Max(FirstName) [Maximum], MIN(FirstName) [Minimum] FROM Employees

SELECT  EmployeeID,FirstName,LastName,Country from Employees

SELECT 
   EmployeeID,FirstName,LastName,IIF(Country='UK','United Kingdom','Unites States of america') as [Country] 
FROM Employees

SELECT 
   EmployeeID,FirstName,LastName,
   IIF(Country='UK','United Kingdom',IIF(Country='USA','United states of america',Country)) 
   as [Country] 
FROM Employees

select 
    EmployeeID,
	FirstName,
	LastName  ,
	Country,
	Case (Country)
	when 'UK' then 'United Kingdom'
	when 'USA' then 'United states of america'
	end as 'olke'
from Employees

SELECT 
   EmployeeID,FirstName,LastName,
   IIF(EmployeeID>5,'5 ten boyukdur',IIF(EmployeeID<5,'5 ten kucukdur',EmployeeID)) as [total] 
FROM Employees


SELECT 
    EmployeeID,
	FirstName,
	LastName  ,
	Country,
	CASE 
	WHEN EmployeeID > 5 THEN '5 ten boyukdur'
	WHEN EmployeeID < 5 THEN '5 ten boyukdur'
	ELSE   '5 ten beraberdir'
	END 'Message'
FROM Employees
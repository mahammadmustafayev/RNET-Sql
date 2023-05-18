Use RNET102

Create Table Students(
 Id int primary key identity,
 [Name] nvarchar(150) not null,
 Surname nvarchar(250) default 'XXX',
 Age int Check(Age>18),
 AvgPoint float

)

Insert  INTO  Students ([Name],Surname,Age,AvgPoint) 
VALUES
('Valeh','Amirbeyov',19,77.4),
('Kenan','Bayramli',28,81.2)


Insert  INTO  Students ([Name],Surname,Age,AvgPoint) 
VALUES
('Efqan','Melikov',22,12.5),
('Mutalib','Gozelov',25,53.7)


SELECT * FROM Students

SELECT * FROM Students WHERE AvgPoint>51

SELECT * FROM Students WHERE AvgPoint>51 and AvgPoint<90
select Count(*) from  Categories C
Select COUNT(*) from Products P
	
SELECT C.CategoryName,P.ProductName FROM Categories  C
        INNER JOIN Products P
		ON C.CategoryID=P.CategoryID


SELECT C.CategoryName,P.ProductName FROM Categories  C
        LEFT JOIN Products P
		ON C.CategoryID=P.CategoryID

SELECT E.FirstName +' '+ E.LastName as [Isci] ,Em.FirstName +' '+ Em.LastName as [Mudur] FROM Employees  E
        left JOIN Employees Em
		ON E.ReportsTo=Em.EmployeeID
		Order by 2

SELECT E.FirstName +' '+ E.LastName as [Isci] ,Em.FirstName +' '+ Em.LastName as [Mudur] FROM Employees  E
right JOIN Employees Em
ON E.ReportsTo=Em.EmployeeID
Order by 2

SELECT E.FirstName +' '+ E.LastName as [Isci] ,
       Em.FirstName +' '+ Em.LastName as [Mudur] 
FROM Employees  E
	   right JOIN Employees Em
	   ON E.EmployeeID=Em.ReportsTo
	   Order by 2


SELECT E.FirstName +' '+ E.LastName as [Isci] ,Em.FirstName +' '+ Em.LastName as [Mudur] FROM Employees  E
full outer JOIN Employees Em
ON E.ReportsTo=Em.EmployeeID
Order by 2



SELECT C.CategoryName,P.ProductName from Categories C 
       full  join Products P
	   On c.CategoryID=P.CategoryID


SELECT C.CategoryName,P.ProductName from Categories C 
       cross  join Products P


Select ProductID,ProductName,UnitPrice,UnitsInStock,CategoryName,SupplierID 
       from Products P 
	   join Categories C
	   on P.CategoryID=C.CategoryID
	   join Suppliers S
	   on P.SupplierID=S.SupplierID


select ProductName
       ,UnitPrice 
from Products
     where (select AVG(UnitPrice) from Products ) < Products.UnitPrice
      order by 2

select * from Products

 select ProductName,UnitsOnOrder,UnitsInStock from Products   
      
select * from Products where ProductID not in (select distinct ProductID from [Order Details]) 



select distinct ShipVia,(select CompanyName from Shippers where ShipperID=Orders.ShipVia) as CompanyName, Count(*)  AS adet  from Orders

Group by ShipVia



select FirstName,LastName from Employees E
where Exists(select EmployeeID from Orders O where O.EmployeeID=e.EmployeeID)


select NEWID() as ProductId,ProductName,UnitPrice,UnitsInStock into Uruns from Products


select * from Uruns



select ROW_NUMBER() over (Order by ProductName) as [Index]
		,ProductId
		,ProductName
		,UnitPrice
		,UnitsInStock from Uruns


select ROW_NUMBER() over (PARTITION BY ContactTitle order by ContactTitle ) as [Index],
		ContactTitle from Customers

select Rank() over ( order by ContactTitle ) as [Index],
		ContactTitle from Customers

select distinct Rank() over ( order by ContactTitle ) as [Index],
ContactTitle from Customers

select Dense_Rank() over ( order by ContactTitle ) as [Index],
		ContactTitle from Customers

select distinct Dense_Rank() over ( order by ContactTitle ) as [Index],
		ContactTitle from Customers


select * from (select ROW_NUMBER() over ( order by CustomerID ) as [Index],
         CompanyName,
		ContactTitle,
		ContactName,
		City from Customers) as tbl
		where tbl.[Index] between 20 and 50


select  ShipVia,Count(*)  AS Adet  from Orders
Group by ShipVia




select * from (select  ShipVia,Count(*)  AS Adet  from Orders
Group by ShipVia) as tbl
PIVOT (
   Sum(Adet)
   For ShipVia in ([1],[2],[3])  
) as pvt

select  CategoryID,Count(*)  AS Adet  from Products
Group by CategoryID



insert into Categories (CategoryName) values
('Fashion'),
('Technology'),
('Health and Fitness'),
('Food and Cooking'),
('Travel and Adventure'),
('Sports and Recreation'),
('Home and Decor'),
('Beauty and Skincare'),
('Art and Design'),
('Music and Entertainment'),
('Books and Literature'),
('Education and Learning'),
('Automotive'),
('Finance and Investment'),
('Business and Entrepreneurship'),
('Photography'),
('Gaming'),
('Outdoor and Nature'),
('Parenting and Family'),
('Science and Technology'),
('Wellness and Self-care'),
('DIY and Crafts'),
('Pets and Animals'),
('Movies and TV Shows'),
('Gardening and Landscaping'),
('Mental Health and Wellbeing'),
('Social Media and Influencers'),
('Fitness and Exercise'),
('Fashion Accessories'),
('Home Improvement'),
('Cooking Recipes'),
('Health and Nutrition'),
('Adventure Travel'),
('Water Sports'),
('Sustainable Living'),
('Makeup and Cosmetics'),
('Fine Art'),
('Classical Music'),
('Fiction Books'),
('Language Learning'),
('Luxury Cars'),
('Personal Finance'),
('Small Business Tips'),
('Portrait Photography'),
('Console Gaming'),
('Hiking and Trekking'),
('Pregnancy and Childbirth'),
('Space and Astronomy'),
('Meditation and Mindfulness'),
('Handmade Crafts'),
('Dog Care and Training'),
('Film Reviews'),
('Organic Gardening'),
('Yoga and Pilates'),
('Fashion Trends'),
('Smart Home Technology'),
('Healthy Recipes'),
('Adventure Sports'),
('Green Living'),
('Skincare Products'),
('Contemporary Art'),
('Pop Music'),
('Non-fiction Books'),
('Online Learning Platforms'),
('Electric Cars'),
('Stock Market Analysis'),
('Startup Advice'),
('Landscape Photography'),
('PC Gaming'),
('Camping and Survival Skills'),
('Parenting Advice'),
('Psychology and Behavior'),
('Influencer Marketing'),
('Bodybuilding and Weightlifting'),
('Sustainable Fashion'),
('Interior Design Inspiration'),
('Culinary Arts'),
('Holistic Health'),
('Wildlife Photography'),
('Cat Care and Training'),
('Movie Recommendations'),
('Home Gardening'),
('Dance and Choreography'),
('Personal Development'),
('Eco-friendly Living'),
('Fashion Styling'),
('Virtual Reality Technology'),
('Healthy Dessert Recipes'),
('Extreme Sports'),
('Green Energy Solutions'),
('Anti-aging Skincare'),
('Street Art'),
('Jazz Music'),
('Travel Guides'),
('Sustainable Architecture'),
('Meditation Retreats'),
('Vintage Fashion'),
('Smart Gadgets'),
('Art History'),
('Historical Fiction Books')


 











	

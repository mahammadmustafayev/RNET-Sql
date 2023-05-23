select * from Products

select
C.CategoryName
,sum(Od.Quantity * od.UnitPrice) as 'Total Price'
,count(od.Quantity) as 'Quantity'  from Categories C
       inner join Products P
	   on c.CategoryID=p.CategoryID
	   inner join [Order Details] Od
	   on p.ProductID=od.ProductID
	   Group by c.CategoryName


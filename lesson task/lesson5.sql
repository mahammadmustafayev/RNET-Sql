SELECT * FROM Products
SELECT * FROM Categories
SELECT * FROM Customers
SELECT * FROM Employees
SELECT * FROM Orders

-- Bir siparişin hangi çalışan tarafından hangi müşteriye hangi kategorideki üründen hangi fiyattan kaç adet satıldığını listeleyiniz.
-- Çalışanın adı, soyadı, ünvanı, görevi, işe başlama tarihi
-- Müşterinin firma adını, temsilcisini ve telefonunu
-- Ürünün adını, stok miktarını, birim fiyatını
-- Siparişin adetini ve satış fiyatını
-- Kategori adını

SELECT dbo.customers.companyname,
       dbo.employees.firstname,
       dbo.orders.shipname,
       dbo.shippers.companyname AS Expr1,
       dbo.customers.contactname,
       dbo.products.productname,
       dbo.categories.categoryname,
       dbo.[order details].unitprice,
       dbo.products.unitprice   AS Expr2,
       dbo.products.unitsinstock
FROM   dbo.categories
       INNER JOIN dbo.products
               ON dbo.categories.categoryid = dbo.products.categoryid
       INNER JOIN dbo.[order details]
               ON dbo.products.productid = dbo.[order details].productid
       INNER JOIN dbo.employees
                  INNER JOIN dbo.orders
                          ON dbo.employees.employeeid = dbo.orders.employeeid
                  INNER JOIN dbo.shippers
                          ON dbo.orders.shipvia = dbo.shippers.shipperid
                  INNER JOIN dbo.customers
                          ON dbo.orders.customerid = dbo.customers.customerid
               ON dbo.[order details].orderid = dbo.orders.orderid
GROUP  BY dbo.customers.companyname,
          dbo.employees.firstname,
          dbo.orders.shipname,
          dbo.shippers.companyname,
          dbo.customers.contactname,
          dbo.products.productname,
          dbo.categories.categoryname,
          dbo.[order details].unitprice,
          dbo.products.unitprice,
          dbo.products.unitsinstock 




create view SatisRaporlari
AS
SELECT dbo.customers.companyname,
       dbo.employees.firstname,
       dbo.orders.shipname,
       dbo.shippers.companyname AS Expr1,
       dbo.customers.contactname,
       dbo.products.productname,
       dbo.categories.categoryname,
       dbo.[order details].unitprice,
       dbo.products.unitprice   AS Expr2,
       dbo.products.unitsinstock
FROM   dbo.categories
       INNER JOIN dbo.products
               ON dbo.categories.categoryid = dbo.products.categoryid
       INNER JOIN dbo.[order details]
               ON dbo.products.productid = dbo.[order details].productid
       INNER JOIN dbo.employees
                  INNER JOIN dbo.orders
                          ON dbo.employees.employeeid = dbo.orders.employeeid
                  INNER JOIN dbo.shippers
                          ON dbo.orders.shipvia = dbo.shippers.shipperid
                  INNER JOIN dbo.customers
                          ON dbo.orders.customerid = dbo.customers.customerid
               ON dbo.[order details].orderid = dbo.orders.orderid
GROUP  BY dbo.customers.companyname,
          dbo.employees.firstname,
          dbo.orders.shipname,
          dbo.shippers.companyname,
          dbo.customers.contactname,
          dbo.products.productname,
          dbo.categories.categoryname,
          dbo.[order details].unitprice,
          dbo.products.unitprice,
          dbo.products.unitsinstock 

select * from SatisRaporlari

create view Kategoriler AS
select * from Categories






alter view Kategoriler AS
select CategoryID,CategoryName from Categories

alter view Kategoriler AS
select CategoryID,CategoryName ,Description from Categories
where Description is not null

update Kategoriler set Description = 'View aciklama' where CategoryID=1

insert into Kategoriler (CategoryName,Description)
Values ('New ','Description')

delete from Kategoriler where CategoryID=21

select * from Kategoriler

alter view StudentLists  AS 
select EmployeeID AS StudentId,FirstName,LAStName,City AS Branch from Employees

alter view StudentLists  AS 
select EmployeeID AS StudentId,FirstName,LAStName,City AS Branch from Employees
where City='London'

ALTER VIEW StudentLists  

AS
SELECT EmployeeID AS StudentId,FirstName,LAStName,City AS Branch from Employees
WHERE City='London'
WITH CHECK OPTION

ALTER VIEW StudentLists  
WITH ENCRYPTION
AS
SELECT EmployeeID AS StudentId,FirstName,LAStName,City AS Branch from Employees
WHERE City='London'
WITH CHECK OPTION

SELECT * FROM StudentLists
-- LONDON

INSERT INTO   StudentLists VALUES ('Mehemmed','Mustafayev','London')


alter view Kategoris
with schemabinding
as
SELECT CategoryID,CategoryName,Description from dbo.Categories

SELECT * FROM Kategoris
Create function CalculateAge(@birthDate datetime)
RETURNS int
BEGIN
      
	  return DATEDIFF(YEAR,@birthDate,GETDate())
END



select FirstName,LastName,dbo.CalculateAge(BirthDate) as Age  from Employees


Create function PersonelBilgisi()
returns table
return select * from Employees


create function SearchFirstNameLetter(@letter nvarchar)
returns table
return Select FirstName,LastName from Employees where FirstName like @letter+'%'

SELECT * FROM SearchFirstNameLetter('M')

CREATE PROCEDURE Sp_category
AS
  BEGIN
      SELECT productname,
             categoryname,
             unitprice
      FROM   categories C
             JOIN products P
               ON c.categoryid = P.categoryid
  END 

execute Sp_category

CREATE PROCEDURE Sp_ForCategoryId
AS
  BEGIN
       SELECT 
             categoryname,
	         productname,
             unitprice
      FROM   categories C
             JOIN products P
               ON c.categoryid = P.categoryid
			   ORDER BY c.CategoryID
  END 

 execute Sp_ForCategoryId


 create PROC sp_ProductsByCategory
 @categoryId int
 as
  select CategoryID,ProductID,ProductName,UnitPrice,UnitsInStock from Products where CategoryID= @categoryId

  exec sp_ProductsByCategory 1


  select * from Employees where FirstName='Nancy' and LastName='Davolio'


 create PROC sp_GetEmployeeForName
 @name nvarchar(50) ,
 @surname nvarchar(50)
 as

select FirstName,LastName,Address,City,Region,PostalCode,Country from Employees where FirstName = @name and LastName= @surname

exec sp_GetEmployeeForName 'Nancy' , 'Davolio'
exec sp_GetEmployeeForName @surname= 'Davolio', @name= 'Nancy'


select * from Customers

create proc sp_InsertCustomers
@customerId nchar(10),
@companyName nvarchar(40),
@contactName nvarchar(30),
@contactTitle nvarchar(30),
@address nvarchar(60),
@city nvarchar(15),
@region nvarchar(100),
@postalCode nvarchar(100),
@country nvarchar(100),
@phone nvarchar(100),
@fax nvarchar(100)
as
insert into Customers
(CustomerID,ContactName,ContactTitle,Address,City,Region,PostalCode,Country,Phone,Fax)

Values ('mhmmd','MahammadMMC','Mahammad','Owner','28 may','Baku','Aze','123','Azerbaijan','9999','3234')




select * from Categories

CREATE PROC Sp_categorydescription @categoryName        NVARCHAR(15),
                                   @categoryDescription NVARCHAR(max)
AS
  BEGIN
      IF EXISTS (SELECT *
                 FROM   categories
                 WHERE  categoryname = @categoryName)
        BEGIN
            UPDATE categories
            SET    description = @categoryDescription
            WHERE  categoryname = @categoryName
        END
      ELSE
        BEGIN
            INSERT INTO categories
                        (categoryname,
                         description)
            VALUES     (@categoryName,
                        @categoryDescription)
        END
  END 



exec sp_categoryDescription 'sq','salam'

select * from Categories



SELECT ProductName,UnitsInStock,UnitPrice,CategoryName as [CategoryId] FROM Products P JOIN Categories C ON P.CategoryID=C.CategoryID

SELECT ProductName,UnitsInStock,UnitPrice,CategoryName as [CategoryId] FROM Products P 
JOIN Categories C 
ON P.CategoryID=C.CategoryID
where CategoryName='Beverages'

insert into Products(ProductName,UnitsInStock,UnitPrice,CategoryID)
values('Qwerty',15,20.00)


create proc sp_AddProductCategory
@productName nvarchar(40),
@stockCount smallint,
@price money,
@categoryName nvarchar(15)
as
begin
    declare @cId int
    if exists (select * from Categories where CategoryName=@categoryName)
	  begin
	    select @cId = CategoryID from Categories  where CategoryName=@categoryName
		set @cId
		--insert into Products(ProductName,UnitsInStock,UnitPrice,CategoryID)
  --      values(@productName,@price,@stockCount,@cId)
	  end
	else 
	 begin 
	    insert into Categories(CategoryName)
        values(@categoryName)
	 end
	 insert into Products(ProductName,UnitsInStock,UnitPrice,CategoryID)
        values(@productName,@price,@stockCount,@cId)
end
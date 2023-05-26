-- ================================================
-- Template generated from Template Explorer using:
-- Create Trigger (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- See additional Create Trigger templates for more
-- examples of different Trigger statements.
--
-- This block of comments will not be included in
-- the definition of the function.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,Kategoriler ekleme yapilacaq sonra>
-- =============================================
CREATE TRIGGER dbo.ListOfCategory 
   ON  Categories 
   AFTER INSERT
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	select * from Categories 
	SET NOCOUNT ON;

    -- Insert statements for trigger here

END
GO


insert into Categories (CategoryName,Description) values('Name','Desc')




Alter TRIGGER UpdateStock
ON  [Order Details]
AFTER INSERT
AS
BEGIN

    Declare @productId int, @quantity smallint
    SELECT @productId=ProductId,@quantity=Quantity FROM INSERTED

	--UPDATE Products SET UnitsInStock = UnitsInStock- (SELECT UnitsInStock FROM INSERTED)
	--where ProductID = (SELECT ProductID FROM INSERTED)

	UPDATE Products SET UnitsInStock = UnitsInStock- @quantity
	where ProductID = @productId

END


SELECT * FROM [Order Details] WHERE OrderID=10248
SELECT * FROM Products WHERE ProductID=77

INSERT INTO [Order Details]
(
  OrderID,
  ProductID,
  UnitPrice,
  Quantity,
  Discount
) values(10248,77,14.00,2,0)

CREATE TRIGGER DeleteStock
ON [Order Details]
AFTER DELETE
AS
BEGIN
    Declare @productId int, @quantity smallint
    SELECT @productId=ProductId,@quantity=Quantity FROM deleted

	--UPDATE Products SET UnitsInStock = UnitsInStock- (SELECT UnitsInStock FROM INSERTED)
	--where ProductID = (SELECT ProductID FROM INSERTED)

	UPDATE Products SET UnitsInStock = UnitsInStock+ @quantity
	where ProductID = @productId

END


    delete from [Order Details] where OrderID=10248
	delete from [Order Details] where OrderID=10248 and ProductID=77



--insteadof trigger

create trigger categorylistesi
on Categories
instead of insert
as 
begin
   select * from Categories
end


insert into Categories(CategoryName,Description) values('Dont','This isnot desc')


select * from Employees

delete from Employees where EmployeeID=12


alter trigger DeleteEmployee
on Employees
instead of delete
as 
begin
    Update Employees set [Status] =1 where EmployeeID = (Select EmployeeID from deleted)
end


delete from Employees where EmployeeID=12


alter table Employees
 
add  [Status] bit default 0 with values


alter trigger ShipperControl
on Shippers
for insert,delete,update
as
begin 
     declare @control nvarchar(40)
  IF EXISTS (SELECT * FROM inserted)
    BEGIN
      IF EXISTS (SELECT * FROM deleted)
    BEGIN 
      SELECT @control = 'UPDATE edir'
    END ELSE
    BEGIN
      SELECT @control = 'INSERT edir '
    END
   END ELSE 
   BEGIN
	   SELECT @control = 'DELETE edir'
	END 
 PRINT @control
end




insert into Shippers(CompanyName,Phone) values('AmirbekovMMC','*9999') 



alter trigger FormatShipperPhone
on Shippers
instead of insert
as
begin
    declare @companyName nvarchar(40),
	        @phoneNumber nvarchar(24),
			@newphone  nvarchar(40)
    Select @companyName=CompanyName , @phoneNumber=Phone from inserted
	set @newphone =CONCAT('(',LEFT(@phoneNumber,3),') ',SUBSTRING(@phoneNumber,4,3),'-',RIGHT(@phoneNumber,4))
    insert into Shippers(CompanyName,Phone) values(@companyName, @newphone); 
end


delete from Shippers where ShipperID=5

select * from Shippers

select LEFT(Phone,3) from Shippers

select SUBSTRING(Phone,6,4) from Shippers

select SUBSTRING(Phone,11,14) from Shippers

select RIGHT(Phone,9) from Shippers

insert into Shippers(CompanyName,Phone) Values('sa','5035559731')


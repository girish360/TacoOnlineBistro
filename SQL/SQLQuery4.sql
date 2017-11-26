USE Taco
GO
--Procedures for table Users
CREATE PROCEDURE dbo.Users_Create
(
	@UserId uniqueidentifier,
	@UserName nvarchar(50),
	@PassWord nvarchar(50),
	@FirstName nvarchar(50),
	@LastName nvarchar(50),
	@Email nvarchar(50),
	@Phone nvarchar(50)
)
AS
BEGIN
INSERT INTO Users (
	UserId,
	UserName,
	PassWord,
	FirstName,
	LastName,
	Email,
	Phone)
VALUES(
@UserId,
@UserName,
@PassWord,
@FirstName,
@LastName,
@Email,
@Phone)

SELECT
UserId = @UserId,
UserName = @UserName,
PassWord = @PassWord,
FirstName = @FirstName,
LastName = @LastName,
Email = @Email,
Phone = @Phone
FROM Users
WHERE UserId = @UserId
END
--test procedure
EXECUTE dbo.Users_Create
@UserId = '3DBCBB61-1CA5-474F-9AAC-75EBD223DB5D',
@UserName = 'Cristi',
@PassWord = 'epsilon',
@FirstName = 'Cristian',
@LastName = 'Crisan',
@Email = 'Cristian.Crisan@yahoo.com',
@Phone = '0785671435'

GO

CREATE PROCEDURE dbo.Users_ReadById
(
	@UserId uniqueidentifier
)
AS
BEGIN
	SELECT u.UserId, u.UserName, u.PassWord, u.FirstName, u.LastName, u.Email, u.Phone
	FROM Users u
	WHERE (u.UserId = @UserId)
END
GO
--test procedure
DECLARE @UserId uniqueidentifier = '3DBCBB61-1CA5-474F-9AAC-75EBD223DB5D'
EXECUTE dbo.Users_ReadById @UserId

GO

CREATE PROCEDURE dbo.Users_UpdateById
(
	@UserId uniqueidentifier,
	@UserName nvarchar(50),
	@PassWord nvarchar(50),
	@FirstName nvarchar(50),
	@LastName nvarchar(50),
	@Email nvarchar(50),
	@Phone nvarchar(50)
)
AS
BEGIN
UPDATE Users 
	SET UserId = @UserId,
		UserName = @UserName,
		PassWord = @PassWord,
		FirstName = @FirstName,
		LastName = @LastName,
		Email = @Email,
		Phone = @Phone
		WHERE (UserId = @UserId)
END
GO

CREATE PROCEDURE dbo.Users_DeleteById
(
	@UserId uniqueidentifier
)
AS
BEGIN
DELETE
FROM Users
WHERE (UserId = @UserId)
END
GO

--Procedures for table Categories
CREATE PROCEDURE dbo.Categories_Create
(
	@CategId uniqueidentifier,
	@Category nvarchar(100)
)
AS
BEGIN
INSERT INTO Categories(
	CategId,
	Category)
VALUES(
@CategId,
@Category)
SELECT
CategId = @CategId,
Category = @Category
FROM Categories
WHERE CategId = @CategId
END
GO

CREATE PROCEDURE dbo.Categories_ReadById
(
	@CategId uniqueidentifier
)
AS
BEGIN
	SELECT c.CategId, c.Category
	FROM Categories c
	WHERE (c.CategId = @CategId)
END
GO

--test procedure
DECLARE @CategId uniqueidentifier = '9B51AF34-7B69-4E33-997E-23193223C8FA'
EXECUTE dbo.Categories_ReadById @CategId

GO

CREATE PROCEDURE dbo.Categories_UpdateById
(
	@CategId uniqueidentifier,
	@Category nvarchar(100)
)
AS
BEGIN
UPDATE Categories 
	SET CategId = @CategId,
		Category = @Category
		WHERE (CategId = @CategId)
END
GO

CREATE PROCEDURE dbo.Categories_DeleteById
(
	@CategId uniqueidentifier
)
AS
BEGIN
DELETE
FROM Categories
WHERE (CategId = @CategId)
END
GO

--Procedures for table Comments
CREATE PROCEDURE dbo.Comments_Create
(
	@CommentId uniqueidentifier,
	@UserId uniqueidentifier,
	@Message nvarchar(200)
)
AS
BEGIN
INSERT INTO Comments(
	CommentId,
	UserId,
	Message)
VALUES(
@CommentId,
@UserId,
@Message)
SELECT
CommentId = @CommentId,
UserId = @UserId,
Message = @Message
FROM Comments
WHERE CommentId = @CommentId
END
GO

CREATE PROCEDURE dbo.Comments_ReadById
(
	@CommentId uniqueidentifier
)
AS
BEGIN
	SELECT co.CommentId, co.UserId, co.Message
	FROM Comments CO 
	WHERE (cO.CommentId = @CommentId)
END
GO

--test procedure
DECLARE @CommentId uniqueidentifier = '77A7E272-B449-4CCB-822A-E14EDA997092'
EXECUTE dbo.Comments_ReadById @CommentId

GO

CREATE PROCEDURE dbo.Comments_UpdateById
(
	@CommentId uniqueidentifier,
	@UserId uniqueidentifier,
	@Message nvarchar(200)
)
AS
BEGIN
UPDATE Comments
	SET CommentId = @CommentId,
		UserId = @UserId,
		Message = @Message
		WHERE (CommentId = @CommentId)
END
GO

CREATE PROCEDURE dbo.Comments_DeleteById
(
	@CommentId uniqueidentifier
)
AS
BEGIN
DELETE
FROM Comments
WHERE (CommentId = @CommentId)
END
GO

--Procedures for table Products

CREATE PROCEDURE dbo.Products_Create
(
	@ProductId uniqueidentifier,
	@CategId uniqueidentifier,
	@ProductName nvarchar(50),
	@Description nvarchar(200),
	@Price decimal(16,9)
)
AS
BEGIN
INSERT INTO Products(
	ProductId,
	CategId,
	ProductName,
	Description,
	Price)
VALUES(
@ProductId,
@CategId,
@ProductName,
@Description,
@Price)
SELECT
ProductId = @ProductId,
CategId = @CategId,
ProductName = @ProductName,
Description = @Description,
Price = @Price
FROM Products
WHERE ProductId = @ProductId
END
GO


CREATE PROCEDURE dbo.Products_ReadById
(
	@ProductId uniqueidentifier
)
AS
BEGIN
	SELECT p.ProductId, p.CategId, p.ProductName , p.Description, p.Price
	FROM Products p
	WHERE (p.ProductId = @ProductId)
END
GO

--test procedure
DECLARE @ProductId uniqueidentifier = '00667E4F-E8AD-40A1-9BA2-01313D185CFB'
EXECUTE dbo.Products_ReadById @ProductId

GO

CREATE PROCEDURE dbo.Products_UpdateById
(
	@ProductId uniqueidentifier,
	@CategId uniqueidentifier,
	@ProductName nvarchar(50),
	@Description nvarchar(200),
	@Price decimal(16,9)
)
AS
BEGIN
UPDATE Products
	SET ProductId = @ProductId,
		CategId = @CategId,
		ProductName = @ProductName,
		Description = @Description,
		Price = @Price
		WHERE (ProductId = @ProductId)
END
GO

CREATE PROCEDURE dbo.Products_DeleteById
(
	@ProductId uniqueidentifier
)
AS
BEGIN
DELETE
FROM Products
WHERE (ProductId = @ProductId)
END
GO

--Procedures for table Orders

CREATE PROCEDURE dbo.Orders_Create
(
	@OrderId uniqueidentifier,
	@UserId uniqueidentifier,
	@TotalAmount decimal(16,9),
	@DeliveryAdress nvarchar(200),
	@Comments nvarchar(200),
	@DeliveryStatus bit,
	@DateOfOrder datetime
)
AS
BEGIN
INSERT INTO Orders(
	OrderId,
	UserId,
	TotalAmount,
	DeliveryAdress,
	Comments,
	DeliveryStatus,
	DateOfOrder)
VALUES(
@OrderId,
@UserId,
@TotalAmount,
@DeliveryAdress,
@Comments,
@DeliveryStatus,
@DateOfOrder)
SELECT
OrderId = @OrderId,
UserId = @UserId,
TotalAmount = @TotalAmount,
DeliveryAdress = @DeliveryAdress,
Comments = @Comments,
DeliveryStatus = @DeliveryStatus,
DateOfOrder = @DateOfOrder
FROM Orders
WHERE OrderId = @OrderId
END
GO

CREATE PROCEDURE dbo.Orders_ReadById
(
	@OrderId uniqueidentifier
)
AS
BEGIN
	SELECT o.OrderId ,o.UserId ,o.OrderDate, o.TotalAmount, o.DeliveryAdress ,o.Comments ,o.DeliveryStatus ,o.DateOfOrder
	FROM Orders o 
	WHERE (o.OrderId = @OrderId)
END
GO

--test procedure
DECLARE @OrderId uniqueidentifier = '1D911A5F-E5AA-4C90-853F-1EAEC4614FA8'
EXECUTE dbo.Orders_ReadById @OrderId

GO

CREATE PROCEDURE dbo.Orders_UpdateById
(
	@OrderId uniqueidentifier,
	@UserId uniqueidentifier,
	@TotalAmount decimal(16,9),
	@DeliveryAdress nvarchar(200),
	@Comments nvarchar(200),
	@DeliveryStatus bit,
	@DateOfOrder datetime
)
AS
BEGIN
UPDATE Orders
	SET OrderId = @OrderId,
		UserId = @UserId,
		TotalAmount = @TotalAmount,
		DeliveryAdress = @DeliveryAdress,
		Comments = @Comments,
		DeliveryStatus = @DeliveryStatus,
		DateOfOrder = @DateOfOrder
END
GO

CREATE PROCEDURE dbo.Orders_DeleteById
(
	@OrderId uniqueidentifier
)
AS
BEGIN
DELETE
FROM Orders
WHERE (OrderId = @OrderId)
END
GO

--Procedures for table OrderItem

CREATE PROCEDURE dbo.OrderItem_Create
(
	@OrderItemId uniqueidentifier,
	@OrderId uniqueidentifier,
	@ProductId uniqueidentifier,
	@UnitPrice decimal(16,9),
	@Quantity decimal(16,9)	
)
AS
BEGIN
INSERT INTO OrderItem(
	OrderItemId,
	OrderId,
	ProductId,
	UnitPrice,
	Quantity)
VALUES(
@OrderItemId,
@OrderId,
@ProductId,
@UnitPrice,
@Quantity)
SELECT
OrderItemId = @OrderItemId,
OrderId = @OrderId,
ProductId = @ProductId,
UnitPrice = @UnitPrice,
Quantity = @Quantity
FROM OrderItem
WHERE OrderItemId = @OrderItemId
END
GO

CREATE PROCEDURE dbo.OrderItem_ReadById
(
	@OrderItemId uniqueidentifier
)
AS
BEGIN
	SELECT ot.OrderItemId, ot.OrderId, ot.ProductId , ot.UnitPrice, ot.Quantity
	FROM OrderItem ot
	WHERE (ot.OrderItemId = @OrderItemId)
END
GO

--test procedure
DECLARE @OrderItemId uniqueidentifier = 'C8170ECB-BC09-43B3-A845-01109A9CCB46'
EXECUTE dbo.OrderItem_ReadById @OrderItemId

GO

CREATE PROCEDURE dbo.OrderItem_UpdateById
(
	@OrderItemId uniqueidentifier,
	@OrderId uniqueidentifier,
	@ProductId uniqueidentifier,
	@UnitPrice decimal(16,9),
	@Quantity decimal(16,9)
)
AS
BEGIN
UPDATE OrderItem
	SET OrderItemId = @OrderItemId,
		OrderId = @OrderId,
		ProductId = @ProductId,
		UnitPrice = @UnitPrice,
		Quantity = @Quantity
END
GO

CREATE PROCEDURE dbo.OrderItem_DeleteById
(
	@OrderItemId uniqueidentifier
)
AS
BEGIN
DELETE
FROM OrderItem
WHERE (OrderItemId = @OrderItemId)
END
GO

--Procedures for table ProductImages
CREATE PROCEDURE dbo.ProductImages_Create
(
	@ImageId uniqueidentifier,
	@ProductId uniqueidentifier	
)
AS
BEGIN
INSERT INTO ProductImages(
	ImageId,
	ProductId)
VALUES(
@ImageId,
@ProductId)
SELECT
ImageId = @ImageId,
ProductId = @ProductId
FROM ProductImages
WHERE ImageId = @ImageId
END
GO

CREATE PROCEDURE dbo.ProductImages_ReadById
(
	@ImageId uniqueidentifier
)
AS
BEGIN
	SELECT pt.ImageId , pt.ProductId
	FROM ProductImages pt
	WHERE (pt.ImageId = @ImageId)
END
GO



CREATE PROCEDURE dbo.ProductImages_UpdateById
(
	@ImageId uniqueidentifier,
	@ProductId uniqueidentifier	
)
AS
BEGIN
UPDATE ProductImages
	SET ImageId = @ImageId,
		ProductId = @ProductId
END
GO

CREATE PROCEDURE dbo.ProductImages_DeleteById
(
	@ImageId uniqueidentifier
)
AS
BEGIN
DELETE
FROM ProductImages
WHERE (ImageId = @ImageId)
END
GO

--Procedures for table Image

CREATE PROCEDURE dbo.Image_Create
(
	@ImageId uniqueidentifier,
	@Picture nvarchar(500)
)
AS
BEGIN
INSERT INTO Image(
	ImageId,
	Picture)
VALUES(
@ImageId,
@Picture)
SELECT
ImageId = @ImageId,
Picture = @Picture
FROM Image
WHERE ImageId = @ImageId
END
GO

CREATE PROCEDURE dbo.Image_ReadById
(
	@ImageId uniqueidentifier
)
AS
BEGIN
	SELECT i.ImageId , i.Picture
	FROM Image i
	WHERE (i.ImageId = @ImageId)
END
GO



CREATE PROCEDURE dbo.Image_UpdateById
(
	@ImageId uniqueidentifier,
	@Picture nvarchar(500)	
)
AS
BEGIN
UPDATE Image
	SET ImageId = @ImageId,
		Picture = @Picture
END
GO

CREATE PROCEDURE dbo.Image_DeleteById
(
	@ImageId uniqueidentifier
)
AS
BEGIN
DELETE
FROM Image
WHERE (ImageId = @ImageId)
END
GO
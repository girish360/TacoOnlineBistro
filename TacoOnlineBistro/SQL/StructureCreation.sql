
CREATE DATABASE TacoBistro
GO

USE TacoBistro;
GO

CREATE TABLE [Users] (
	[UserId]	uniqueidentifier	NOT NULL,
	[UserName]	nvarchar(50)	NOT NULL,
	[PassWord]	nvarchar(50) NOT NULL,
	[FirstName] nvarchar(50) NOT NULL,
	[LastName]	nvarchar(50) NOT NULL,
	[Email] nvarchar(50) NOT NULL,
	[Phone] nvarchar(50) NOT NULL,
CONSTRAINT	[PK_Users]	PRIMARY KEY ([UserId]));

CREATE TABLE [Categories] (
	[CategId]	uniqueidentifier NOT NULL,
	[Category] nvarchar(100) NOT NULL,
CONSTRAINT [PK_Categories] PRIMARY KEY ([CategId]));

CREATE TABLE [Products] (
	[ProductId]	uniqueidentifier NOT NULL,
	[CategId] uniqueidentifier NOT NULL,
	[ProductName] nvarchar(50) NOT NULL,
	[Description] nvarchar(200) NOT NULL,
	[Price] decimal(16,9) NOT NULL,
CONSTRAINT [PK_Products] PRIMARY KEY ([ProductId]),
CONSTRAINT [FK_Products_Categories]	FOREIGN KEY ([CategId])
	REFERENCES [Categories]([CategId]));
	
CREATE TABLE [Orders] (
	[OrderId] uniqueidentifier NOT NULL,
	[UserId] uniqueidentifier NOT NULL,
	[TotalAmount] decimal(16,9) NOT NULL,
	[DeliveryAdress] nvarchar(200) NOT NULL,
	[Comments] nvarchar(200),
	[DeliveryStatus] bit  NOT NULL,
	[OrderDate]	datetime,
CONSTRAINT [PK_Orders] PRIMARY KEY ([OrderId]),
CONSTRAINT [FK_Orders_Users] FOREIGN KEY ([UserId])
	REFERENCES [Users]([UserId]));
	
CREATE TABLE [OrderItem] (
	[OrderItemId]	uniqueidentifier NOT NULL,
	[OrderId]	uniqueidentifier NOT NULL,
	[ProductId]	uniqueidentifier NOT NULL,
	[UnitPrice] decimal(16,9) NOT NULL,
	[Quantity] decimal(16,9) NOT NULL,
CONSTRAINT [PK_OrderItem] PRIMARY KEY ([OrderItemId]),
CONSTRAINT [FK_OrderItem_Orders] FOREIGN KEY ([OrderId])
	REFERENCES [Orders]([OrderId]),
CONSTRAINT [FK_OrderItem_Products] FOREIGN KEY ([ProductId])
	REFERENCES [Products]([ProductId]));
	
CREATE TABLE [Comments] (
	[CommentId] uniqueidentifier NOT NULL,
	[UserId] uniqueidentifier NOT NULL,
	[Message] nvarchar(200) NOT NULL,
CONSTRAINT [PK_Comments] PRIMARY KEY ([CommentId]),
CONSTRAINT [FK_Comments_Users] FOREIGN KEY ([UserId])
	REFERENCES [Users]([UserId]));

CREATE TABLE [ProductImages] (
	[ImageId] uniqueidentifier NOT NULL,
	[ProductId] uniqueidentifier NOT NULL,
CONSTRAINT [PK_ProductImages] PRIMARY KEY ([ImageId]),
CONSTRAINT [FK_ProductImages_Products] FOREIGN KEY([ProductId])
	REFERENCES [Products]([ProductId]));

CREATE TABLE [Image] (
	[ImageId] uniqueidentifier NOT NULL,
	[Picture] nvarchar(500) NOT NULL,
 CONSTRAINT [PK_Image] PRIMARY KEY ([ImageId]),
 CONSTRAINT [FK_Image_ProductImages] FOREIGN KEY ([ImageId])
 	REFERENCES [ProductImages]([ImageId]));
 	
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
INSERT INTO Users (UserId,UserName,PassWord,FirstName,LastName,Email,Phone)
VALUES(@UserId,@UserName,@PassWord,@FirstName,@LastName,@Email,@Phone)
END
GO

CREATE PROCEDURE dbo.Users_ReadById
(
	@UserId uniqueidentifier
)
AS
BEGIN
	SELECT u.UserId, u.UserName, u.PassWord, u.FirstName, u.LastName, u.Email, u.Phone
	FROM Users u
	WHERE u.UserId = @UserId
END
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
		WHERE UserId = @UserId
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
WHERE UserId = @UserId
END
GO

CREATE PROCEDURE dbo.Users_ReadAll
AS
BEGIN
SELECT u.UserId,
		u.UserName,
		u.PassWord, 
		u.FirstName, 
		u.LastName, 
		u.Email, 
		u.Phone 
FROM Users u
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
INSERT INTO Categories(CategId,Category)
VALUES(@CategId,@Category)
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
	WHERE c.CategId = @CategId
END
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
		WHERE CategId = @CategId
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
WHERE CategId = @CategId
END
GO

CREATE PROCEDURE dbo.Categories_ReadAll
AS
BEGIN
SELECT 	c.CategId, 
		c.Category 
FROM Categories c
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
INSERT INTO Comments(CommentId,UserId,Message)
VALUES(@CommentId,@UserId,@Message)
END
GO

CREATE PROCEDURE dbo.Comments_ReadById
(
	@CommentId uniqueidentifier
)
AS
BEGIN
	SELECT co.CommentId, co.UserId, co.Message
	FROM Comments co 
	WHERE co.CommentId = @CommentId
END
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
		WHERE CommentId = @CommentId
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
WHERE CommentId = @CommentId
END
GO

CREATE PROCEDURE dbo.Comments_ReadAll
AS
BEGIN
SELECT 	co.CommentId, 
		co.UserId, 
		co.Message 
FROM Comments co
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
INSERT INTO Products(ProductId,CategId,ProductName,Description,Price)
VALUES(@ProductId,@CategId,@ProductName,@Description,@Price)
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
	WHERE p.ProductId = @ProductId
END
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
		WHERE ProductId = @ProductId
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
WHERE ProductId = @ProductId
END
GO

CREATE PROCEDURE dbo.Products_ReadAll
AS
BEGIN
SELECT 	p.ProductId,
		p.CategId,
		p.ProductName, 
		p.Description, 
		p.Price
FROM Products p
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
	@OrderDate datetime
)
AS
BEGIN
INSERT INTO Orders(OrderId,UserId,TotalAmount,DeliveryAdress,Comments,DeliveryStatus,OrderDate)
VALUES(@OrderId,@UserId,@TotalAmount,@DeliveryAdress,@Comments,@DeliveryStatus,@OrderDate)
END
GO

CREATE PROCEDURE dbo.Orders_ReadById
(
	@OrderId uniqueidentifier
)
AS
BEGIN
	SELECT o.OrderId ,o.UserId ,o.OrderDate, o.TotalAmount, o.DeliveryAdress ,o.Comments ,o.DeliveryStatus ,o.OrderDate
	FROM Orders o 
	WHERE o.OrderId = @OrderId
END
GO


CREATE PROCEDURE dbo.Orders_UpdateById
(
	@OrderId uniqueidentifier,
	@UserId uniqueidentifier,
	@TotalAmount decimal(16,9),
	@DeliveryAdress nvarchar(200),
	@Comments nvarchar(200),
	@DeliveryStatus bit,
	@OrderDate datetime
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
		OrderDate = @OrderDate
		WHERE OrderId = @OrderId
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
WHERE OrderId = @OrderId
END
GO

CREATE PROCEDURE dbo.Orders_ReadAll
AS
BEGIN
SELECT 	o.OrderId, 
		o.UserId, 
		o.TotalAmount, 
		o.DeliveryAdress, 
		o.Comments, 
		o.DeliveryStatus, 
		o.OrderDate
FROM Orders o
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
INSERT INTO OrderItem(OrderItemId,OrderId,ProductId,UnitPrice,Quantity)
VALUES(@OrderItemId,@OrderId,@ProductId,@UnitPrice,@Quantity)
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
	WHERE ot.OrderItemId = @OrderItemId
END
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
		WHERE OrderItemId = @OrderItemId
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
WHERE OrderItemId = @OrderItemId
END
GO

CREATE PROCEDURE dbo.OrderItem_ReadAll
AS
BEGIN
SELECT 	oi.OrderItemId, 
		oi.OrderId, 
		oi.ProductId, 
		oi.UnitPrice, 
		oi.Quantity
FROM OrderItem oi
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
INSERT INTO ProductImages(ImageId,ProductId)
VALUES(@ImageId,@ProductId)
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
	WHERE pt.ImageId = @ImageId
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
		WHERE ImageId = @ImageId
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
WHERE ImageId = @ImageId
END
GO

CREATE PROCEDURE dbo.ProductImages_ReadAll
AS
BEGIN
SELECT 	pi.ImageId,
		pi.ProductId
FROM ProductImages pi
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
INSERT INTO Image(ImageId,Picture)
VALUES(@ImageId,@Picture)
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
	WHERE i.ImageId = @ImageId
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
		WHERE ImageId = @ImageId
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
WHERE ImageId = @ImageId
END
GO

CREATE PROCEDURE dbo.Image_ReadAll
AS
BEGIN
SELECT 	i.ImageId, 
		i.Picture 
FROM Image i
END
GO

--Creating Non-Clustered indexes

CREATE NONCLUSTERED INDEX IX_TACO_USERID
	ON Users (UserID);
	
GO

CREATE NONCLUSTERED INDEX IX_TACO_CATEGID
	ON Categories (CategId);
GO

CREATE NONCLUSTERED INDEX IX_TACO_COMMENTSID
	ON Comments (CommentId);
GO

CREATE NONCLUSTERED INDEX IX_TACO_PRODUCTID
	ON Products (ProductId);
GO

CREATE NONCLUSTERED INDEX IX_TACO_ORDERID
	ON Orders (OrderId);
GO

CREATE NONCLUSTERED INDEX IX_TACO_ORDER_ITEMID
	ON OrderItem (OrderItemId);
GO

CREATE NONCLUSTERED INDEX IX_TACO_ProductImagesID
	ON ProductImages (ImageId);
GO

CREATE NONCLUSTERED INDEX IX_TACO_ImageID
	ON Image (ImageId);

GO




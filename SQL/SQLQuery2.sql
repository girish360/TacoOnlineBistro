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
	[OrderDate] timestamp,
	[TotalAmount] decimal(16,9) NOT NULL,
	[DeliveryAdress] nvarchar(200) NOT NULL,
	[Comments] nvarchar(200),
	[DeliveryStatus] bit  NOT NULL,
	[DateOfOrder]	datetime,
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
	 
	

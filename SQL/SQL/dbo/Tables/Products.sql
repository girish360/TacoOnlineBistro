CREATE TABLE [Products] (
	[ProductId]	uniqueidentifier NOT NULL,
	[CategId] uniqueidentifier NOT NULL,
	[ProductName] nvarchar(50) NOT NULL,
	[Description] nvarchar(200) NOT NULL,
	[Price] float NOT NULL,
	[Image] nvarchar(50) NOT NULL,
	[ImageSmall] nvarchar(50)	NOT NULL,
	[ImagePath] nvarchar(200) NOT NULL,
	[ImagePathSmall] nvarchar(200) NOT NULL,
CONSTRAINT [PK_Products] PRIMARY KEY ([ProductId]),
CONSTRAINT [FK_Products_Categories]	FOREIGN KEY ([CategId])
	REFERENCES [Categories]([CategId]));
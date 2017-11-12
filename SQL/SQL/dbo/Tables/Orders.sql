CREATE TABLE [Orders] (
	[OrderId] uniqueidentifier NOT NULL,
	[UserId] uniqueidentifier NOT NULL,
	[OrderDate] timestamp,
	[TotalAmount] float NOT NULL,
	[DeliveryAdress] nvarchar(200) NOT NULL,
	[Comments] nvarchar(200),
	[DeliveryStatus] bit  NOT NULL,
	[DateOfOrder]	datetime,
CONSTRAINT [PK_Orders] PRIMARY KEY ([OrderId]),
CONSTRAINT [FK_Orders_Users] FOREIGN KEY ([UserId])
	REFERENCES [Users]([UserId]));
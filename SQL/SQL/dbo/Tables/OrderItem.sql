CREATE TABLE [OrderItem] (
	[OrderItemId]	uniqueidentifier NOT NULL,
	[OrderId]	uniqueidentifier NOT NULL,
	[ProductId]	uniqueidentifier NOT NULL,
	[UnitPrice] float NOT NULL,
	[Quantity] float NOT NULL,
CONSTRAINT [PK_OrderItem] PRIMARY KEY ([OrderItemId]),
CONSTRAINT [FK_OrderItem_Orders] FOREIGN KEY ([OrderId])
	REFERENCES [Orders]([OrderId]),
CONSTRAINT [FK_OrderItem_Products] FOREIGN KEY ([ProductId])
	REFERENCES [Products]([ProductId]));
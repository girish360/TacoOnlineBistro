USE Taco
GO

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

CREATE VIEW [dbo].[UsersAndOrders]
AS
SELECT u.UserName,
		u.FirstName,
		COUNT(oi.OrderItemId) as NoOfProducts
FROM Users u
	LEFT JOIN Orders o ON o.UserId = u.UserId
	LEFT JOIN OrderItem oi ON oi.OrderId = o.OrderId
GROUP BY u.UserName , u.FirstName 
GO


INSERT INTO Users([UserId],[UserName],[PassWord],[FirstName],[LastName],[Email],[Phone]) VALUES (NEWID(),'Admin','vlad','Vladimir','Olenic','vladimir.olenic@gmail.com','0742153332');
GO

INSERT INTO Users([UserId],[UserName],[PassWord],[FirstName],[LastName],[Email],[Phone]) VALUES (NEWID(),'Victor79','alpha','Victor','Olenic','victor.olenic@gmail.com','0742153334');
GO

INSERT INTO Users([UserId],[UserName],[PassWord],[FirstName],[LastName],[Email],[Phone]) VALUES (NEWID(),'Dana','beta','Daniela','Muresan','daniela.muresan@gmail.com','0740531731');
GO

INSERT INTO Users([UserId],[UserName],[PassWord],[FirstName],[LastName],[Email],[Phone]) VALUES (NEWID(),'Livi','sigma','Livia','Ardelean','livia.ardelean@gmail.com','0745245525');
GO

INSERT INTO Users([UserId],[UserName],[PassWord],[FirstName],[LastName],[Email],[Phone]) VALUES (NEWID(),'Andrew','omega','Andrei','Pop','andrei.pop@yahoo.com','0741231671');
GO

INSERT INTO Categories([CategId],[Category]) VALUES (NEWID(),'Newest Recipes');
GO

INSERT INTO Categories([CategId],[Category]) VALUES (NEWID(),'Popular Recipes');
GO

INSERT INTO Categories([CategId],[Category]) VALUES (NEWID(),'Burgers');
GO

INSERT INTO Categories([CategId],[Category]) VALUES (NEWID(),'Menu of the day');
GO

INSERT INTO Categories([CategId],[Category]) VALUES (NEWID(),'Tortilla mexican pizza');
GO

INSERT INTO Categories([CategId],[Category]) VALUES (NEWID(),'Mexican and Tex-Mex');
GO

INSERT INTO Categories([CategId],[Category]) VALUES (NEWID(),'Menu burgers');
GO

INSERT INTO Categories([CategId],[Category]) VALUES (NEWID(),'Starters');
GO

INSERT INTO Categories([CategId],[Category]) VALUES (NEWID(),'Salads');
GO

INSERT INTO Categories([CategId],[Category]) VALUES (NEWID(),'Breakfast');
GO

INSERT INTO Categories([CategId],[Category]) VALUES (NEWID(),'Soup');
GO

INSERT INTO Categories([CategId],[Category]) VALUES (NEWID(),'Vegetarian');
GO

INSERT INTO Categories([CategId],[Category]) VALUES (NEWID(),'Dessert');
GO

INSERT INTO Categories([CategId],[Category]) VALUES (NEWID(),'Sauces');
GO

INSERT INTO Categories([CategId],[Category]) VALUES (NEWID(),'Drinks');
GO

INSERT INTO Products([ProductId],[CategId],[ProductName],[Description],[Price],[Image],[ImageSmall],[ImagePath],[ImagePathSmall]) VALUES (NEWID(),'9B231D15-F904-4ADA-A90C-6ACC8097826A','Fajitas Tortilla Pizza','Mexican pizza is based on tortilla, fajitas, chicken, beef, or mushrooms of choice,homemade tomato sauce, cheddar cheese,',21.00,'Image1.jpg','Image1small.jpg','/images/Image1.jpg','/images/small/Image1small.jpg');
GO

INSERT INTO Products([ProductId],[CategId],[ProductName],[Description],[Price],[Image],[ImageSmall],[ImagePath],[ImagePathSmall]) VALUES (NEWID(),'9B231D15-F904-4ADA-A90C-6ACC8097826A','Crunchwrap Omelette Vegetarian','Scrambled eggs, cheese sauce, chili peppers, salad, tomatoes, all served in a tortilla made in the house.',16.90,'Image2.jpg','Image2small.jpg','/images/Image2.jpg','/images/small/Image2small.jpg');
GO

INSERT INTO Products([ProductId],[CategId],[ProductName],[Description],[Price],[Image],[ImageSmall],[ImagePath],[ImagePathSmall]) VALUES (NEWID(),'9B231D15-F904-4ADA-A90C-6ACC8097826A','Tortilla Burger','A delicious burger, served in Mexican style. Contains freshly minced and spiced beef, pineapple rings, guacamole sauce, tortilla made in the house.',23.00,'Image3.jpg','Image3small.jpg','/images/Image3.jpg','/images/small/Image3small.jpg');
GO

INSERT INTO Products([ProductId],[CategId],[ProductName],[Description],[Price],[Image],[ImageSmall],[ImagePath],[ImagePathSmall]) VALUES (NEWID(),'B8375EA8-DC8C-4038-A939-96B52F3FDD37','Quesadilla','Homemade tortilla filled with cheese and meat of choice, spiced after a Mexican recipe.',21.90,'Image4.jpg','Image4small.jpg','/images/Image4.jpg','/images/small/Image4small.jpg');
GO

INSERT INTO Products([ProductId],[CategId],[ProductName],[Description],[Price],[Image],[ImageSmall],[ImagePath],[ImagePathSmall]) VALUES (NEWID(),'B8375EA8-DC8C-4038-A939-96B52F3FDD37','Burritos','Mexican specialty with meat of choice, rolled in tortilla made in the house, along with bean sauce, green lettuce and tomatoes',23.00,'Image5.jpg','Image5small.jpg','/images/Image5.jpg','/images/small/Image5small.jpg');
GO

INSERT INTO Products([ProductId],[CategId],[ProductName],[Description],[Price],[Image],[ImageSmall],[ImagePath],[ImagePathSmall]) VALUES (NEWID(),'B8375EA8-DC8C-4038-A939-96B52F3FDD37','Classic BBQ Burger','Freshly chopped and seasoned beef, pancake rings, cheese, bacon, iceberg salad, tomatoes, served in a goulash with a tartar sauce made in the house.',22.00,'Image6.jpg','Image6small.jpg','/images/Image6.jpg','/images/small/Image6small.jpg');
GO

INSERT INTO Products([ProductId],[CategId],[ProductName],[Description],[Price],[Image],[ImageSmall],[ImagePath],[ImagePathSmall]) VALUES (NEWID(),'9B51AF34-7B69-4E33-997E-23193223C8FA','Quesadilla','Homemade tortilla filled with cheese and meat of choice, spiced after a Mexican recipe.',21.90,'Image4.jpg','Image4small.jpg','/images/Image4.jpg','/images/small/Image4small.jpg');
GO

INSERT INTO Products([ProductId],[CategId],[ProductName],[Description],[Price],[Image],[ImageSmall],[ImagePath],[ImagePathSmall]) VALUES (NEWID(),'9B51AF34-7B69-4E33-997E-23193223C8FA','Burritos','Mexican specialty with meat of choice, rolled in tortilla made in the house, along with bean sauce, green lettuce and tomatoes',23.00,'Image5.jpg','Image5small.jpg','/images/Image5.jpg','/images/small/Image5small.jpg');
GO

INSERT INTO Products([ProductId],[CategId],[ProductName],[Description],[Price],[Image],[ImageSmall],[ImagePath],[ImagePathSmall]) VALUES (NEWID(),'9B51AF34-7B69-4E33-997E-23193223C8FA','Enchiladas Rojas','Two rolls of tortilla stuffed with meat of choice, bathed in tomato sauce, covered with cheese and baked in the oven, served together with rice.',24.00,'Image7.jpg','Image7small.jpg','/images/Image7.jpg','/images/small/Image7small.jpg');
GO

INSERT INTO Products([ProductId],[CategId],[ProductName],[Description],[Price],[Image],[ImageSmall],[ImagePath],[ImagePathSmall]) VALUES (NEWID(),'2FBB9B78-6497-43E9-9F3C-23326B504EA2','Omelet Quesadilla','Omelette with cheese and bacon - served in the tortilla made in the house',15.00,'Image8.jpg','Image8small.jpg','/images/Image8.jpg','/images/small/Image8small.jpg');
GO

INSERT INTO Products([ProductId],[CategId],[ProductName],[Description],[Price],[Image],[ImageSmall],[ImagePath],[ImagePathSmall]) VALUES (NEWID(),'2FBB9B78-6497-43E9-9F3C-23326B504EA2','Crunchwrap Omelette','Scrambled eggs, cheese sauce, chili peppers, salad, tomatoes, all served in homemade tortillas.',18.00,'Image9.jpg','Image9small.jpg','/images/Image9.jpg','/images/small/Image9small.jpg');
GO

INSERT INTO Products([ProductId],[CategId],[ProductName],[Description],[Price],[Image],[ImageSmall],[ImagePath],[ImagePathSmall]) VALUES (NEWID(),'30BC8486-9125-450D-96DF-3D182A749D73','Crunchy Bacon Salad','Mix of green lettuce, walnuts, raisins, fried bacon, telemea cheese, vinegar dressing.',23.00,'Image10.jpg','Image10small.jpg','/images/Image10.jpg','/images/small/Image10small.jpg');
GO

INSERT INTO Products([ProductId],[CategId],[ProductName],[Description],[Price],[Image],[ImageSmall],[ImagePath],[ImagePathSmall]) VALUES (NEWID(),'30BC8486-9125-450D-96DF-3D182A749D73','Caesar Salad','Iceberg salad, tartar dressing, roasted sesame, chicken breast, dried tomatoes, croutons.',25.00,'Image11.jpg','Image11small.jpg','/images/Image11.jpg','/images/small/Image11small.jpg');
GO

INSERT INTO Products([ProductId],[CategId],[ProductName],[Description],[Price],[Image],[ImageSmall],[ImagePath],[ImagePathSmall]) VALUES (NEWID(),'38A671DF-BC6C-4A15-A5CC-48A8257A661B','Fajitas Tortilla Pizza','Mexican pizza is based on tortilla, fajitas, chicken, beef, or mushrooms of choice,homemade tomato sauce, cheddar cheese,',21.00,'Image1.jpg','Image1small.jpg','/images/Image1.jpg','/images/small/Image1small.jpg');
GO

INSERT INTO Products([ProductId],[CategId],[ProductName],[Description],[Price],[Image],[ImageSmall],[ImagePath],[ImagePathSmall]) VALUES (NEWID(),'38A671DF-BC6C-4A15-A5CC-48A8257A661B','Chicken Tortilla Pizza','Mexican pizza: chicken breast with cajun spice, homemade tomato sauce, Cheddar cheese, Gouda cheese, red beans, corn, olives.',19.00,'Image12.jpg','Image12small.jpg','/images/Image12.jpg','/images/small/Image12small.jpg');
GO

INSERT INTO Products([ProductId],[CategId],[ProductName],[Description],[Price],[Image],[ImageSmall],[ImagePath],[ImagePathSmall]) VALUES (NEWID(),'F6D17EB2-B8FA-4852-8DAF-8D851F85FE95','Tortilla Soup','Mexican soup of ripe tomatoes, slightly spicy - served with roasted tortilla, cream, chicken and chicken breast',16.00,'Image13.jpg','Image13small.jpg','/images/Image13.jpg','/images/small/Image13small.jpg');
GO

INSERT INTO Products([ProductId],[CategId],[ProductName],[Description],[Price],[Image],[ImageSmall],[ImagePath],[ImagePathSmall]) VALUES (NEWID(),'CAD7811C-E41C-48A4-86D7-8DE6A6B12223','Empanadas','Mexican pancakes made in the house, stuffed with chilli with meat.',16.00,'Image14.jpg','Image14small.jpg','/images/Image14.jpg','/images/small/Image14small.jpg');
GO

INSERT INTO Products([ProductId],[CategId],[ProductName],[Description],[Price],[Image],[ImageSmall],[ImagePath],[ImagePathSmall]) VALUES (NEWID(),'CAD7811C-E41C-48A4-86D7-8DE6A6B12223','Mexican Spring Rolls','Delicious rolls filled with curry chicken, cheese and Mexican vegetables served with mixed lettuce, guacamole sauce and cream.',22.50,'Image15.jpg','Image15small.jpg','/images/Image15.jpg','/images/small/Image15small.jpg');
GO

INSERT INTO Products([ProductId],[CategId],[ProductName],[Description],[Price],[Image],[ImageSmall],[ImagePath],[ImagePathSmall]) VALUES (NEWID(),'AD9F76EE-CE14-4C9C-91CD-A8C091B6A2EA','Vegetarian Fajitas','Mexican specialty based on julienne vegetables fried on pan (eggplant, cucumber, sweet pepper, onion)',28.00,'Image16.jpg','Image16small.jpg','/images/Image16.jpg','/images/small/Image16small.jpg');
GO

INSERT INTO Products([ProductId],[CategId],[ProductName],[Description],[Price],[Image],[ImageSmall],[ImagePath],[ImagePathSmall]) VALUES (NEWID(),'2E26CB96-1030-4B18-BC1F-B98FE5A37562','Menu Classic BBQ Burger','Burger with freshly minced and spiced beef, onion pan, cheese, bacon.',26.00,'Image17.jpg','Image17small.jpg','/images/Image17.jpg','/images/small/Image17small.jpg');
GO

INSERT INTO Products([ProductId],[CategId],[ProductName],[Description],[Price],[Image],[ImageSmall],[ImagePath],[ImagePathSmall]) VALUES (NEWID(),'2E26CB96-1030-4B18-BC1F-B98FE5A37562','Menu Double Burger','A huge burger of beef and chicken and spicy chicken, salad, tomatoes, pickled cucumbers.',29.50,'Image18.jpg','Image18small.jpg','/images/Image18.jpg','/images/small/Image18small.jpg');
GO

INSERT INTO Products([ProductId],[CategId],[ProductName],[Description],[Price],[Image],[ImageSmall],[ImagePath],[ImagePathSmall]) VALUES (NEWID(),'8D217ACA-EF50-4FA4-9A27-BC436FA8C897','Enchilada Taco Platter','1 Enchiladas Rojas + Taco + orez a la mexicana',20.00,'Image19.jpg','Image19small.jpg','/images/Image19.jpg','/images/small/Image19small.jpg');
GO

INSERT INTO Products([ProductId],[CategId],[ProductName],[Description],[Price],[Image],[ImageSmall],[ImagePath],[ImagePathSmall]) VALUES (NEWID(),'8D217ACA-EF50-4FA4-9A27-BC436FA8C897','Taco Platter','2 Tacos + Basmati rice',24.00,'Image20.jpg','Image20small.jpg','/images/Image20.jpg','/images/small/Image20small.jpg');
GO

INSERT INTO Products([ProductId],[CategId],[ProductName],[Description],[Price],[Image],[ImageSmall],[ImagePath],[ImagePathSmall]) VALUES (NEWID(),'E1B47C2C-CA4B-499C-9FEB-F660E1615F60','Coca-Cola (500ml)','Coca-Cola soft drink',5.00,'Image21.jpg','Image21small.jpg','/images/Image21.jpg','/images/small/Image21small.jpg');
GO

INSERT INTO Products([ProductId],[CategId],[ProductName],[Description],[Price],[Image],[ImageSmall],[ImagePath],[ImagePathSmall]) VALUES (NEWID(),'E1B47C2C-CA4B-499C-9FEB-F660E1615F60','Corona (330ml)','Corona Beer',10.00,'Image22.jpg','Image22small.jpg','/images/Image22.jpg','/images/small/Image22small.jpg');
GO

INSERT INTO Products([ProductId],[CategId],[ProductName],[Description],[Price],[Image],[ImageSmall],[ImagePath],[ImagePathSmall]) VALUES (NEWID(),'E1B47C2C-CA4B-499C-9FEB-F660E1615F60','San Miguel (330ml)','San Miguel Beer',9.00,'Image23.jpg','Image23small.jpg','/images/Image23.jpg','/images/small/Image23small.jpg');
GO

INSERT INTO Comments([CommentId],[UserId],[FirstName],[LastName],[Message]) VALUES (NEWID(),'ED1851F7-C233-482A-B4E5-6B59B6CC884D','Andrei','Pop','Hi, you guys rock,the best online catering services I have seen so far');
GO

INSERT INTO Comments([CommentId],[UserId],[FirstName],[LastName],[Message]) VALUES (NEWID(),'5F60BE33-D944-4906-9B51-2C64532FF631','Livia','Ardelean','Hi, I can see you have no desserts on your site.Can you let me know when I can orders some?');
GO

INSERT Orders([OrderId],[UserId],[TotalAmount],[DeliveryAdress],[Comments],[DeliveryStatus],[DateOfOrder]) VALUES (NEWID(),'ED1851F7-C233-482A-B4E5-6B59B6CC884D',37.9,'Plopilor nr. 5 scare 3 ap.55','the address is right besides the buss station',0,GETDATE());
GO

INSERT Orders([OrderId],[UserId],[TotalAmount],[DeliveryAdress],[Comments],[DeliveryStatus],[DateOfOrder]) VALUES (NEWID(),'ED1851F7-C233-482A-B4E5-6B59B6CC884D',44.9,'Plopilor nr. 5 scara 3 ap.55','Please hurry up',0,GETDATE());
GO

INSERT Orders([OrderId],[UserId],[TotalAmount],[DeliveryAdress],[Comments],[DeliveryStatus],[DateOfOrder]) VALUES (NEWID(),'6A852880-8D89-4B02-901A-24996B4B7E17',45.0,'strada Brancusi nr 190,scara 5 ap. 55','Hi the block is right in front of the buss station',1,GETDATE());
GO

INSERT Orders([OrderId],[UserId],[TotalAmount],[DeliveryAdress],[Comments],[DeliveryStatus],[DateOfOrder]) VALUES (NEWID(),'56B8BEAB-845B-46B7-9D62-2AB2174BEE5B',68.9,'Strada Actorului nr.15','The big house with a red fense',1,GETDATE());
GO

INSERT INTO OrderItem([OrderItemId],[OrderId],[ProductId],[UnitPrice],[Quantity]) VALUES (NEWID(),'16641A4B-01C6-4F19-8FE1-D7086AD1DC65','BD843B88-617E-4A9E-BFF6-1A698743035A',21.00,1);
GO

INSERT INTO OrderItem([OrderItemId],[OrderId],[ProductId],[UnitPrice],[Quantity]) VALUES (NEWID(),'16641A4B-01C6-4F19-8FE1-D7086AD1DC65','1B78D865-AE41-4DE3-9D01-63A2157BE737',16.90,1);
GO

INSERT INTO OrderItem([OrderItemId],[OrderId],[ProductId],[UnitPrice],[Quantity]) VALUES (NEWID(),'99D7B6FF-C816-4577-990F-C59304C6BEA2','33C9E990-AF84-449B-9870-01BDA21FFBAA',23.00,1);
GO

INSERT INTO OrderItem([OrderItemId],[OrderId],[ProductId],[UnitPrice],[Quantity]) VALUES (NEWID(),'99D7B6FF-C816-4577-990F-C59304C6BEA2','D24D3F30-7DF1-4E26-B485-AA13DD0FEB64',21.90,1);
GO

INSERT INTO OrderItem([OrderItemId],[OrderId],[ProductId],[UnitPrice],[Quantity]) VALUES (NEWID(),'D975D889-A702-4855-B3EC-D8F2B08F5626','4650F91A-E6B7-4E52-919B-C598CB518AD3',23.00,1);
GO

INSERT INTO OrderItem([OrderItemId],[OrderId],[ProductId],[UnitPrice],[Quantity]) VALUES (NEWID(),'D975D889-A702-4855-B3EC-D8F2B08F5626','A9590B06-1CE3-4B97-B9E3-7C1A29AF2EDB',22.00,1);
GO

INSERT INTO OrderItem([OrderItemId],[OrderId],[ProductId],[UnitPrice],[Quantity]) VALUES (NEWID(),'1D911A5F-E5AA-4C90-853F-1EAEC4614FA8','CD3D3E9A-AF8B-4633-AD29-851D9AB116CA',21.90,1);
GO

INSERT INTO OrderItem([OrderItemId],[OrderId],[ProductId],[UnitPrice],[Quantity]) VALUES (NEWID(),'1D911A5F-E5AA-4C90-853F-1EAEC4614FA8','F1BEE3E0-022A-43F9-91B4-AC78427D62E8',23.00,1);
GO

INSERT INTO OrderItem([OrderItemId],[OrderId],[ProductId],[UnitPrice],[Quantity]) VALUES (NEWID(),'1D911A5F-E5AA-4C90-853F-1EAEC4614FA8','3458B29F-68BC-46D3-8423-1394C45D5F47',24.00,1);
GO

--the list of all the orders with user information
SELECT o.OrderId, o.TotalAmount, o.DeliveryAdress, o.DeliveryStatus, u.UserName, u.FirstName, u.Email
	FROM Orders o JOIN Users u
		ON o.UserId = u.UserId
GO

--The list of all the users ,whether they have placed an order or not		
SELECT o.OrderId, o.TotalAmount, u.UserName, u.FirstName, u.LastName
	FROM Orders o RIGHT JOIN Users u
		ON o.UserId = u.UserId
GO

--the list of all the users whether they have sent a comment or not		
SELECT 	u.UserId, u.UserName, u.FirstName, c.CommentId, c.UserId, c.FirstName, c.Message
	FROM Users u LEFT JOIN Comments c
		ON u.UserId = c.UserId
GO

--the list of all the products and categories ,also including the categories with no products		
SELECT p.ProductId ,p.CategId ,p.ProductName,p.Price , cat.CategId , cat.Category
	FROM Products p FULL JOIN Categories cat
		ON p.CategId = cat.CategId
GO

--the list of all the categories that have more then 2 products		
SELECT cat.Category,  COUNT(p.ProductId) AS ProductCount
	FROM Products p INNER JOIN Categories cat
		ON cat.CategId = p.CategId
		GROUP BY cat.Category
		HAVING COUNT(P.ProductId) > 2
GO

-- selects the 2 most expensive products in the last order	
SELECT 	TOP(2)
OrderId, ProductId, UnitPrice, Quantity
FROM OrderItem
WHERE OrderId = '1D911A5F-E5AA-4C90-853F-1EAEC4614FA8'
ORDER BY UnitPrice DESC
GO

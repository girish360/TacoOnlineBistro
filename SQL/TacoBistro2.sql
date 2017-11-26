USE TacoBistro;
GO

INSERT INTO Users([UserId],[UserName],[PassWord],[FirstName],[LastName],[Email],[Phone]) VALUES ('69634B7F-9BBC-4484-B381-24C130C19F57','Admin','vlad','Vladimir','Olenic','vladimir.olenic@gmail.com','0742153332');
INSERT INTO Users([UserId],[UserName],[PassWord],[FirstName],[LastName],[Email],[Phone]) VALUES ('56B8BEAB-845B-46B7-9D62-2AB2174BEE5B','Victor79','alpha','Victor','Olenic','victor.olenic@gmail.com','0742153334');
INSERT INTO Users([UserId],[UserName],[PassWord],[FirstName],[LastName],[Email],[Phone]) VALUES ('6A852880-8D89-4B02-901A-24996B4B7E17','Dana','beta','Daniela','Muresan','daniela.muresan@gmail.com','0740531731');
INSERT INTO Users([UserId],[UserName],[PassWord],[FirstName],[LastName],[Email],[Phone]) VALUES ('5F60BE33-D944-4906-9B51-2C64532FF631','Livi','sigma','Livia','Ardelean','livia.ardelean@gmail.com','0745245525');
INSERT INTO Users([UserId],[UserName],[PassWord],[FirstName],[LastName],[Email],[Phone]) VALUES ('ED1851F7-C233-482A-B4E5-6B59B6CC884D','Andrew','omega','Andrei','Pop','andrei.pop@yahoo.com','0741231671');

INSERT INTO Categories([CategId],[Category]) VALUES ('9B231D15-F904-4ADA-A90C-6ACC8097826A','Newest Recipes');
INSERT INTO Categories([CategId],[Category]) VALUES ('B8375EA8-DC8C-4038-A939-96B52F3FDD37','Popular Recipes');
INSERT INTO Categories([CategId],[Category]) VALUES ('28A2DC24-C9B0-4FB2-A430-CE72A3967AE6','Burgers');
INSERT INTO Categories([CategId],[Category]) VALUES ('8D217ACA-EF50-4FA4-9A27-BC436FA8C897','Menu of the day');
INSERT INTO Categories([CategId],[Category]) VALUES ('38A671DF-BC6C-4A15-A5CC-48A8257A661B','Tortilla mexican pizza');
INSERT INTO Categories([CategId],[Category]) VALUES ('9B51AF34-7B69-4E33-997E-23193223C8FA','Mexican and Tex-Mex');
INSERT INTO Categories([CategId],[Category]) VALUES ('2E26CB96-1030-4B18-BC1F-B98FE5A37562','Menu burgers');
INSERT INTO Categories([CategId],[Category]) VALUES ('CAD7811C-E41C-48A4-86D7-8DE6A6B12223','Starters');
INSERT INTO Categories([CategId],[Category]) VALUES ('30BC8486-9125-450D-96DF-3D182A749D73','Salads');
INSERT INTO Categories([CategId],[Category]) VALUES ('2FBB9B78-6497-43E9-9F3C-23326B504EA2','Breakfast');
INSERT INTO Categories([CategId],[Category]) VALUES ('F6D17EB2-B8FA-4852-8DAF-8D851F85FE95','Soup');
INSERT INTO Categories([CategId],[Category]) VALUES ('AD9F76EE-CE14-4C9C-91CD-A8C091B6A2EA','Vegetarian');
INSERT INTO Categories([CategId],[Category]) VALUES ('E9B2EF98-B174-400A-9086-71EA07A1EC69','Dessert');
INSERT INTO Categories([CategId],[Category]) VALUES ('237C8800-E5FE-4EF2-99F3-F7C96A947796','Sauces');
INSERT INTO Categories([CategId],[Category]) VALUES ('E1B47C2C-CA4B-499C-9FEB-F660E1615F60','Drinks');

INSERT INTO Products([ProductId],[CategId],[ProductName],[Description],[Price]) VALUES ('BD843B88-617E-4A9E-BFF6-1A698743035A','9B231D15-F904-4ADA-A90C-6ACC8097826A','Fajitas Tortilla Pizza','Mexican pizza is based on tortilla, fajitas, chicken, beef, or mushrooms of choice,homemade tomato sauce, cheddar cheese,',21.00);
INSERT INTO Products([ProductId],[CategId],[ProductName],[Description],[Price]) VALUES ('1B78D865-AE41-4DE3-9D01-63A2157BE737','9B231D15-F904-4ADA-A90C-6ACC8097826A','Crunchwrap Omelette Vegetarian','Scrambled eggs, cheese sauce, chili peppers, salad, tomatoes, all served in a tortilla made in the house.',16.90);
INSERT INTO Products([ProductId],[CategId],[ProductName],[Description],[Price]) VALUES ('33C9E990-AF84-449B-9870-01BDA21FFBAA','9B231D15-F904-4ADA-A90C-6ACC8097826A','Tortilla Burger','A delicious burger, served in Mexican style. Contains freshly minced and spiced beef, pineapple rings, guacamole sauce, tortilla made in the house.',23.00);
INSERT INTO Products([ProductId],[CategId],[ProductName],[Description],[Price]) VALUES ('174EBC3D-8618-4ECC-BE32-E6C97CDAA8B5','B8375EA8-DC8C-4038-A939-96B52F3FDD37','Quesadilla','Homemade tortilla filled with cheese and meat of choice, spiced after a Mexican recipe.',21.90);
INSERT INTO Products([ProductId],[CategId],[ProductName],[Description],[Price]) VALUES ('4650F91A-E6B7-4E52-919B-C598CB518AD3','B8375EA8-DC8C-4038-A939-96B52F3FDD37','Burritos','Mexican specialty with meat of choice, rolled in tortilla made in the house, along with bean sauce, green lettuce and tomatoes',23.00);
INSERT INTO Products([ProductId],[CategId],[ProductName],[Description],[Price]) VALUES ('A9590B06-1CE3-4B97-B9E3-7C1A29AF2EDB','B8375EA8-DC8C-4038-A939-96B52F3FDD37','Classic BBQ Burger','Freshly chopped and seasoned beef, pancake rings, cheese, bacon, iceberg salad, tomatoes, served in a goulash with a tartar sauce made in the house.',22.00);
INSERT INTO Products([ProductId],[CategId],[ProductName],[Description],[Price]) VALUES ('CD3D3E9A-AF8B-4633-AD29-851D9AB116CA','9B51AF34-7B69-4E33-997E-23193223C8FA','Enchiladas Rojas','Two rolls of tortilla stuffed with meat of choice, bathed in tomato sauce, covered with cheese and baked in the oven, served together with rice.',24.00);
INSERT INTO Products([ProductId],[CategId],[ProductName],[Description],[Price]) VALUES ('F1BEE3E0-022A-43F9-91B4-AC78427D62E8','2FBB9B78-6497-43E9-9F3C-23326B504EA2','Omelet Quesadilla','Omelette with cheese and bacon - served in the tortilla made in the house',15.00);
INSERT INTO Products([ProductId],[CategId],[ProductName],[Description],[Price]) VALUES ('3458B29F-68BC-46D3-8423-1394C45D5F47','2FBB9B78-6497-43E9-9F3C-23326B504EA2','Crunchwrap Omelette','Scrambled eggs, cheese sauce, chili peppers, salad, tomatoes, all served in homemade tortillas.',18.00);
INSERT INTO Products([ProductId],[CategId],[ProductName],[Description],[Price]) VALUES ('6F1C5129-79B8-476B-B223-4D879E5034AF','30BC8486-9125-450D-96DF-3D182A749D73','Crunchy Bacon Salad','Mix of green lettuce, walnuts, raisins, fried bacon, telemea cheese, vinegar dressing.',23.00);
INSERT INTO Products([ProductId],[CategId],[ProductName],[Description],[Price]) VALUES ('202425CB-FDBF-4D0C-87EB-B6B0594EDEB2','30BC8486-9125-450D-96DF-3D182A749D73','Caesar Salad','Iceberg salad, tartar dressing, roasted sesame, chicken breast, dried tomatoes, croutons.',25.00);
INSERT INTO Products([ProductId],[CategId],[ProductName],[Description],[Price]) VALUES ('05C41F6B-05F6-4C87-AEE0-247B552E48FC','38A671DF-BC6C-4A15-A5CC-48A8257A661B','Fajitas Tortilla Pizza','Mexican pizza is based on tortilla, fajitas, chicken, beef, or mushrooms of choice,homemade tomato sauce, cheddar cheese,',21.00);
INSERT INTO Products([ProductId],[CategId],[ProductName],[Description],[Price]) VALUES ('635EC79C-5AAC-406B-9FE5-491516AC90BC','38A671DF-BC6C-4A15-A5CC-48A8257A661B','Chicken Tortilla Pizza','Mexican pizza: chicken breast with cajun spice, homemade tomato sauce, Cheddar cheese, Gouda cheese, red beans, corn, olives.',19.00);
INSERT INTO Products([ProductId],[CategId],[ProductName],[Description],[Price]) VALUES ('00667E4F-E8AD-40A1-9BA2-01313D185CFB','F6D17EB2-B8FA-4852-8DAF-8D851F85FE95','Tortilla Soup','Mexican soup of ripe tomatoes, slightly spicy - served with roasted tortilla, cream, chicken and chicken breast',16.00);
INSERT INTO Products([ProductId],[CategId],[ProductName],[Description],[Price]) VALUES ('E669F849-9F62-4824-98AD-694C4A1C3DB9','CAD7811C-E41C-48A4-86D7-8DE6A6B12223','Empanadas','Mexican pancakes made in the house, stuffed with chilli with meat.',16.00);
INSERT INTO Products([ProductId],[CategId],[ProductName],[Description],[Price]) VALUES ('104902CF-E969-4198-9291-45A8DB5748A4','CAD7811C-E41C-48A4-86D7-8DE6A6B12223','Mexican Spring Rolls','Delicious rolls filled with curry chicken, cheese and Mexican vegetables served with mixed lettuce, guacamole sauce and cream.',22.50);
INSERT INTO Products([ProductId],[CategId],[ProductName],[Description],[Price]) VALUES ('D09B85A6-FDDF-414B-90FE-B2FC926129AA','AD9F76EE-CE14-4C9C-91CD-A8C091B6A2EA','Vegetarian Fajitas','Mexican specialty based on julienne vegetables fried on pan (eggplant, cucumber, sweet pepper, onion)',28.00);
INSERT INTO Products([ProductId],[CategId],[ProductName],[Description],[Price]) VALUES ('C4CD870C-BD14-4991-A324-98F50C868D17','2E26CB96-1030-4B18-BC1F-B98FE5A37562','Menu Classic BBQ Burger','Burger with freshly minced and spiced beef, onion pan, cheese, bacon.',26.00);
INSERT INTO Products([ProductId],[CategId],[ProductName],[Description],[Price]) VALUES ('86119283-0D91-4070-BBF0-86FF40D0DC9E','2E26CB96-1030-4B18-BC1F-B98FE5A37562','Menu Double Burger','A huge burger of beef and chicken and spicy chicken, salad, tomatoes, pickled cucumbers.',29.50);
INSERT INTO Products([ProductId],[CategId],[ProductName],[Description],[Price]) VALUES ('4B62D2C7-5F6E-4537-B094-C4860B0381DE','8D217ACA-EF50-4FA4-9A27-BC436FA8C897','Enchilada Taco Platter','1 Enchiladas Rojas + Taco + orez a la mexicana',20.00);
INSERT INTO Products([ProductId],[CategId],[ProductName],[Description],[Price]) VALUES ('DB5E2231-B2CC-4E9B-A139-20B02CBB627E','8D217ACA-EF50-4FA4-9A27-BC436FA8C897','Taco Platter','2 Tacos + Basmati rice',24.00);
INSERT INTO Products([ProductId],[CategId],[ProductName],[Description],[Price]) VALUES ('27A33F94-5079-4C68-AE16-0A0579AA0AE5','E1B47C2C-CA4B-499C-9FEB-F660E1615F60','Coca-Cola (500ml)','Coca-Cola soft drink',5.00);
INSERT INTO Products([ProductId],[CategId],[ProductName],[Description],[Price]) VALUES ('D70CB135-53DD-48D0-8217-E627DC525B23','E1B47C2C-CA4B-499C-9FEB-F660E1615F60','Corona (330ml)','Corona Beer',10.00);
INSERT INTO Products([ProductId],[CategId],[ProductName],[Description],[Price]) VALUES ('A1CB54A9-7AD1-40C8-84F4-353AC9EE8151','E1B47C2C-CA4B-499C-9FEB-F660E1615F60','San Miguel (330ml)','San Miguel Beer',9.00);


INSERT INTO Comments([CommentId],[UserId],[Message]) VALUES ('ED1851F7-C233-482A-B4E5-6B59B6CC884D','ED1851F7-C233-482A-B4E5-6B59B6CC884D','Hi, you guys rock,the best online catering services I have seen so far');
INSERT INTO Comments([CommentId],[UserId],[Message]) VALUES ('5F60BE33-D944-4906-9B51-2C64532FF631','5F60BE33-D944-4906-9B51-2C64532FF631','Hi, I can see you have no desserts on your site.Can you let me know when I can orders some?');




INSERT Orders([OrderId],[UserId],[TotalAmount],[DeliveryAdress],[Comments],[DeliveryStatus],[DateOfOrder]) VALUES ('16641A4B-01C6-4F19-8FE1-D7086AD1DC65','ED1851F7-C233-482A-B4E5-6B59B6CC884D',37.9,'Plopilor nr. 5 scare 3 ap.55','the address is right besides the buss station',0,GETDATE());
INSERT Orders([OrderId],[UserId],[TotalAmount],[DeliveryAdress],[Comments],[DeliveryStatus],[DateOfOrder]) VALUES ('99D7B6FF-C816-4577-990F-C59304C6BEA2','ED1851F7-C233-482A-B4E5-6B59B6CC884D',44.9,'Plopilor nr. 5 scara 3 ap.55','Please hurry up',0,GETDATE());
INSERT Orders([OrderId],[UserId],[TotalAmount],[DeliveryAdress],[Comments],[DeliveryStatus],[DateOfOrder]) VALUES ('D975D889-A702-4855-B3EC-D8F2B08F5626','6A852880-8D89-4B02-901A-24996B4B7E17',45.0,'strada Brancusi nr 190,scara 5 ap. 55','Hi the block is right in front of the buss station',1,GETDATE());
INSERT Orders([OrderId],[UserId],[TotalAmount],[DeliveryAdress],[Comments],[DeliveryStatus],[DateOfOrder]) VALUES ('1D911A5F-E5AA-4C90-853F-1EAEC4614FA8','56B8BEAB-845B-46B7-9D62-2AB2174BEE5B',68.9,'Strada Actorului nr.15','The big house with a red fense',1,GETDATE());

INSERT INTO OrderItem([OrderItemId],[OrderId],[ProductId],[UnitPrice],[Quantity]) VALUES ('C8170ECB-BC09-43B3-A845-01109A9CCB46','16641A4B-01C6-4F19-8FE1-D7086AD1DC65','BD843B88-617E-4A9E-BFF6-1A698743035A',21.00,1);
INSERT INTO OrderItem([OrderItemId],[OrderId],[ProductId],[UnitPrice],[Quantity]) VALUES ('9A74F77E-89FF-4933-B8C9-4DA79EDA064B','16641A4B-01C6-4F19-8FE1-D7086AD1DC65','1B78D865-AE41-4DE3-9D01-63A2157BE737',16.90,1);
INSERT INTO OrderItem([OrderItemId],[OrderId],[ProductId],[UnitPrice],[Quantity]) VALUES ('ECDB76B9-B133-4F1B-8827-01A132B647EC','99D7B6FF-C816-4577-990F-C59304C6BEA2','33C9E990-AF84-449B-9870-01BDA21FFBAA',23.00,1);
INSERT INTO OrderItem([OrderItemId],[OrderId],[ProductId],[UnitPrice],[Quantity]) VALUES ('93B81DB6-AE3B-45B5-843A-3FE69E926793','99D7B6FF-C816-4577-990F-C59304C6BEA2','174EBC3D-8618-4ECC-BE32-E6C97CDAA8B5',21.90,1);
INSERT INTO OrderItem([OrderItemId],[OrderId],[ProductId],[UnitPrice],[Quantity]) VALUES ('664E9AAF-C383-4806-AF25-6C9F3D9F9D88','D975D889-A702-4855-B3EC-D8F2B08F5626','4650F91A-E6B7-4E52-919B-C598CB518AD3',23.00,1);
INSERT INTO OrderItem([OrderItemId],[OrderId],[ProductId],[UnitPrice],[Quantity]) VALUES ('828E98FC-4F7A-4FDC-9019-0BE8711C4B7B','D975D889-A702-4855-B3EC-D8F2B08F5626','A9590B06-1CE3-4B97-B9E3-7C1A29AF2EDB',22.00,1);
INSERT INTO OrderItem([OrderItemId],[OrderId],[ProductId],[UnitPrice],[Quantity]) VALUES ('47F91A49-ED56-403E-8ED7-5FC9891C92B9','1D911A5F-E5AA-4C90-853F-1EAEC4614FA8','CD3D3E9A-AF8B-4633-AD29-851D9AB116CA',24.00,1);
INSERT INTO OrderItem([OrderItemId],[OrderId],[ProductId],[UnitPrice],[Quantity]) VALUES ('2E29B201-862C-45A5-8177-689092153150','1D911A5F-E5AA-4C90-853F-1EAEC4614FA8','F1BEE3E0-022A-43F9-91B4-AC78427D62E8',15.00,1);
INSERT INTO OrderItem([OrderItemId],[OrderId],[ProductId],[UnitPrice],[Quantity]) VALUES ('C5565D0A-0798-413A-BCDF-8FC9F7D60348','1D911A5F-E5AA-4C90-853F-1EAEC4614FA8','3458B29F-68BC-46D3-8423-1394C45D5F47',18.00,1);


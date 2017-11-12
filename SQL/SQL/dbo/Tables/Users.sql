CREATE TABLE [Users] (
	[UserId]	uniqueidentifier	NOT NULL,
	[UserName]	nvarchar(50)	NOT NULL,
	[PassWord]	nvarchar(50) NOT NULL,
	[FirstName] nvarchar(50) NOT NULL,
	[LastName]	nvarchar(50) NOT NULL,
	[Email] nvarchar(50) NOT NULL,
	[Phone] nvarchar(50) NOT NULL,
CONSTRAINT	[PK_Users]	PRIMARY KEY ([UserId]));
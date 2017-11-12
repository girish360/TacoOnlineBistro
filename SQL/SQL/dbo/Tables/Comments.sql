CREATE TABLE [Comments] (
	[CommentId] uniqueidentifier NOT NULL,
	[UserId] uniqueidentifier NOT NULL,
	[FirstName] nvarchar(50) NOT NULL,
	[LastName]	nvarchar(50),
	[Message] nvarchar(200) NOT NULL,
CONSTRAINT [PK_Comments] PRIMARY KEY ([CommentId]),
CONSTRAINT [FK_Comments_Users] FOREIGN KEY ([UserId])
	REFERENCES [Users]([UserId]));
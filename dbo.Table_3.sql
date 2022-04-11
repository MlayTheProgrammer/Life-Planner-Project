CREATE TABLE [dbo].[User]
(
	[UserId] INT NOT NULL, 
    [FirstName] VARCHAR(50) NOT NULL, 
    [LastName] VARCHAR(50) NOT NULL, 
    [PhoneNumber] NVARCHAR(50) NOT NULL, 
    [Email] VARCHAR(50) NOT NULL, 
    [Username] VARCHAR(50) NOT NULL, 
    [Password] VARCHAR(50) NOT NULL,
	PRIMARY KEY CLUSTERED ([UserId] )
)

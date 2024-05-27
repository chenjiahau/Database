Create database Marketing;

Use Marketing;

Create SCHEMA MarketingSchema;

Create table MarketingSchema.Users(
	Id int IDENTITY(1,1) PRIMARY KEY,
	Username nvarchar(50) NOT NULL,
	Email nvarchar(128) NOT NULL,
	password nvarchar(50) NOT NULL,
	Active bit NOT NULL default 0,
	CreatedAt datetime NOT NULL default GETDATE()
);
Select * from MarketingSchema.Users;
Drop table MarketingSchema.Users;

Create table MarketingSchema.Products(
	Id int IDENTITY(1,1) PRIMARY KEY,
	Name nvarchar(100) NOT NULL,
	Price float NOT NULL default 0,
	Discount float NOT NULL default 0,
	Active bit NOT NULL default 0,
	CreatedAt datetime NOT NULL default GETDATE()
);
Select * from MarketingSchema.Products;
Drop table MarketingSchema.Products;

Create table MarketingSchema.Orders(
	Id int IDENTITY(1,1) PRIMARY KEY,
	UserId int NOT NULL,
	ProductId int NOT NULL,
	Amount int NOT NULL,
	Price float NOT NULL,
	Active bit NOT NULL default 0,
	CreatedAt datetime NOT NULL default GETDATE(),
	FOREIGN KEY (UserId) REFERENCES MarketingSchema.Users(Id)
);
Select * from MarketingSchema.Orders;
Drop table MarketingSchema.Orders;

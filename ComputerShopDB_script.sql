USE [ComputerShop]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 23-Jan-20 8:18:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[brand_id] [int] IDENTITY(1,1) NOT NULL,
	[brand_name] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[brand_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 23-Jan-20 8:18:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 23-Jan-20 8:18:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[customer_id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [varchar](255) NOT NULL,
	[last_name] [varchar](255) NOT NULL,
	[phone] [varchar](25) NULL,
	[email] [varchar](255) NOT NULL,
	[street] [varchar](255) NULL,
	[city] [varchar](50) NULL,
	[state] [varchar](25) NULL,
	[zip_code] [varchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_item]    Script Date: 23-Jan-20 8:18:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_item](
	[id] [int] NOT NULL,
	[order_id] [int] NULL,
	[item_id] [int] NULL,
	[product_id] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[list_price] [decimal](10, 2) NOT NULL,
	[discount] [decimal](4, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 23-Jan-20 8:18:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[customer_id] [int] NULL,
	[order_status] [tinyint] NOT NULL,
	[order_date] [date] NOT NULL,
	[required_date] [date] NOT NULL,
	[shipped_date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 23-Jan-20 8:18:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[product_name] [varchar](255) NOT NULL,
	[brand_id] [int] NOT NULL,
	[category_id] [int] NOT NULL,
	[model_year] [smallint] NOT NULL,
	[list_price] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([brand_id], [brand_name]) VALUES (1, N'Dell')
INSERT [dbo].[Brand] ([brand_id], [brand_name]) VALUES (2, N'Apple')
INSERT [dbo].[Brand] ([brand_id], [brand_name]) VALUES (3, N'Asus')
INSERT [dbo].[Brand] ([brand_id], [brand_name]) VALUES (4, N'HP')
INSERT [dbo].[Brand] ([brand_id], [brand_name]) VALUES (5, N'Toshiba')
INSERT [dbo].[Brand] ([brand_id], [brand_name]) VALUES (6, N'Acer')
INSERT [dbo].[Brand] ([brand_id], [brand_name]) VALUES (7, N'Lenovo')
INSERT [dbo].[Brand] ([brand_id], [brand_name]) VALUES (8, N'Samsung')
INSERT [dbo].[Brand] ([brand_id], [brand_name]) VALUES (9, N'Huawai')
INSERT [dbo].[Brand] ([brand_id], [brand_name]) VALUES (10, N'Microsoft')
SET IDENTITY_INSERT [dbo].[Brand] OFF
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (1, N'Laptop Computers')
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (2, N'Desktop Computers')
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (3, N'Tablets')
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (4, N'Smart Phones')
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (5, N'Gadgets and Accesories')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([customer_id], [first_name], [last_name], [phone], [email], [street], [city], [state], [zip_code]) VALUES (1, N'Debra', N'Burks', NULL, N'debra.burks@yahoo.com', N'9273 Thorne Ave. ', N'Orchard Park', N'NY', N'14127')
INSERT [dbo].[Customer] ([customer_id], [first_name], [last_name], [phone], [email], [street], [city], [state], [zip_code]) VALUES (2, N'Kasha', N'Todd', NULL, N'kasha.todd@yahoo.com', N'910 Vine Street ', N'Campbell', N'CA', N'95008')
INSERT [dbo].[Customer] ([customer_id], [first_name], [last_name], [phone], [email], [street], [city], [state], [zip_code]) VALUES (3, N'Tameka', N'Fisher', NULL, N'tameka.fisher@aol.com', N'769C Honey Creek St. ', N'Redondo Beach', N'CA', N'90278')
INSERT [dbo].[Customer] ([customer_id], [first_name], [last_name], [phone], [email], [street], [city], [state], [zip_code]) VALUES (4, N'Daryl', N'Spence', NULL, N'daryl.spence@aol.com', N'988 Pearl Lane ', N'Uniondale', N'NY', N'11553')
INSERT [dbo].[Customer] ([customer_id], [first_name], [last_name], [phone], [email], [street], [city], [state], [zip_code]) VALUES (5, N'Charolette', N'Rice', N'(916) 381-6003', N'charolette.rice@msn.com', N'107 River Dr. ', N'Sacramento', N'CA', N'95820')
INSERT [dbo].[Customer] ([customer_id], [first_name], [last_name], [phone], [email], [street], [city], [state], [zip_code]) VALUES (6, N'Lyndsey', N'Bean', NULL, N'lyndsey.bean@hotmail.com', N'769 West Road ', N'Fairport', N'NY', N'14450')
INSERT [dbo].[Customer] ([customer_id], [first_name], [last_name], [phone], [email], [street], [city], [state], [zip_code]) VALUES (7, N'Latasha', N'Hays', N'(716) 986-3359', N'latasha.hays@hotmail.com', N'7014 Manor Station Rd. ', N'Buffalo', N'NY', N'14215')
INSERT [dbo].[Customer] ([customer_id], [first_name], [last_name], [phone], [email], [street], [city], [state], [zip_code]) VALUES (8, N'Jacquline', N'Duncan', NULL, N'jacquline.duncan@yahoo.com', N'15 Brown St. ', N'Jackson Heights', N'NY', N'11372')
INSERT [dbo].[Customer] ([customer_id], [first_name], [last_name], [phone], [email], [street], [city], [state], [zip_code]) VALUES (9, N'Genoveva', N'Baldwin', NULL, N'genoveva.baldwin@msn.com', N'8550 Spruce Drive ', N'Port Washington', N'NY', N'11050')
INSERT [dbo].[Customer] ([customer_id], [first_name], [last_name], [phone], [email], [street], [city], [state], [zip_code]) VALUES (10, N'Pamelia', N'Newman', NULL, N'pamelia.newman@gmail.com', N'476 Chestnut Ave. ', N'Monroe', N'NY', N'10950')
INSERT [dbo].[Customer] ([customer_id], [first_name], [last_name], [phone], [email], [street], [city], [state], [zip_code]) VALUES (11, N'Debra', N'Burks', NULL, N'debra.burks@yahoo.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[Customer] ([customer_id], [first_name], [last_name], [phone], [email], [street], [city], [state], [zip_code]) VALUES (12, N'Kasha', N'Todd', NULL, N'kasha.todd@yahoo.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[Customer] ([customer_id], [first_name], [last_name], [phone], [email], [street], [city], [state], [zip_code]) VALUES (13, N'Tameka', N'Fisher', NULL, N'tameka.fisher@aol.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[Customer] ([customer_id], [first_name], [last_name], [phone], [email], [street], [city], [state], [zip_code]) VALUES (14, N'Daryl', N'Spence', NULL, N'daryl.spence@aol.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[Customer] ([customer_id], [first_name], [last_name], [phone], [email], [street], [city], [state], [zip_code]) VALUES (15, N'Charolette', N'Rice', N'(916) 381-6003', N'charolette.rice@msn.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[Customer] ([customer_id], [first_name], [last_name], [phone], [email], [street], [city], [state], [zip_code]) VALUES (16, N'Lyndsey', N'Bean', NULL, N'lyndsey.bean@hotmail.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[Customer] ([customer_id], [first_name], [last_name], [phone], [email], [street], [city], [state], [zip_code]) VALUES (17, N'Latasha', N'Hays', N'(716) 986-3359', N'latasha.hays@hotmail.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[Customer] ([customer_id], [first_name], [last_name], [phone], [email], [street], [city], [state], [zip_code]) VALUES (18, N'Jacquline', N'Duncan', NULL, N'jacquline.duncan@yahoo.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[Customer] ([customer_id], [first_name], [last_name], [phone], [email], [street], [city], [state], [zip_code]) VALUES (19, N'Genoveva', N'Baldwin', NULL, N'genoveva.baldwin@msn.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[Customer] ([customer_id], [first_name], [last_name], [phone], [email], [street], [city], [state], [zip_code]) VALUES (20, N'Pamelia', N'Newman', NULL, N'pamelia.newman@gmail.com', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Customer] OFF
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([order_id], [customer_id], [order_status], [order_date], [required_date], [shipped_date]) VALUES (1, 1, 4, CAST(N'2019-01-01' AS Date), CAST(N'2019-01-03' AS Date), CAST(N'2019-01-03' AS Date))
INSERT [dbo].[Orders] ([order_id], [customer_id], [order_status], [order_date], [required_date], [shipped_date]) VALUES (2, 3, 4, CAST(N'2019-01-01' AS Date), CAST(N'2019-01-04' AS Date), CAST(N'2019-01-03' AS Date))
INSERT [dbo].[Orders] ([order_id], [customer_id], [order_status], [order_date], [required_date], [shipped_date]) VALUES (3, 2, 4, CAST(N'2019-01-02' AS Date), CAST(N'2019-01-05' AS Date), CAST(N'2019-01-03' AS Date))
INSERT [dbo].[Orders] ([order_id], [customer_id], [order_status], [order_date], [required_date], [shipped_date]) VALUES (4, 1, 4, CAST(N'2019-01-03' AS Date), CAST(N'2019-01-04' AS Date), CAST(N'2019-01-05' AS Date))
INSERT [dbo].[Orders] ([order_id], [customer_id], [order_status], [order_date], [required_date], [shipped_date]) VALUES (5, 9, 4, CAST(N'2019-01-03' AS Date), CAST(N'2019-01-06' AS Date), CAST(N'2019-01-06' AS Date))
INSERT [dbo].[Orders] ([order_id], [customer_id], [order_status], [order_date], [required_date], [shipped_date]) VALUES (6, 5, 4, CAST(N'2019-01-04' AS Date), CAST(N'2019-01-07' AS Date), CAST(N'2019-01-05' AS Date))
INSERT [dbo].[Orders] ([order_id], [customer_id], [order_status], [order_date], [required_date], [shipped_date]) VALUES (7, 7, 4, CAST(N'2019-01-04' AS Date), CAST(N'2019-01-07' AS Date), CAST(N'2019-01-05' AS Date))
INSERT [dbo].[Orders] ([order_id], [customer_id], [order_status], [order_date], [required_date], [shipped_date]) VALUES (8, 8, 4, CAST(N'2019-01-04' AS Date), CAST(N'2019-01-05' AS Date), CAST(N'2019-01-05' AS Date))
INSERT [dbo].[Orders] ([order_id], [customer_id], [order_status], [order_date], [required_date], [shipped_date]) VALUES (9, 9, 4, CAST(N'2019-01-05' AS Date), CAST(N'2019-01-08' AS Date), CAST(N'2019-01-08' AS Date))
INSERT [dbo].[Orders] ([order_id], [customer_id], [order_status], [order_date], [required_date], [shipped_date]) VALUES (10, 6, 4, CAST(N'2019-01-05' AS Date), CAST(N'2019-01-06' AS Date), CAST(N'2019-01-06' AS Date))
SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (2, N'Apple iMac', 2, 1, 2016, CAST(120000.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (3, N'Dell XPS', 1, 1, 2019, CAST(89000.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (4, N'HP ENVY Curved', 4, 2, 2020, CAST(140000.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (5, N'Lenovo 330', 7, 1, 2019, CAST(22500.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (6, N'Microsoft Surface Pro', 10, 3, 2019, CAST(70000.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (7, N'Apple iPad Pro', 2, 3, 2018, CAST(59980.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (8, N'Wireless Charger Qi Samsung', 8, 5, 2016, CAST(39990.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (9, N'Samsung Galaxy Fold', 8, 4, 2019, CAST(139000.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([product_id], [product_name], [brand_id], [category_id], [model_year], [list_price]) VALUES (10, N'Apple iPhone 11 Pro 64GB', 2, 4, 2019, CAST(76990.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[Product] OFF
ALTER TABLE [dbo].[Order_item] ADD  DEFAULT ((0)) FOR [discount]
GO
ALTER TABLE [dbo].[Order_item]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([order_id])
GO
ALTER TABLE [dbo].[Order_item]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([product_id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([customer_id])
REFERENCES [dbo].[Customer] ([customer_id])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([brand_id])
REFERENCES [dbo].[Brand] ([brand_id])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([category_id])
REFERENCES [dbo].[Category] ([category_id])
GO
/****** Object:  StoredProcedure [dbo].[Creatorderitem]    Script Date: 23-Jan-20 8:18:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Creatorderitem]
( 
    @Ordern_id char(10), 
    @Product_id CHAR(10),
	--@PersonID char(10),
    @Quantity int
)
AS BEGIN

    SET NOCOUNT ON;

    --Insert Order_item
    --SET quantity = quantity
    --WHERE product_id = @ProductID 
    --    AND order_id = @Order_id 
    --    AND customer_id = @PersonID

    --IF @@ROWCOUNT = 0
        INSERT INTO Order_item 
        (
            order_id, Product_id, quantity--, customer_id
        ) 
        VALUES
        (
            @Ordern_id, @Product_id, @Quantity--, @PersonID
        )
END
GO
/****** Object:  StoredProcedure [dbo].[GetBrandList]    Script Date: 23-Jan-20 8:18:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetBrandList]
AS
BEGIN
SET NOCOUNT ON
 
SELECT   brand_name, brand_id  FROM 
  Brand
ORDER BY
	brand_name;


END;
GO
/****** Object:  StoredProcedure [dbo].[GetCategoryList]    Script Date: 23-Jan-20 8:18:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetCategoryList]
AS
BEGIN
SET NOCOUNT ON
 
SELECT   category_name ,  category_id  FROM 
  Category
ORDER BY
	category_name;

 
END;
GO
/****** Object:  StoredProcedure [dbo].[GetProductList]    Script Date: 23-Jan-20 8:18:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetProductList]
AS
BEGIN
SET NOCOUNT ON
 
SELECT   product_name , product_id , brand_id  FROM 
  Product
ORDER BY
	product_name;

 
END;
GO
/****** Object:  StoredProcedure [dbo].[Makeorderitem]    Script Date: 23-Jan-20 8:18:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Makeorderitem] 
@id int, 
@order_id int, 
@customer_id int, 
@order_status int
--@product_name varchar(50)

AS



SET NOCOUNT ON

-- 1 - Declare variables

-- 2 - Initialize variables

-- 3 - Execute INSERT command
INSERT INTO [dbo].[Orders]
            (order_id, customer_id, order_status )
        
     VALUES
            (@order_id, @customer_id, @order_status )
GO
/****** Object:  StoredProcedure [dbo].[spDeleteProduct]    Script Date: 23-Jan-20 8:18:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDeleteProduct]
@id int
AS
	DELETE FROM Product
	WHERE product_id = @id;


GO
/****** Object:  StoredProcedure [dbo].[spGetProductsInPriceRange]    Script Date: 23-Jan-20 8:18:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetProductsInPriceRange]
@from varchar,
@to varchar
AS
	SELECT product_id, product_name, list_price 
	FROM Product WHERE list_price BETWEEN @from and @to;

GO
/****** Object:  StoredProcedure [dbo].[spInsertProduct]    Script Date: 23-Jan-20 8:18:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertProduct]
@name nvarchar(30),
@price decimal,
@brand_id nvarchar(30),
@Category varchar(30)
AS
	INSERT INTO Product (product_name, list_price, brand_id, category_id)
	VALUES(@name, @price, @brand_id, @Category);


GO
/****** Object:  StoredProcedure [dbo].[spUpdateProduct]    Script Date: 23-Jan-20 8:18:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spUpdateProduct]
@id int,
@name nvarchar(30),
@price decimal
AS
	UPDATE Product
	SET product_name = @name, list_price = @price
	WHERE product_id = @id;

GO

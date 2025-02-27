USE [master]
GO
/****** Object:  Database [PRJ301_SE1726]    Script Date: 07/11/2022 2:21:23 SA ******/
CREATE DATABASE [PRJ301_SE1726]
 go
USE [PRJ301_SE1726]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 07/11/2022 2:21:23 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[uid] [int] NULL,
	[pid] [int] NULL,
	[quantity] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 07/11/2022 2:21:23 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 07/11/2022 2:21:23 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[order_date] [date] NULL,
	[total] [float] NULL,
	[notes] [nvarchar](200) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 07/11/2022 2:21:23 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[detail_id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[product_id] [int] NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 07/11/2022 2:21:23 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[product_name] [nvarchar](50) NULL,
	[price] [float] NULL,
	[stock] [int] NULL,
	[category_id] [int] NULL,
	[img] [ntext] NULL,
	[description] [nvarchar](1000) NULL,
	[create_date] [date] NULL,
	[size] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 07/11/2022 2:21:23 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[role_id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 07/11/2022 2:21:23 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[user_name] [nvarchar](50) NULL,
	[email] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[address] [nvarchar](50) NULL,
	[gender] [bit] NULL,
	[phone] [nchar](11) NULL,
	[role_id] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Cart] ([uid], [pid], [quantity]) VALUES (2, 3, 3)
GO
INSERT [dbo].[Cart] ([uid], [pid], [quantity]) VALUES (6, 16, 3)
GO
INSERT [dbo].[Cart] ([uid], [pid], [quantity]) VALUES (6, 7, 1)
GO
SET IDENTITY_INSERT [dbo].[Category] ON 
GO
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (1, N'Jacket')
GO
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (2, N'T-shirt')
GO
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (3, N'Polo')
GO
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (4, N'Jean')
GO
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (5, N'Hoa Chia Buon')
GO
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 
GO
INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [total], [notes]) VALUES (1, 2, CAST(N'2019-08-07' AS Date), 100, N'alooo')
GO
INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [total], [notes]) VALUES (2, 2, CAST(N'2018-09-08' AS Date), 100, N'123')
GO
INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [total], [notes]) VALUES (3, 2, CAST(N'2020-05-05' AS Date), 100, N'ok')
GO
INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [total], [notes]) VALUES (4, 3, CAST(N'2021-06-04' AS Date), 100, N'alo')
GO
INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [total], [notes]) VALUES (5, 3, CAST(N'2022-09-06' AS Date), 100, N'Hello')
GO
INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [total], [notes]) VALUES (6, 3, CAST(N'2021-08-09' AS Date), 100, N'goof')
GO
INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [total], [notes]) VALUES (7, 4, CAST(N'2019-07-02' AS Date), 100, N'good')
GO
INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [total], [notes]) VALUES (8, 4, CAST(N'2022-06-16' AS Date), 11.5, N'quick')
GO
INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [total], [notes]) VALUES (9, 4, CAST(N'2022-07-05' AS Date), 9, N'quick')
GO
INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [total], [notes]) VALUES (10, 4, CAST(N'2022-07-05' AS Date), 20, N'')
GO
INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [total], [notes]) VALUES (11, 3, CAST(N'2022-07-13' AS Date), 17.5, N'quick')
GO
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (1, 1, 2, 20, 6)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (2, 1, 3, 20, 5)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (3, 1, 5, 20, 4)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (4, 1, 4, 20, 9)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (5, 1, 7, 20, 2)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (6, 2, 5, 20, 1)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (7, 2, 2, 20, 1)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (8, 2, 8, 20, 5)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (9, 3, 4, 20, 4)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (10, 3, 5, 20, 5)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (11, 4, 9, 20, 2)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (12, 4, 7, 20, 3)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (13, 5, 5, 20, 1)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (14, 5, 12, 20, 5)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (15, 6, 13, 20, 6)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (16, 6, 13, 20, 5)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (17, 7, 4, 20, 2)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (18, 7, 26, 20, 1)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (19, 8, 24, 2.5, 1)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (20, 8, 28, 4.5, 1)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (21, 8, 27, 4.5, 1)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (22, 9, 29, 4.5, 2)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (23, 10, 23, 3, 5)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (24, 10, 22, 2.5, 2)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (25, 11, 21, 9, 1)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (26, 11, 20, 8.5, 1)
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date], [size]) VALUES (2, N'WOP 2025', 3.5, 100, 1, N'https://product.hstatic.net/1000184601/product/women_den__1__ae9736bbcd364afeb55337607c7c4127_master.jpg', N'Basic form Regular umbrella jacket with accents at the 2-color zipper and cool ventilation mesh on the back. The inner body is lined with thin mesh, which is cool and soft for the wearer. There are 2 front zipper pockets and 1 inner side pocket for convenient storage. The elastic waistband hugs the wrist, the elastic band has a stopper that can increase the stiffness for comfortable adjustment.

Material: Umbrella material, 100% polyester composition
Shape: Regular
Color: Female: White, Black, Blue, Yellow
Production: Vietnam', CAST(N'2019-01-06' AS Date), 39)
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date], [size]) VALUES (3, N'WOP 20251', 4, 100, 1, N'https://product.hstatic.net/1000184601/product/women_den__1__ae9736bbcd364afeb55337607c7c4127_master.jpg', N'Basic form Regular umbrella jacket with accents at the 2-color zipper and cool ventilation mesh on the back. The inner body is lined with thin mesh, which is cool and soft for the wearer. There are 2 front zipper pockets and 1 inner side pocket for convenient storage. The elastic waistband hugs the wrist, the elastic band has a stopper that can increase the stiffness for comfortable adjustment.

Material: Umbrella material, 100% polyester composition
Shape: Regular
Color: Female: White, Black, Blue, Yellow
Production: Vietnam', CAST(N'2022-01-06' AS Date), 37)
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date], [size]) VALUES (4, N'WOP 20252', 4.5, 100, 1, N'https://product.hstatic.net/1000184601/product/women_den__1__ae9736bbcd364afeb55337607c7c4127_master.jpg', N'Basic form Regular umbrella jacket with accents at the 2-color zipper and cool ventilation mesh on the back. The inner body is lined with thin mesh, which is cool and soft for the wearer. There are 2 front zipper pockets and 1 inner side pocket for convenient storage. The elastic waistband hugs the wrist, the elastic band has a stopper that can increase the stiffness for comfortable adjustment.

Material: Umbrella material, 100% polyester composition
Shape: Regular
Color: Female: White, Black, Blue, Yellow
Production: Vietnam', CAST(N'2021-01-06' AS Date), 40)
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date], [size]) VALUES (5, N'WOP 20253', 2.5, 100, 1, N'https://product.hstatic.net/1000184601/product/women_den__1__ae9736bbcd364afeb55337607c7c4127_master.jpg', N'Basic form Regular umbrella jacket with accents at the 2-color zipper and cool ventilation mesh on the back. The inner body is lined with thin mesh, which is cool and soft for the wearer. There are 2 front zipper pockets and 1 inner side pocket for convenient storage. The elastic waistband hugs the wrist, the elastic band has a stopper that can increase the stiffness for comfortable adjustment.

Material: Umbrella material, 100% polyester composition
Shape: Regular
Color: Female: White, Black, Blue, Yellow
Production: Vietnam', CAST(N'2020-01-06' AS Date), 38)
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date], [size]) VALUES (6, N'WOP 20254', 4, 100, 1, N'https://product.hstatic.net/1000184601/product/women_den__1__ae9736bbcd364afeb55337607c7c4127_master.jpg', N'Basic form Regular umbrella jacket with accents at the 2-color zipper and cool ventilation mesh on the back. The inner body is lined with thin mesh, which is cool and soft for the wearer. There are 2 front zipper pockets and 1 inner side pocket for convenient storage. The elastic waistband hugs the wrist, the elastic band has a stopper that can increase the stiffness for comfortable adjustment.

Material: Umbrella material, 100% polyester composition
Shape: Regular
Color: Female: White, Black, Blue, Yellow
Production: Vietnam', CAST(N'2019-04-06' AS Date), 39)
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date], [size]) VALUES (7, N'WOP 20255', 3, 100, 1, N'https://product.hstatic.net/1000184601/product/women_den__1__ae9736bbcd364afeb55337607c7c4127_master.jpg', N'Basic form Regular umbrella jacket with accents at the 2-color zipper and cool ventilation mesh on the back. The inner body is lined with thin mesh, which is cool and soft for the wearer. There are 2 front zipper pockets and 1 inner side pocket for convenient storage. The elastic waistband hugs the wrist, the elastic band has a stopper that can increase the stiffness for comfortable adjustment.

Material: Umbrella material, 100% polyester composition
Shape: Regular
Color: Female: White, Black, Blue, Yellow
Production: Vietnam', CAST(N'2020-01-06' AS Date), 42)
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date], [size]) VALUES (8, N'MTS 11951', 4, 100, 2, N'https://product.hstatic.net/1000184601/product/men_den__1__77df5f3ca9ff441d987bbf77a422bcd4_master.jpg', N'Basic form Regular umbrella jacket with accents at the 2-color zipper and cool ventilation mesh on the back. The inner body is lined with thin mesh, which is cool and soft for the wearer. There are 2 front zipper pockets and 1 inner side pocket for convenient storage. The elastic waistband hugs the wrist, the elastic band has a stopper that can increase the stiffness for comfortable adjustment.

Material: Umbrella material, 100% polyester composition
Shape: Regular
Color: Female: White, Black, Blue, Yellow
Production: Vietnam', CAST(N'2019-04-06' AS Date), 41)
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date], [size]) VALUES (9, N'MTS 11952', 5.5, 100, 2, N'https://product.hstatic.net/1000184601/product/men_den__1__77df5f3ca9ff441d987bbf77a422bcd4_master.jpg', N'Flower bouquets prepared with care and skill to make anyone say WOW! Order today.', CAST(N'2019-05-06' AS Date), 38)
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date], [size]) VALUES (10, N'MTS 11953', 4, 100, 2, N'https://product.hstatic.net/1000184601/product/men_den__1__77df5f3ca9ff441d987bbf77a422bcd4_master.jpg', N'Flower bouquets prepared with care and skill to make anyone say WOW! Order today.', CAST(N'2019-04-06' AS Date), 39)
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date], [size]) VALUES (11, N'MTS 11954', 6.5, 100, 2, N'https://product.hstatic.net/1000184601/product/men_den__1__77df5f3ca9ff441d987bbf77a422bcd4_master.jpg', N'Flower bouquets prepared with care and skill to make anyone say WOW! Order today.', CAST(N'2019-05-06' AS Date), 40)
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date], [size]) VALUES (12, N'MTS 1195', 7, 100, 2, N'https://product.hstatic.net/1000184601/product/men_den__1__77df5f3ca9ff441d987bbf77a422bcd4_master.jpg', N'Flower bouquets prepared with care and skill to make anyone say WOW! Order today.', CAST(N'2019-04-06' AS Date), 41)
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date], [size]) VALUES (13, N'MTS 11955', 8.5, 100, 2, N'https://product.hstatic.net/1000184601/product/men_den__1__77df5f3ca9ff441d987bbf77a422bcd4_master.jpg', N'Flower bouquets prepared with care and skill to make anyone say WOW! Order today.', CAST(N'2019-05-06' AS Date), 42)
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date], [size]) VALUES (14, N'WPO 2017', 4, 100, 3, N'https://product.hstatic.net/1000184601/product/women_trang__1__d1d2033234e341568299a8aadb229e5d_master.jpg', N'Pants with a simple design that is easy to coordinate. With a mom fit shape, it not only hides the flaws that women fear, but also increases confidence when it suits many different styles.

Material: JSD022 - 100OZ 98 % cotton - 2 % spandex
Form: Mom fit
Color: Dark green, Light green
Production: Vietnam', CAST(N'2019-04-06' AS Date), 41)
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date], [size]) VALUES (16, N'WPO 20171', 123, 1005, 3, N'https://product.hstatic.net/1000184601/product/women_trang__1__d1d2033234e341568299a8aadb229e5d_master.jpg', N'Pants with a simple design that is easy to coordinate. With a mom fit shape, it not only hides the flaws that women fear, but also increases confidence when it suits many different styles.

Material: JSD022 - 100OZ 98 % cotton - 2 % spandex
Form: Mom fit
Color: Dark green, Light green
Production: Vietnam', CAST(N'2019-04-06' AS Date), 39)
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date], [size]) VALUES (17, N'WAF 20173', 6.5, 100, 3, N'https://product.hstatic.net/1000184601/product/women_trang__1__d1d2033234e341568299a8aadb229e5d_master.jpg', N'Pants with a simple design that is easy to coordinate. With a mom fit shape, it not only hides the flaws that women fear, but also increases confidence when it suits many different styles.

Material: JSD022 - 100OZ 98 % cotton - 2 % spandex
Form: Mom fit
Color: Dark green, Light green
Production: Vietnam', CAST(N'2019-05-06' AS Date), 38)
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date], [size]) VALUES (18, N'WAF 20174', 7, 100, 3, N'https://product.hstatic.net/1000184601/product/women_trang__1__d1d2033234e341568299a8aadb229e5d_master.jpg', N'Pants with a simple design that is easy to coordinate. With a mom fit shape, it not only hides the flaws that women fear, but also increases confidence when it suits many different styles.

Material: JSD022 - 100OZ 98 % cotton - 2 % spandex
Form: Mom fit
Color: Dark green, Light green
Production: Vietnam', CAST(N'2019-04-06' AS Date), 37)
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date], [size]) VALUES (19, N'WAF 20175', 8.5, 100, 3, N'https://product.hstatic.net/1000184601/product/women_trang__1__d1d2033234e341568299a8aadb229e5d_master.jpg', N'Pants with a simple design that is easy to coordinate. With a mom fit shape, it not only hides the flaws that women fear, but also increases confidence when it suits many different styles.

Material: JSD022 - 100OZ 98 % cotton - 2 % spandex
Form: Mom fit
Color: Dark green, Light green
Production: Vietnam', CAST(N'2019-05-06' AS Date), 39)
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date], [size]) VALUES (20, N'HG 90329', 3.5, 100, 4, N'https://product.hstatic.net/1000184601/product/2_xanh-dam_0e1f6f9aeb624dbf969f2288178fdc5a_master.jpg', N'Pants with a simple design that is easy to coordinate. With a mom fit shape, it not only hides the flaws that women fear, but also increases confidence when it suits many different styles.

Material: JSD022 - 100OZ 98 % cotton - 2 % spandex
Form: Mom fit
Color: Dark green, Light green
Production: Vietnam', CAST(N'2019-04-06' AS Date), 39)
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date], [size]) VALUES (21, N'HG 90339', 5.5, 100, 4, N'https://product.hstatic.net/1000184601/product/2_xanh-dam_0e1f6f9aeb624dbf969f2288178fdc5a_master.jpg', N'Pants with a simple design that is easy to coordinate. With a mom fit shape, it not only hides the flaws that women fear, but also increases confidence when it suits many different styles.

Material: JSD022 - 100OZ 98 % cotton - 2 % spandex
Form: Mom fit
Color: Dark green, Light green
Production: Vietnam', CAST(N'2019-05-06' AS Date), 38)
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date], [size]) VALUES (22, N'HG 93039', 9, 100, 4, N'https://product.hstatic.net/1000184601/product/2_xanh-dam_0e1f6f9aeb624dbf969f2288178fdc5a_master.jpg', N'Pants with a simple design that is easy to coordinate. With a mom fit shape, it not only hides the flaws that women fear, but also increases confidence when it suits many different styles.

Material: JSD022 - 100OZ 98 % cotton - 2 % spandex
Form: Mom fit
Color: Dark green, Light green
Production: Vietnam', CAST(N'2019-04-06' AS Date), 39)
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date], [size]) VALUES (23, N'HG 92039', 8.5, 100, 4, N'https://product.hstatic.net/1000184601/product/2_xanh-dam_0e1f6f9aeb624dbf969f2288178fdc5a_master.jpg', N'Pants with a simple design that is easy to coordinate. With a mom fit shape, it not only hides the flaws that women fear, but also increases confidence when it suits many different styles.

Material: JSD022 - 100OZ 98 % cotton - 2 % spandex
Form: Mom fit
Color: Dark green, Light green
Production: Vietnam', CAST(N'2019-05-06' AS Date), 32)
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date], [size]) VALUES (24, N'HG 90395', 10, 100, 4, N'https://product.hstatic.net/1000184601/product/2_xanh-dam_0e1f6f9aeb624dbf969f2288178fdc5a_master.jpg', N'Pants with a simple design that is easy to coordinate. With a mom fit shape, it not only hides the flaws that women fear, but also increases confidence when it suits many different styles.

Material: JSD022 - 100OZ 98 % cotton - 2 % spandex
Form: Mom fit
Color: Dark green, Light green
Production: Vietnam', CAST(N'2019-04-06' AS Date), 38)
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date], [size]) VALUES (25, N'HG 90319', 8.5, 100, 4, N'https://product.hstatic.net/1000184601/product/2_xanh-dam_0e1f6f9aeb624dbf969f2288178fdc5a_master.jpg', N'Pants with a simple design that is easy to coordinate. With a mom fit shape, it not only hides the flaws that women fear, but also increases confidence when it suits many different styles.

Material: JSD022 - 100OZ 98 % cotton - 2 % spandex
Form: Mom fit
Color: Dark green, Light green
Production: Vietnam', CAST(N'2019-05-06' AS Date), 36)
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date], [size]) VALUES (26, N'MSR 1018', 9, 99, 5, N'https://product.hstatic.net/1000184601/product/men_kem__1__fdb7fb9997764d4ca7e8c2da978f2df4_master.jpg', N'Pants with a simple design that is easy to coordinate. With a mom fit shape, it not only hides the flaws that women fear, but also increases confidence when it suits many different styles.

Material: JSD022 - 100OZ 98 % cotton - 2 % spandex
Form: Mom fit
Color: Dark green, Light green
Production: Vietnam', CAST(N'2019-04-06' AS Date), 35)
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date], [size]) VALUES (27, N'MSR 10181', 8.5, 99, 5, N'https://product.hstatic.net/1000184601/product/men_kem__1__fdb7fb9997764d4ca7e8c2da978f2df4_master.jpg', N'Pants with a simple design that is easy to coordinate. With a mom fit shape, it not only hides the flaws that women fear, but also increases confidence when it suits many different styles.

Material: JSD022 - 100OZ 98 % cotton - 2 % spandex
Form: Mom fit
Color: Dark green, Light green
Production: Vietnam', CAST(N'2019-05-06' AS Date), 42)
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date], [size]) VALUES (28, N'MSR 10182', 10, 100, 5, N'https://product.hstatic.net/1000184601/product/men_kem__1__fdb7fb9997764d4ca7e8c2da978f2df4_master.jpg', N'Pants with a simple design that is easy to coordinate. With a mom fit shape, it not only hides the flaws that women fear, but also increases confidence when it suits many different styles.

Material: JSD022 - 100OZ 98 % cotton - 2 % spandex
Form: Mom fit
Color: Dark green, Light green
Production: Vietnam', CAST(N'2019-04-06' AS Date), 41)
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date], [size]) VALUES (29, N'MSR 10183', 8.5, 100, 5, N'https://product.hstatic.net/1000184601/product/men_kem__1__fdb7fb9997764d4ca7e8c2da978f2df4_master.jpg', N'Pants with a simple design that is easy to coordinate. With a mom fit shape, it not only hides the flaws that women fear, but also increases confidence when it suits many different styles.

Material: JSD022 - 100OZ 98 % cotton - 2 % spandex
Form: Mom fit
Color: Dark green, Light green
Production: Vietnam', CAST(N'2019-05-06' AS Date), 39)
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date], [size]) VALUES (31, N'MSR 10184', 3.1, 10, 5, N'https://product.hstatic.net/1000184601/product/men_kem__1__fdb7fb9997764d4ca7e8c2da978f2df4_master.jpg', N'Pants with a simple design that is easy to coordinate. With a mom fit shape, it not only hides the flaws that women fear, but also increases confidence when it suits many different styles.

Material: JSD022 - 100OZ 98 % cotton - 2 % spandex
Form: Mom fit
Color: Dark green, Light green
Production: Vietnam', CAST(N'2022-10-13' AS Date), 38)
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date], [size]) VALUES (32, N'MSR 10185', 3.1, 10, 5, N'https://product.hstatic.net/1000184601/product/men_kem__1__fdb7fb9997764d4ca7e8c2da978f2df4_master.jpg', N'Pants with a simple design that is easy to coordinate. With a mom fit shape, it not only hides the flaws that women fear, but also increases confidence when it suits many different styles.

Material: JSD022 - 100OZ 98 % cotton - 2 % spandex
Form: Mom fit
Color: Dark green, Light green
Production: Vietnam', CAST(N'2022-10-13' AS Date), 37)
GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 
GO
INSERT [dbo].[Roles] ([role_id], [role_name]) VALUES (1, N'Customer')
GO
INSERT [dbo].[Roles] ([role_id], [role_name]) VALUES (2, N'Admin')
GO
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 
GO
INSERT [dbo].[Users] ([user_id], [user_name], [email], [password], [address], [gender], [phone], [role_id]) VALUES (2, N'vu01@gmail.com', N'vu01@gmail.com', N'e10adc3949ba59abbe56e057f20f883e', N'hong cho anh oi', 1, N'0378387199 ', 1)
GO
INSERT [dbo].[Users] ([user_id], [user_name], [email], [password], [address], [gender], [phone], [role_id]) VALUES (3, N'123@12311111', N'123@12311111', N'4297f44b13955235245b2497399d7a93', N'dia chi', 0, N'0378387199 ', 2)
GO
INSERT [dbo].[Users] ([user_id], [user_name], [email], [password], [address], [gender], [phone], [role_id]) VALUES (4, N'vulhhe1633971@gmail.com', N'vulhhe1633971@gmail.com', N'14e1b600b1fd579f47433b88e8d85291', N'hong cho anh oi', 1, N'0378387199 ', 1)
GO
INSERT [dbo].[Users] ([user_id], [user_name], [email], [password], [address], [gender], [phone], [role_id]) VALUES (5, N'vulhhe163397@gmail.com1', N'vulhhe163397@gmail.com1', N'e10adc3949ba59abbe56e057f20f883e', N'hong cho anh oi', 1, N'123123213  ', 1)
GO
INSERT [dbo].[Users] ([user_id], [user_name], [email], [password], [address], [gender], [phone], [role_id]) VALUES (6, N'vulhhe163397s1@gmail.com1', N'vulhhe163397s1@gmail.com1', N'e10adc3949ba59abbe56e057f20f883e', N'hong cho anh oi', 1, N'0378387199 ', 1)
GO
INSERT [dbo].[Users] ([user_id], [user_name], [email], [password], [address], [gender], [phone], [role_id]) VALUES (7, N'vulhhe16339@gmail.com', N'vulhhe16339@gmail.com', N'e10adc3949ba59abbe56e057f20f883e', N'hong cho anh oi', 1, N'0378387199 ', 1)
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Product] FOREIGN KEY([pid])
REFERENCES [dbo].[Product] ([product_id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Product]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Users] FOREIGN KEY([uid])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Users]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Users] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Users]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([product_id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([order_id])
REFERENCES [dbo].[Order] ([order_id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([category_id])
REFERENCES [dbo].[Category] ([category_id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles] FOREIGN KEY([role_id])
REFERENCES [dbo].[Roles] ([role_id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles]
GO
USE [master]
GO
ALTER DATABASE [PRJ301_SE1726] SET  READ_WRITE 
GO

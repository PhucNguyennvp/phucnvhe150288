USE [PRJ_Project]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 7/19/2022 2:45:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[uID] [int] IDENTITY(1,1) NOT NULL,
	[user] [varchar](255) NULL,
	[pass] [varchar](255) NULL,
	[displayName] [nvarchar](max) NULL,
	[address] [nvarchar](max) NULL,
	[email] [nvarchar](max) NULL,
	[phone] [nvarchar](50) NULL,
	[role] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[uID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 7/19/2022 2:45:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cid] [int] IDENTITY(1,1) NOT NULL,
	[cname] [nvarchar](50) NOT NULL,
	[images] [nvarchar](max) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 7/19/2022 2:45:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[ProductName] [nvarchar](max) NULL,
	[ProductImage] [nvarchar](max) NULL,
	[ProductPrice] [float] NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 7/19/2022 2:45:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NULL,
	[totalPrice] [float] NULL,
	[create_date] [date] NULL,
	[shipping_id] [int] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 7/19/2022 2:45:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[price] [money] NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[cateID] [int] NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipping]    Script Date: 7/19/2022 2:45:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipping](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[phone] [nvarchar](max) NULL,
	[address] [nvarchar](max) NULL,
 CONSTRAINT [PK_Shipping] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([uID], [user], [pass], [displayName], [address], [email], [phone], [role]) VALUES (1, N'admin', N'admin', N'Minh', N'Bac Ninh', N'abcd@gmail.com', N'1235456', N'1')
INSERT [dbo].[Account] ([uID], [user], [pass], [displayName], [address], [email], [phone], [role]) VALUES (2, N'user1', N'123456', N'User1', N'Bac Ninh', N'abc@gmail.com', N'1235456', N'0')
INSERT [dbo].[Account] ([uID], [user], [pass], [displayName], [address], [email], [phone], [role]) VALUES (3, N'admin2', N'admin2', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([uID], [user], [pass], [displayName], [address], [email], [phone], [role]) VALUES (1002, N'phuche150288', N'123456', N'mra', N'Bac Ninh', N'asf@gmail.com', N'1235456', N'0')
INSERT [dbo].[Account] ([uID], [user], [pass], [displayName], [address], [email], [phone], [role]) VALUES (1003, N'phuche150288', N'123456', N'mra', N'Bac Ninh', N'asf@gmail.com', N'1235456', NULL)
INSERT [dbo].[Account] ([uID], [user], [pass], [displayName], [address], [email], [phone], [role]) VALUES (1004, N'user2', N'123456', N'Binh', N'HCM', N'abc@gmail.com', N'0987654321', NULL)
INSERT [dbo].[Account] ([uID], [user], [pass], [displayName], [address], [email], [phone], [role]) VALUES (1005, N'BBB', N'123456', N'sa', N'Bac Ninh', N'nguyenphucnvpvn@gmail.com', N'0987654321', NULL)
INSERT [dbo].[Account] ([uID], [user], [pass], [displayName], [address], [email], [phone], [role]) VALUES (2002, N'phucnv', N'123456', N'Nguyen Van A', N'Bac Ninh', N'abc@gmail.com', N'1235456', NULL)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([cid], [cname], [images]) VALUES (1, N'T-shirts', N'images/t-shirts-img.jpg')
INSERT [dbo].[Category] ([cid], [cname], [images]) VALUES (2, N'Shirt', N'images/shirt-img.jpg')
INSERT [dbo].[Category] ([cid], [cname], [images]) VALUES (3, N'Hats', N'images/hats/hats-fedora-hat-manufacture-stack.jpg')
INSERT [dbo].[Category] ([cid], [cname], [images]) VALUES (4, N'Bags', N'images/women-bag-img.jpg')
INSERT [dbo].[Category] ([cid], [cname], [images]) VALUES (5, N'Shoes', N'images/shoes-img.jpg')
INSERT [dbo].[Category] ([cid], [cname], [images]) VALUES (6, N'Women Shoes', N'images/women-shoes-img.jpg')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([id], [order_id], [ProductName], [ProductImage], [ProductPrice], [quantity]) VALUES (1, 13, N'T-Shirt Elephant', N'images\tshirt\3.jpg', 123, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [ProductName], [ProductImage], [ProductPrice], [quantity]) VALUES (2, 14, N'Gem Wears', N'images\tshirt\18.jpg', 88, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [ProductName], [ProductImage], [ProductPrice], [quantity]) VALUES (3, 14, N'KettleKane', N'images\tshirt\15.jpg', 25, 2)
INSERT [dbo].[OrderDetail] ([id], [order_id], [ProductName], [ProductImage], [ProductPrice], [quantity]) VALUES (4, 14, N'Budget Promotion', N'images\tshirt\10.jpg', 34, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [ProductName], [ProductImage], [ProductPrice], [quantity]) VALUES (1002, 1013, N'NULLT-Shirt Printing Company', N'images\tshirt\6.jpg', 60, 2)
INSERT [dbo].[OrderDetail] ([id], [order_id], [ProductName], [ProductImage], [ProductPrice], [quantity]) VALUES (1003, 1013, N'CubeDeer', N'images\tshirt\12.jpg', 98, 2)
INSERT [dbo].[OrderDetail] ([id], [order_id], [ProductName], [ProductImage], [ProductPrice], [quantity]) VALUES (1004, 1017, N'Budget Promotion', N'images\tshirt\10.jpg', 34, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [ProductName], [ProductImage], [ProductPrice], [quantity]) VALUES (1005, 1017, N'Quantic Shirts   ', N'images\tshirt\27.jpg', 43, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [ProductName], [ProductImage], [ProductPrice], [quantity]) VALUES (1006, 1017, N'Excellent Everyday', N'images\Bags\accessories_bag10.jpg', 123, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [ProductName], [ProductImage], [ProductPrice], [quantity]) VALUES (1007, 1017, N'Bags to Love', N'images\Bags\accessories_bag10000.jpg', 88, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [ProductName], [ProductImage], [ProductPrice], [quantity]) VALUES (1008, 1018, N'ThatShirt', N'images\tshirt\5.jpg', 299, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [ProductName], [ProductImage], [ProductPrice], [quantity]) VALUES (1009, 1018, N'Princess Shirts', N'images\tshirt\21.jpg', 60, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [ProductName], [ProductImage], [ProductPrice], [quantity]) VALUES (1010, 1019, N'NULLT-Shirt Printing Company', N'images\tshirt\6.jpg', 60, 3)
INSERT [dbo].[OrderDetail] ([id], [order_id], [ProductName], [ProductImage], [ProductPrice], [quantity]) VALUES (1011, 1019, N'Wholesale Blank', N'images\tshirt\8.jpg', 30, 4)
INSERT [dbo].[OrderDetail] ([id], [order_id], [ProductName], [ProductImage], [ProductPrice], [quantity]) VALUES (1012, 1020, N'MightyHorse', N'images\tshirt\11.jpg', 56, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [ProductName], [ProductImage], [ProductPrice], [quantity]) VALUES (1013, 1020, N'CubeDeer', N'images\tshirt\12.jpg', 98, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [ProductName], [ProductImage], [ProductPrice], [quantity]) VALUES (1014, 1020, N'ThatShirt', N'images\tshirt\5.jpg', 299, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [ProductName], [ProductImage], [ProductPrice], [quantity]) VALUES (1015, 1021, N'NULXrated Wears', N'images\tshirt\19.jpg', 81, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [ProductName], [ProductImage], [ProductPrice], [quantity]) VALUES (1016, 1021, N'Sweatshirt Place', N'images\tshirt\24.jpg', 444, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [ProductName], [ProductImage], [ProductPrice], [quantity]) VALUES (1017, 1022, N'T-Shirt Elephant', N'images\tshirt\3.jpg', 123, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [ProductName], [ProductImage], [ProductPrice], [quantity]) VALUES (1018, 1023, N'Gem Wears', N'images\tshirt\18.jpg', 88, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [ProductName], [ProductImage], [ProductPrice], [quantity]) VALUES (1019, 1023, N'Just teesing', N'images\tshirt\32.jpg', 12, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [ProductName], [ProductImage], [ProductPrice], [quantity]) VALUES (1020, 1024, N'Babygirl', N'images\tshirt\31.jpg', 55, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [ProductName], [ProductImage], [ProductPrice], [quantity]) VALUES (1021, 1024, N'Just teesing', N'images\tshirt\32.jpg', 12, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [ProductName], [ProductImage], [ProductPrice], [quantity]) VALUES (1022, 1024, N'OfflineOnline ', N'images\tshirt\26.jpg', 341, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [ProductName], [ProductImage], [ProductPrice], [quantity]) VALUES (1023, 1025, N'Bees Tees', N'images\tshirt\33.jpg', 56, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [ProductName], [ProductImage], [ProductPrice], [quantity]) VALUES (1024, 1026, N'NULLT-Shirt Printing Company', N'images\tshirt\6.jpg', 60, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [ProductName], [ProductImage], [ProductPrice], [quantity]) VALUES (1025, 1026, N'Blank Shirts', N'images\tshirt\4.jpg', 50, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [ProductName], [ProductImage], [ProductPrice], [quantity]) VALUES (1026, 1027, N'NULXrated Wears', N'images\tshirt\19.jpg', 81, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [ProductName], [ProductImage], [ProductPrice], [quantity]) VALUES (1027, 1027, N'Blank Shirts', N'images\tshirt\4.jpg', 50, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [ProductName], [ProductImage], [ProductPrice], [quantity]) VALUES (1028, 1028, N'Ethics Shoes', N'images\loafers\image3.jpeg', 58, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [ProductName], [ProductImage], [ProductPrice], [quantity]) VALUES (1029, 1029, N'Coyote T-Shirts', N'images\tshirt\7.jpg', 18, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [ProductName], [ProductImage], [ProductPrice], [quantity]) VALUES (1030, 1029, N'BetterMind', N'images\tshirt\22.jpg', 32, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [ProductName], [ProductImage], [ProductPrice], [quantity]) VALUES (1031, 1029, N'Alive Online', N'images\tshirt\25.jpg', 399, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [ProductName], [ProductImage], [ProductPrice], [quantity]) VALUES (1032, 1029, N'Genesco', N'images\loafers\image12.jpeg', 79, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [ProductName], [ProductImage], [ProductPrice], [quantity]) VALUES (1033, 1029, N'Fashionista', N'images\Bags\accessories_bag10006.jpg', 132, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [ProductName], [ProductImage], [ProductPrice], [quantity]) VALUES (2010, 2021, N'MightyHorse', N'images\tshirt\11.jpg', 56, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [ProductName], [ProductImage], [ProductPrice], [quantity]) VALUES (2011, 2021, N'Designs Nifty', N'images\tshirt\20.jpg', 47, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [ProductName], [ProductImage], [ProductPrice], [quantity]) VALUES (2012, 2021, N'Genesco', N'images\loafers\image12.jpeg', 79, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [ProductName], [ProductImage], [ProductPrice], [quantity]) VALUES (2013, 2021, N'Fantasy Bag', N'images\Bags\accessories_bag10003.jpg', 234, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [ProductName], [ProductImage], [ProductPrice], [quantity]) VALUES (2014, 2021, N'Bags to Love', N'images\Bags\accessories_bag10000.jpg', 88, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [ProductName], [ProductImage], [ProductPrice], [quantity]) VALUES (2015, 2021, N'Royal Headwear', N'images\hats\hats-fedora-hat-manufacture-stack.jpg', 57, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [ProductName], [ProductImage], [ProductPrice], [quantity]) VALUES (2016, 2021, N'Knitted Cap', N'images\hats\pexels-photo-2950650.jpeg', 57, 1)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [create_date], [shipping_id]) VALUES (7, 1, 18, CAST(N'2022-07-07' AS Date), 1)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [create_date], [shipping_id]) VALUES (8, 1, 33, CAST(N'2022-07-07' AS Date), 6)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [create_date], [shipping_id]) VALUES (9, 1, 18, CAST(N'2022-07-07' AS Date), 7)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [create_date], [shipping_id]) VALUES (10, 1, 449, CAST(N'2022-07-07' AS Date), 8)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [create_date], [shipping_id]) VALUES (11, 1, 64, CAST(N'2022-07-07' AS Date), 9)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [create_date], [shipping_id]) VALUES (12, 1, 589, CAST(N'2022-07-07' AS Date), 10)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [create_date], [shipping_id]) VALUES (13, 1, 123, CAST(N'2022-07-08' AS Date), 11)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [create_date], [shipping_id]) VALUES (14, 1, 172, CAST(N'2022-07-08' AS Date), 12)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [create_date], [shipping_id]) VALUES (15, 1, 0, CAST(N'2022-07-09' AS Date), 13)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [create_date], [shipping_id]) VALUES (1013, 1, 316, CAST(N'2022-07-11' AS Date), 1002)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [create_date], [shipping_id]) VALUES (1014, 1, 0, CAST(N'2022-07-11' AS Date), 1003)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [create_date], [shipping_id]) VALUES (1015, 1, 0, CAST(N'2022-07-11' AS Date), 1004)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [create_date], [shipping_id]) VALUES (1016, 1, 0, CAST(N'2022-07-11' AS Date), 1005)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [create_date], [shipping_id]) VALUES (1017, 1, 288, CAST(N'2022-07-11' AS Date), 1009)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [create_date], [shipping_id]) VALUES (1018, 1, 359, CAST(N'2022-07-11' AS Date), 1011)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [create_date], [shipping_id]) VALUES (1019, 1, 300, CAST(N'2022-07-12' AS Date), 1012)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [create_date], [shipping_id]) VALUES (1020, 1, 453, CAST(N'2022-07-14' AS Date), 1014)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [create_date], [shipping_id]) VALUES (1021, 1, 525, CAST(N'2022-07-14' AS Date), 1015)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [create_date], [shipping_id]) VALUES (1022, 1, 123, CAST(N'2022-07-14' AS Date), 1016)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [create_date], [shipping_id]) VALUES (1023, 2, 100, CAST(N'2022-07-14' AS Date), 1017)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [create_date], [shipping_id]) VALUES (1024, 2, 408, CAST(N'2022-07-14' AS Date), 1018)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [create_date], [shipping_id]) VALUES (1025, 2, 56, CAST(N'2022-07-14' AS Date), 1019)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [create_date], [shipping_id]) VALUES (1026, 1, 110, CAST(N'2022-07-14' AS Date), 1028)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [create_date], [shipping_id]) VALUES (1027, 2, 131, CAST(N'2022-07-14' AS Date), 1029)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [create_date], [shipping_id]) VALUES (1028, 1, 58, CAST(N'2022-07-14' AS Date), 1030)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [create_date], [shipping_id]) VALUES (1029, 1, 660, CAST(N'2022-07-14' AS Date), 1031)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [create_date], [shipping_id]) VALUES (2021, 2, 618, CAST(N'2022-07-19' AS Date), 2012)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (1, N'T-ShirtGuys
', N'images\tshirt\1.jpg', 1000.0000, N'Good t-shirt designs are those that people want to wear. Make sure your t-shirt doesn’t get stuffed in the back of the closet with a custom t-shirt designed just for you by a professional designer.', N'The text field directly to the right of your displayed T-shirt mockup allows for 150 characters worth of text. We suggest you compress the key elements from following the guide below into this section and use the full description in the additional ‘add text’ sections below.', 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (2, N'PrintedShirts', N'images\tshirt\2.jpg', 100.0000, N'Good t-shirt designs are those that people want to wear. Make sure your t-shirt doesn’t get stuffed in the back of the closet with a custom t-shirt designed just for you by a professional designer.', N'The text field directly to the right of your displayed T-shirt mockup allows for 150 characters worth of text. We suggest you compress the key elements from following the guide below into this section and use the full description in the additional ‘add text’ sections below.', 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (3, N'T-Shirt Elephant', N'images\tshirt\3.jpg', 123.0000, N'Good t-shirt designs are those that people want to wear. Make sure your t-shirt doesn’t get stuffed in the back of the closet with a custom t-shirt designed just for you by a professional designer.', N'The text field directly to the right of your displayed T-shirt mockup allows for 150 characters worth of text. We suggest you compress the key elements from following the guide below into this section and use the full description in the additional ‘add text’ sections below.', 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (4, N'Blank Shirts', N'images\tshirt\4.jpg', 50.0000, N'Good t-shirt designs are those that people want to wear. Make sure your t-shirt doesn’t get stuffed in the back of the closet with a custom t-shirt designed just for you by a professional designer.', N'The text field directly to the right of your displayed T-shirt mockup allows for 150 characters worth of text. We suggest you compress the key elements from following the guide below into this section and use the full description in the additional ‘add text’ sections below.', 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (5, N'ThatShirt', N'images\tshirt\5.jpg', 299.0000, N'Good t-shirt designs are those that people want to wear. Make sure your t-shirt doesn’t get stuffed in the back of the closet with a custom t-shirt designed just for you by a professional designer.', N'The text field directly to the right of your displayed T-shirt mockup allows for 150 characters worth of text. We suggest you compress the key elements from following the guide below into this section and use the full description in the additional ‘add text’ sections below.', 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (6, N'NULLT-Shirt Printing Company', N'images\tshirt\6.jpg', 60.0000, N'Good t-shirt designs are those that people want to wear. Make sure your t-shirt doesn’t get stuffed in the back of the closet with a custom t-shirt designed just for you by a professional designer.', N'The text field directly to the right of your displayed T-shirt mockup allows for 150 characters worth of text. We suggest you compress the key elements from following the guide below into this section and use the full description in the additional ‘add text’ sections below.', 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (7, N'Coyote T-Shirts', N'images\tshirt\7.jpg', 18.0000, N'Good t-shirt designs are those that people want to wear. Make sure your t-shirt doesn’t get stuffed in the back of the closet with a custom t-shirt designed just for you by a professional designer.', N'The text field directly to the right of your displayed T-shirt mockup allows for 150 characters worth of text. We suggest you compress the key elements from following the guide below into this section and use the full description in the additional ‘add text’ sections below.', 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (8, N'Wholesale Blank', N'images\tshirt\8.jpg', 30.0000, N'Good t-shirt designs are those that people want to wear. Make sure your t-shirt doesn’t get stuffed in the back of the closet with a custom t-shirt designed just for you by a professional designer.', N'The text field directly to the right of your displayed T-shirt mockup allows for 150 characters worth of text. We suggest you compress the key elements from following the guide below into this section and use the full description in the additional ‘add text’ sections below.', 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (9, N'MYTEES', N'images\tshirt\9.jpg', 33.0000, N'Good t-shirt designs are those that people want to wear. Make sure your t-shirt doesn’t get stuffed in the back of the closet with a custom t-shirt designed just for you by a professional designer.', N'The text field directly to the right of your displayed T-shirt mockup allows for 150 characters worth of text. We suggest you compress the key elements from following the guide below into this section and use the full description in the additional ‘add text’ sections below.', 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (10, N'Budget Promotion', N'images\tshirt\10.jpg', 34.0000, N'Good t-shirt designs are those that people want to wear. Make sure your t-shirt doesn’t get stuffed in the back of the closet with a custom t-shirt designed just for you by a professional designer.', N'The text field directly to the right of your displayed T-shirt mockup allows for 150 characters worth of text. We suggest you compress the key elements from following the guide below into this section and use the full description in the additional ‘add text’ sections below.', 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (11, N'MightyHorse', N'images\tshirt\11.jpg', 56.0000, N'Good t-shirt designs are those that people want to wear. Make sure your t-shirt doesn’t get stuffed in the back of the closet with a custom t-shirt designed just for you by a professional designer.', N'The text field directly to the right of your displayed T-shirt mockup allows for 150 characters worth of text. We suggest you compress the key elements from following the guide below into this section and use the full description in the additional ‘add text’ sections below.', 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (12, N'CubeDeer', N'images\tshirt\12.jpg', 98.0000, N'Good t-shirt designs are those that people want to wear. Make sure your t-shirt doesn’t get stuffed in the back of the closet with a custom t-shirt designed just for you by a professional designer.', N'The text field directly to the right of your displayed T-shirt mockup allows for 150 characters worth of text. We suggest you compress the key elements from following the guide below into this section and use the full description in the additional ‘add text’ sections below.', 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (13, N'MewJogger', N'images\tshirt\13.jpg', 69.0000, N'Good t-shirt designs are those that people want to wear. Make sure your t-shirt doesn’t get stuffed in the back of the closet with a custom t-shirt designed just for you by a professional designer.', N'The text field directly to the right of your displayed T-shirt mockup allows for 150 characters worth of text. We suggest you compress the key elements from following the guide below into this section and use the full description in the additional ‘add text’ sections below.', 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (14, N'TeeTops', N'images\tshirt\14.jpg', 70.0000, N'Good t-shirt designs are those that people want to wear. Make sure your t-shirt doesn’t get stuffed in the back of the closet with a custom t-shirt designed just for you by a professional designer.', N'The text field directly to the right of your displayed T-shirt mockup allows for 150 characters worth of text. We suggest you compress the key elements from following the guide below into this section and use the full description in the additional ‘add text’ sections below.', 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (15, N'KettleKane', N'images\tshirt\15.jpg', 25.0000, N'Good t-shirt designs are those that people want to wear. Make sure your t-shirt doesn’t get stuffed in the back of the closet with a custom t-shirt designed just for you by a professional designer.', N'The text field directly to the right of your displayed T-shirt mockup allows for 150 characters worth of text. We suggest you compress the key elements from following the guide below into this section and use the full description in the additional ‘add text’ sections below.', 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (16, N'Pearl T-Shirts', N'images\tshirt\16.jpg', 26.5000, N'Good t-shirt designs are those that people want to wear. Make sure your t-shirt doesn’t get stuffed in the back of the closet with a custom t-shirt designed just for you by a professional designer.', N'The text field directly to the right of your displayed T-shirt mockup allows for 150 characters worth of text. We suggest you compress the key elements from following the guide below into this section and use the full description in the additional ‘add text’ sections below.', 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (17, N'RockWex', N'images\tshirt\17.jpg', 66.0000, N'Good t-shirt designs are those that people want to wear. Make sure your t-shirt doesn’t get stuffed in the back of the closet with a custom t-shirt designed just for you by a professional designer.', N'The text field directly to the right of your displayed T-shirt mockup allows for 150 characters worth of text. We suggest you compress the key elements from following the guide below into this section and use the full description in the additional ‘add text’ sections below.', 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (18, N'Gem Wears', N'images\tshirt\18.jpg', 88.0000, N'Good t-shirt designs are those that people want to wear. Make sure your t-shirt doesn’t get stuffed in the back of the closet with a custom t-shirt designed just for you by a professional designer.', N'The text field directly to the right of your displayed T-shirt mockup allows for 150 characters worth of text. We suggest you compress the key elements from following the guide below into this section and use the full description in the additional ‘add text’ sections below.', 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (19, N'NULXrated Wears', N'images\tshirt\19.jpg', 81.0000, N'Good t-shirt designs are those that people want to wear. Make sure your t-shirt doesn’t get stuffed in the back of the closet with a custom t-shirt designed just for you by a professional designer.', N'The text field directly to the right of your displayed T-shirt mockup allows for 150 characters worth of text. We suggest you compress the key elements from following the guide below into this section and use the full description in the additional ‘add text’ sections below.', 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (20, N'Designs Nifty', N'images\tshirt\20.jpg', 47.0000, N'Good t-shirt designs are those that people want to wear. Make sure your t-shirt doesn’t get stuffed in the back of the closet with a custom t-shirt designed just for you by a professional designer.', N'The text field directly to the right of your displayed T-shirt mockup allows for 150 characters worth of text. We suggest you compress the key elements from following the guide below into this section and use the full description in the additional ‘add text’ sections below.', 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (21, N'Princess Shirts', N'images\tshirt\21.jpg', 60.0000, N'Good t-shirt designs are those that people want to wear. Make sure your t-shirt doesn’t get stuffed in the back of the closet with a custom t-shirt designed just for you by a professional designer.', N'The text field directly to the right of your displayed T-shirt mockup allows for 150 characters worth of text. We suggest you compress the key elements from following the guide below into this section and use the full description in the additional ‘add text’ sections below.', 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (22, N'BetterMind', N'images\tshirt\22.jpg', 32.0000, N'Good t-shirt designs are those that people want to wear. Make sure your t-shirt doesn’t get stuffed in the back of the closet with a custom t-shirt designed just for you by a professional designer.', N'The text field directly to the right of your displayed T-shirt mockup allows for 150 characters worth of text. We suggest you compress the key elements from following the guide below into this section and use the full description in the additional ‘add text’ sections below.', 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (23, N'Big Foot', N'images\tshirt\23.jpg', 155.0000, N'Good t-shirt designs are those that people want to wear. Make sure your t-shirt doesn’t get stuffed in the back of the closet with a custom t-shirt designed just for you by a professional designer.', N'The text field directly to the right of your displayed T-shirt mockup allows for 150 characters worth of text. We suggest you compress the key elements from following the guide below into this section and use the full description in the additional ‘add text’ sections below.', 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (27, N'Sweatshirt Place', N'images\tshirt\24.jpg', 444.0000, N'Good t-shirt designs are those that people want to wear. Make sure your t-shirt doesn’t get stuffed in the back of the closet with a custom t-shirt designed just for you by a professional designer.', N'The text field directly to the right of your displayed T-shirt mockup allows for 150 characters worth of text. We suggest you compress the key elements from following the guide below into this section and use the full description in the additional ‘add text’ sections below.', 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (28, N'Alive Online', N'images\tshirt\25.jpg', 399.0000, N'Good t-shirt designs are those that people want to wear. Make sure your t-shirt doesn’t get stuffed in the back of the closet with a custom t-shirt designed just for you by a professional designer.', N'The text field directly to the right of your displayed T-shirt mockup allows for 150 characters worth of text. We suggest you compress the key elements from following the guide below into this section and use the full description in the additional ‘add text’ sections below.', 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (29, N'OfflineOnline ', N'images\tshirt\26.jpg', 341.0000, N'Good t-shirt designs are those that people want to wear. Make sure your t-shirt doesn’t get stuffed in the back of the closet with a custom t-shirt designed just for you by a professional designer.', N'The text field directly to the right of your displayed T-shirt mockup allows for 150 characters worth of text. We suggest you compress the key elements from following the guide below into this section and use the full description in the additional ‘add text’ sections below.', 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (1002, N'Quantic Shirts   ', N'images\tshirt\27.jpg', 43.0000, N'Good t-shirt designs are those that people want to wear. Make sure your t-shirt doesn’t get stuffed in the back of the closet with a custom t-shirt designed just for you by a professional designer.', N'The text field directly to the right of your displayed T-shirt mockup allows for 150 characters worth of text. We suggest you compress the key elements from following the guide below into this section and use the full description in the additional ‘add text’ sections below.', 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (1003, N'Head Turn Shirts ', N'images\tshirt\28.jpg', 86.0000, N'Good t-shirt designs are those that people want to wear. Make sure your t-shirt doesn’t get stuffed in the back of the closet with a custom t-shirt designed just for you by a professional designer.', N'The text field directly to the right of your displayed T-shirt mockup allows for 150 characters worth of text. We suggest you compress the key elements from following the guide below into this section and use the full description in the additional ‘add text’ sections below.', 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (1004, N'Inimitable Style   ', N'images\tshirt\29.jpg', 23.0000, N'Good t-shirt designs are those that people want to wear. Make sure your t-shirt doesn’t get stuffed in the back of the closet with a custom t-shirt designed just for you by a professional designer.', N'The text field directly to the right of your displayed T-shirt mockup allows for 150 characters worth of text. We suggest you compress the key elements from following the guide below into this section and use the full description in the additional ‘add text’ sections below.', 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (1005, N'Tee Tell', N'images\tshirt\30.jpg', 54.0000, N'Good t-shirt designs are those that people want to wear. Make sure your t-shirt doesn’t get stuffed in the back of the closet with a custom t-shirt designed just for you by a professional designer.', N'The text field directly to the right of your displayed T-shirt mockup allows for 150 characters worth of text. We suggest you compress the key elements from following the guide below into this section and use the full description in the additional ‘add text’ sections below.', 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (1006, N'Babygirl', N'images\tshirt\31.jpg', 55.0000, N'Good t-shirt designs are those that people want to wear. Make sure your t-shirt doesn’t get stuffed in the back of the closet with a custom t-shirt designed just for you by a professional designer.', N'The text field directly to the right of your displayed T-shirt mockup allows for 150 characters worth of text. We suggest you compress the key elements from following the guide below into this section and use the full description in the additional ‘add text’ sections below.', 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (1007, N'Just teesing', N'images\tshirt\32.jpg', 12.0000, N'Good t-shirt designs are those that people want to wear. Make sure your t-shirt doesn’t get stuffed in the back of the closet with a custom t-shirt designed just for you by a professional designer.', N'The text field directly to the right of your displayed T-shirt mockup allows for 150 characters worth of text. We suggest you compress the key elements from following the guide below into this section and use the full description in the additional ‘add text’ sections below.', 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (1008, N'Bees Tees', N'images\tshirt\33.jpg', 56.0000, N'Good t-shirt designs are those that people want to wear. Make sure your t-shirt doesn’t get stuffed in the back of the closet with a custom t-shirt designed just for you by a professional designer.', N'The text field directly to the right of your displayed T-shirt mockup allows for 150 characters worth of text. We suggest you compress the key elements from following the guide below into this section and use the full description in the additional ‘add text’ sections below.', 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (1009, N'Excellent Everyday', N'images\Bags\accessories_bag10.jpg', 123.0000, N'River Island patent embossed purse in black', N'Satchel bags are large bags used for casual occasions. The bag part is a big loose sack connected to a long strap. The strap is usually worn on the shoulder and crossed over the body so the bag rests on the opposite hip. Women usually wear satchel bags, but it''s also acceptable for men to wear them.', 4)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (1010, N'Auna', N'images\Bags\accessories_bag1000.jpg', 67.0000, N'Herschel Supply Co Fifteen cross body bum bag in lilac', N'Satchel bags are large bags used for casual occasions. The bag part is a big loose sack connected to a long strap. The strap is usually worn on the shoulder and crossed over the body so the bag rests on the opposite hip. Women usually wear satchel bags, but it''s also acceptable for men to wear them.', 4)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (1011, N'Bags to Love', N'images\Bags\accessories_bag10000.jpg', 88.0000, N'Monki organic cotton tote bag in orange hibiscus print', N'Satchel bags are large bags used for casual occasions. The bag part is a big loose sack connected to a long strap. The strap is usually worn on the shoulder and crossed over the body so the bag rests on the opposite hip. Women usually wear satchel bags, but it''s also acceptable for men to wear them.', 4)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (1012, N'Caviar Beauty', N'images\Bags\accessories_bag10001.jpg', 321.0000, N'True Decadence clear clutch bag in clear with pearl handle', N'Satchel bags are large bags used for casual occasions. The bag part is a big loose sack connected to a long strap. The strap is usually worn on the shoulder and crossed over the body so the bag rests on the opposite hip. Women usually wear satchel bags, but it''s also acceptable for men to wear them.', 4)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (1013, N'Bling Baby', N'images\Bags\accessories_bag10002.jpg', 773.0000, N'My Accessories London woven tote bag in bright check', N'Satchel bags are large bags used for casual occasions. The bag part is a big loose sack connected to a long strap. The strap is usually worn on the shoulder and crossed over the body so the bag rests on the opposite hip. Women usually wear satchel bags, but it''s also acceptable for men to wear them.', 4)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (1014, N'Fantasy Bag', N'images\Bags\accessories_bag10003.jpg', 234.0000, N'River Island monogram double pouchette crossbody bag in brown', N'Satchel bags are large bags used for casual occasions. The bag part is a big loose sack connected to a long strap. The strap is usually worn on the shoulder and crossed over the body so the bag rests on the opposite hip. Women usually wear satchel bags, but it''s also acceptable for men to wear them.', 4)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (1015, N'The Iconic', N'images\Bags\accessories_bag10004.jpg', 123.0000, N'ASOS DESIGN tote bag with mushroom print in natural', N'Satchel bags are large bags used for casual occasions. The bag part is a big loose sack connected to a long strap. The strap is usually worn on the shoulder and crossed over the body so the bag rests on the opposite hip. Women usually wear satchel bags, but it''s also acceptable for men to wear them.', 4)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (1016, N'Queen of All Bags', N'images\Bags\accessories_bag10005.jpg', 746.0000, N'Puma Training Essential shopper bag in pink', N'Satchel bags are large bags used for casual occasions. The bag part is a big loose sack connected to a long strap. The strap is usually worn on the shoulder and crossed over the body so the bag rests on the opposite hip. Women usually wear satchel bags, but it''s also acceptable for men to wear them.', 4)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (1017, N'Fashionista', N'images\Bags\accessories_bag10006.jpg', 132.0000, N'Good t-shirt designs are those that people want to wear. Make sure your t-shirt doesn’t get stuffed in the back of the closet with a custom t-shirt designed just for you by a professional designer.', N'Satchel bags are large bags used for casual occasions. The bag part is a big loose sack connected to a long strap. The strap is usually worn on the shoulder and crossed over the body so the bag rests on the opposite hip. Women usually wear satchel bags, but it''s also acceptable for men to wear them.', 4)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (1018, N'Stringalong', N'images\sneakers\image1.jpg', 12.0000, N'Anything IS Possible! by Artist Carol Rashawnna Williams', N'Slip-on ease that''s barefoot-friendly. A broken-in feeling meets unparalleled, lasting craftsmanship. The brainchild of the design team at Satorisan, the Proof Premium is wearable evidence that head-turning style can be had without sacrificing comfort or attention to detail. Push down the heel and the shoe''s now a slip-on mule - a soft and durable one. Adjustable strap. By Satorisan. Whole sizes: 36(5), 37(6), 38(7), 39(8), 40(9), 41(10), 42(11).
Best for everyday
Premium leather, hand stitched
Lateral holes for ventilation
', 5)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (1019, N'Dance Togs', N'images\sneakers\image2.jpg', 65.0000, N'Tree of Humanity by Artist Carol Rashawnna Williams', N'Slip-on ease that''s barefoot-friendly. A broken-in feeling meets unparalleled, lasting craftsmanship. The brainchild of the design team at Satorisan, the Proof Premium is wearable evidence that head-turning style can be had without sacrificing comfort or attention to detail. Push down the heel and the shoe''s now a slip-on mule - a soft and durable one. Adjustable strap. By Satorisan. Whole sizes: 36(5), 37(6), 38(7), 39(8), 40(9), 41(10), 42(11).
Best for everyday
Premium leather, hand stitched
Lateral holes for ventilation
', 5)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (1020, N'Step Away', N'images\sneakers\image3.jpg', 35.0000, N'Bridal Party Gifts - Bridesmaid Gift Ideas - Bride Slippers - Names and Titles - Bridesmaid Slippers', N'Slip-on ease that''s barefoot-friendly. A broken-in feeling meets unparalleled, lasting craftsmanship. The brainchild of the design team at Satorisan, the Proof Premium is wearable evidence that head-turning style can be had without sacrificing comfort or attention to detail. Push down the heel and the shoe''s now a slip-on mule - a soft and durable one. Adjustable strap. By Satorisan. Whole sizes: 36(5), 37(6), 38(7), 39(8), 40(9), 41(10), 42(11).
Best for everyday
Premium leather, hand stitched
Lateral holes for ventilation
', 5)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (1021, N'Foot Forward', N'images\sneakers\image4.jpg', 79.0000, N'Anything IS Possible! by Artist Carol Rashawnna Williams', N'Slip-on ease that''s barefoot-friendly. A broken-in feeling meets unparalleled, lasting craftsmanship. The brainchild of the design team at Satorisan, the Proof Premium is wearable evidence that head-turning style can be had without sacrificing comfort or attention to detail. Push down the heel and the shoe''s now a slip-on mule - a soft and durable one. Adjustable strap. By Satorisan. Whole sizes: 36(5), 37(6), 38(7), 39(8), 40(9), 41(10), 42(11).
Best for everyday
Premium leather, hand stitched
Lateral holes for ventilation
', 5)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (1022, N'Toes To Trust', N'images\sneakers\image5.jpg', 111.0000, N'Anything IS Possible! by Artist Carol Rashawnna Williams', N'Slip-on ease that''s barefoot-friendly. A broken-in feeling meets unparalleled, lasting craftsmanship. The brainchild of the design team at Satorisan, the Proof Premium is wearable evidence that head-turning style can be had without sacrificing comfort or attention to detail. Push down the heel and the shoe''s now a slip-on mule - a soft and durable one. Adjustable strap. By Satorisan. Whole sizes: 36(5), 37(6), 38(7), 39(8), 40(9), 41(10), 42(11).
Best for everyday
Premium leather, hand stitched
Lateral holes for ventilation
', 5)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (1023, N'Shoepack', N'images\sneakers\image12.jpg', 346.0000, N'Anything IS Possible! by Artist Carol Rashawnna Williams', N'Slip-on ease that''s barefoot-friendly. A broken-in feeling meets unparalleled, lasting craftsmanship. The brainchild of the design team at Satorisan, the Proof Premium is wearable evidence that head-turning style can be had without sacrificing comfort or attention to detail. Push down the heel and the shoe''s now a slip-on mule - a soft and durable one. Adjustable strap. By Satorisan. Whole sizes: 36(5), 37(6), 38(7), 39(8), 40(9), 41(10), 42(11).
Best for everyday
Premium leather, hand stitched
Lateral holes for ventilation
', 5)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (1024, N'Journeys', N'images\sneakers\image6.jpg', 357.0000, N'Anything IS Possible! by Artist Carol Rashawnna Williams', N'Slip-on ease that''s barefoot-friendly. A broken-in feeling meets unparalleled, lasting craftsmanship. The brainchild of the design team at Satorisan, the Proof Premium is wearable evidence that head-turning style can be had without sacrificing comfort or attention to detail. Push down the heel and the shoe''s now a slip-on mule - a soft and durable one. Adjustable strap. By Satorisan. Whole sizes: 36(5), 37(6), 38(7), 39(8), 40(9), 41(10), 42(11).
Best for everyday
Premium leather, hand stitched
Lateral holes for ventilation
', 5)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (1025, N'Shoegazing', N'images\sneakers\image7.jpg', 234.0000, N'Anything IS Possible! by Artist Carol Rashawnna Williams', N'Slip-on ease that''s barefoot-friendly. A broken-in feeling meets unparalleled, lasting craftsmanship. The brainchild of the design team at Satorisan, the Proof Premium is wearable evidence that head-turning style can be had without sacrificing comfort or attention to detail. Push down the heel and the shoe''s now a slip-on mule - a soft and durable one. Adjustable strap. By Satorisan. Whole sizes: 36(5), 37(6), 38(7), 39(8), 40(9), 41(10), 42(11).
Best for everyday
Premium leather, hand stitched
Lateral holes for ventilation
', 5)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (1026, N'Klassy Shoes', N'images\sneakers\image8.jpg', 53.0000, N'Anything IS Possible! by Artist Carol Rashawnna Williams', N'Slip-on ease that''s barefoot-friendly. A broken-in feeling meets unparalleled, lasting craftsmanship. The brainchild of the design team at Satorisan, the Proof Premium is wearable evidence that head-turning style can be had without sacrificing comfort or attention to detail. Push down the heel and the shoe''s now a slip-on mule - a soft and durable one. Adjustable strap. By Satorisan. Whole sizes: 36(5), 37(6), 38(7), 39(8), 40(9), 41(10), 42(11).
Best for everyday
Premium leather, hand stitched
Lateral holes for ventilation
', 5)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (1027, N'Alllacedup', N'images\sneakers\image9.jpg', 75.0000, N'Anything IS Possible! by Artist Carol Rashawnna Williams', N'Slip-on ease that''s barefoot-friendly. A broken-in feeling meets unparalleled, lasting craftsmanship. The brainchild of the design team at Satorisan, the Proof Premium is wearable evidence that head-turning style can be had without sacrificing comfort or attention to detail. Push down the heel and the shoe''s now a slip-on mule - a soft and durable one. Adjustable strap. By Satorisan. Whole sizes: 36(5), 37(6), 38(7), 39(8), 40(9), 41(10), 42(11).
Best for everyday
Premium leather, hand stitched
Lateral holes for ventilation
', 5)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (1028, N'Rapid Footwear', N'images\sneakers\image10.jpg', 355.0000, N'Anything IS Possible! by Artist Carol Rashawnna Williams', N'Slip-on ease that''s barefoot-friendly. A broken-in feeling meets unparalleled, lasting craftsmanship. The brainchild of the design team at Satorisan, the Proof Premium is wearable evidence that head-turning style can be had without sacrificing comfort or attention to detail. Push down the heel and the shoe''s now a slip-on mule - a soft and durable one. Adjustable strap. By Satorisan. Whole sizes: 36(5), 37(6), 38(7), 39(8), 40(9), 41(10), 42(11).
Best for everyday
Premium leather, hand stitched
Lateral holes for ventilation
', 5)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (1029, N'Tracex Shoes', N'images\loafers\image1.jpeg', 64.0000, N'Tree of Humanity by Artist Carol Rashawnna Williams', N'Slip-on ease that''s barefoot-friendly. A broken-in feeling meets unparalleled, lasting craftsmanship. The brainchild of the design team at Satorisan, the Proof Premium is wearable evidence that head-turning style can be had without sacrificing comfort or attention to detail. Push down the heel and the shoe''s now a slip-on mule - a soft and durable one. Adjustable strap. By Satorisan. Whole sizes: 36(5), 37(6), 38(7), 39(8), 40(9), 41(10), 42(11).
Best for everyday
Premium leather, hand stitched
Lateral holes for ventilation
', 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (1030, N'Ethics Shoes', N'images\loafers\image3.jpeg', 58.0000, N'Tree of Humanity by Artist Carol Rashawnna Williams', N'Slip-on ease that''s barefoot-friendly. A broken-in feeling meets unparalleled, lasting craftsmanship. The brainchild of the design team at Satorisan, the Proof Premium is wearable evidence that head-turning style can be had without sacrificing comfort or attention to detail. Push down the heel and the shoe''s now a slip-on mule - a soft and durable one. Adjustable strap. By Satorisan. Whole sizes: 36(5), 37(6), 38(7), 39(8), 40(9), 41(10), 42(11).
Best for everyday
Premium leather, hand stitched
Lateral holes for ventilation
', 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (1031, N'Spring Bing', N'images\loafers\image4.jpeg', 74.0000, N'Tree of Humanity by Artist Carol Rashawnna Williams', N'Slip-on ease that''s barefoot-friendly. A broken-in feeling meets unparalleled, lasting craftsmanship. The brainchild of the design team at Satorisan, the Proof Premium is wearable evidence that head-turning style can be had without sacrificing comfort or attention to detail. Push down the heel and the shoe''s now a slip-on mule - a soft and durable one. Adjustable strap. By Satorisan. Whole sizes: 36(5), 37(6), 38(7), 39(8), 40(9), 41(10), 42(11).
Best for everyday
Premium leather, hand stitched
Lateral holes for ventilation
', 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (1032, N'Feet thrive', N'images\loafers\image6.jpeg', 246.0000, N'Tree of Humanity by Artist Carol Rashawnna Williams', N'Slip-on ease that''s barefoot-friendly. A broken-in feeling meets unparalleled, lasting craftsmanship. The brainchild of the design team at Satorisan, the Proof Premium is wearable evidence that head-turning style can be had without sacrificing comfort or attention to detail. Push down the heel and the shoe''s now a slip-on mule - a soft and durable one. Adjustable strap. By Satorisan. Whole sizes: 36(5), 37(6), 38(7), 39(8), 40(9), 41(10), 42(11).
Best for everyday
Premium leather, hand stitched
Lateral holes for ventilation
', 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (1033, N'Body Muse', N'images\loafers\image9.jpeg', 124.0000, N'Tree of Humanity by Artist Carol Rashawnna Williams', N'Slip-on ease that''s barefoot-friendly. A broken-in feeling meets unparalleled, lasting craftsmanship. The brainchild of the design team at Satorisan, the Proof Premium is wearable evidence that head-turning style can be had without sacrificing comfort or attention to detail. Push down the heel and the shoe''s now a slip-on mule - a soft and durable one. Adjustable strap. By Satorisan. Whole sizes: 36(5), 37(6), 38(7), 39(8), 40(9), 41(10), 42(11).
Best for everyday
Premium leather, hand stitched
Lateral holes for ventilation
', 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (1034, N'Cade & Co', N'images\loafers\image10.jpeg', 676.0000, N'Tree of Humanity by Artist Carol Rashawnna Williams', N'Slip-on ease that''s barefoot-friendly. A broken-in feeling meets unparalleled, lasting craftsmanship. The brainchild of the design team at Satorisan, the Proof Premium is wearable evidence that head-turning style can be had without sacrificing comfort or attention to detail. Push down the heel and the shoe''s now a slip-on mule - a soft and durable one. Adjustable strap. By Satorisan. Whole sizes: 36(5), 37(6), 38(7), 39(8), 40(9), 41(10), 42(11).
Best for everyday
Premium leather, hand stitched
Lateral holes for ventilation
', 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (1035, N'Eastbay', N'images\loafers\image11.jpeg', 23.0000, N'Tree of Humanity by Artist Carol Rashawnna Williams', N'Slip-on ease that''s barefoot-friendly. A broken-in feeling meets unparalleled, lasting craftsmanship. The brainchild of the design team at Satorisan, the Proof Premium is wearable evidence that head-turning style can be had without sacrificing comfort or attention to detail. Push down the heel and the shoe''s now a slip-on mule - a soft and durable one. Adjustable strap. By Satorisan. Whole sizes: 36(5), 37(6), 38(7), 39(8), 40(9), 41(10), 42(11).
Best for everyday
Premium leather, hand stitched
Lateral holes for ventilation
', 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (1036, N'Genesco', N'images\loafers\image12.jpeg', 79.0000, N'Tree of Humanity by Artist Carol Rashawnna Williams', N'Slip-on ease that''s barefoot-friendly. A broken-in feeling meets unparalleled, lasting craftsmanship. The brainchild of the design team at Satorisan, the Proof Premium is wearable evidence that head-turning style can be had without sacrificing comfort or attention to detail. Push down the heel and the shoe''s now a slip-on mule - a soft and durable one. Adjustable strap. By Satorisan. Whole sizes: 36(5), 37(6), 38(7), 39(8), 40(9), 41(10), 42(11).
Best for everyday
Premium leather, hand stitched
Lateral holes for ventilation
', 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (1037, N'Munro', N'images\loafers\image14.jpeg', 568.0000, N'Tree of Humanity by Artist Carol Rashawnna Williams', N'Slip-on ease that''s barefoot-friendly. A broken-in feeling meets unparalleled, lasting craftsmanship. The brainchild of the design team at Satorisan, the Proof Premium is wearable evidence that head-turning style can be had without sacrificing comfort or attention to detail. Push down the heel and the shoe''s now a slip-on mule - a soft and durable one. Adjustable strap. By Satorisan. Whole sizes: 36(5), 37(6), 38(7), 39(8), 40(9), 41(10), 42(11).
Best for everyday
Premium leather, hand stitched
Lateral holes for ventilation
', 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (1038, N'Blossoming Hats', N'images\hats\fashion-model-beach-hat.jpg', 123.0000, N'a close-fitting woollen hood that covers the ears and neck, as originally worn by soldiers in the Crimean War', N'A hard style of hat, usually worn by men, dating back to the 1900s. Sometimes associated with livestock slaughter.', 3)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (1039, N'Royal Headwear', N'images\hats\hats-fedora-hat-manufacture-stack.jpg', 57.0000, N'a Scottish brimless hat traditionally of dark blue wool with a cockade and plume on one side', N'An Australian brand of bush hat, whose wide-brimmed styles are a distinctive part of Australian culture, especially in rural areas', 3)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (1040, N'Bespoke Hats', N'images\hats\pexels-photo-936038.jpeg', 1223.0000, N'a headscarf tied under the chin, worn by Russian peasant women', N'A traditional Korean winter cap mostly worn by women in the Joseon and Daehan Jeguk periods (1392–1910).', 3)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (1041, N'Wise Owl Hats', N'images\hats\pexels-photo-984619.jpeg', 47.0000, N'a narrow band of ribbon, velvet, etc, worn round the head', N'Headgear, usually made from fabric such as cotton and/or polyester, that covers the whole head, exposing only the face or part of it. Sometimes only the eyes or eyes and mouth are visible. Also known as a ski mask.', 3)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (1042, N'Whale Hat', N'images\hats\pexels-photo-1261422.jpeg', 574.0000, N'a close-fitting thin cap with a deep peak', N'Traditional Scottish bonnet or cap worn with Scottish Highland dress.', 3)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (1043, N'Humble Hatters', N'images\hats\pexels-photo-1878821.jpeg', 12.0000, N'a close-fitting medieval helmet of light steel usually with a visor', N'A type of soft, light cotton cap with a rounded crown and a stiff, frontward-projecting bill.', 3)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (1044, N'Knitted Cap', N'images\hats\pexels-photo-2950650.jpeg', 57.0000, N'a tall helmet of black fur worn by certain regiments in the British Army', N'A brimless cap, with or without a small visor, once popular among schoolboys. Sometimes includes a propeller.
Note: In New Zealand, Australia, the United Kingdom, and parts of the United States, "beanie" also or otherwise refers to the knit cap or tuque used during winter to provide warmth.', 3)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (1045, N'Work of Art', N'images\hats\pexels-photo-4715137.jpeg', 68.0000, N'a tall hat of beaver fur or a fabric resembling it, worn, esp by men, during the 19th century
beret', N'A flat-brimmed and flat-topped straw hat formerly worn by seamen. Schools, especially public schools in the UK, might include a boater as part of their (summer) uniform. Now mostly worn at summer regattas or formal garden parties, often with a ribbon in club, college or school colors.', 3)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (1046, N'Cute Hat Lady', N'images\hats\pexels-photo-5449526.jpeg', 123.0000, N'any of several round-crowned brimmed hats of felt, such as the bowler', N'A soft, wide-brimmed cotton hat commonly used by military forces. Also known as a bush hat and similar to a bucket hat.', 3)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (1047, N'Hatteras Hats
', N'images\hats\pexels-photo-9811638.jpeg', 57.0000, N'a stiff clerical cap having either three or four upright pieces projecting outwards from the centre to the edge: coloured black for priests, purple for bishops, red for cardinals, and white for certain members of religious orders', N'A lightweight all-weather hat, with a high rounded crown and wide flat brim, designed by John B. Stetson for the demands of the American frontier.', 3)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (1048, N'bbbbbb', N'aaaaaa', 123.0000, N'aaaaaa', N'asdsad', 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (1049, N'aa', N'faas', 12.0000, N'asfas', N'asfaf', 3)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (1050, N'aaaaaa', N'bbbb', 333.0000, N'asdfasf', N'ndths', 4)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID]) VALUES (1056, N'Nguyen Van Phuc', N'adasd', 1111.0000, N'cc', N'aaaaa', 5)
SET IDENTITY_INSERT [dbo].[product] OFF
GO
SET IDENTITY_INSERT [dbo].[Shipping] ON 

INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (1, N'a', N'1234', N'asdgjjf')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (2, N'a', N'1234', N'asdgjjf')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (3, N'admin', N'1235456', N'aaaa')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (4, N'a', N'1234', N'asdgjjf')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (5, N'a', N'1234', N'asdgjjf')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (6, N'phuche150288', N'1235456', N'aaaa')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (7, N'cuongcaoca', N'1235456', N'aaaa')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (8, N'nam ', N'1235456', N'Ha Noi')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (9, N'duc', N'1243453656744', N'Bac Ninh')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (10, N'minh', N'1235456', N'Ha Noi')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (11, N'cuongcaoca', N'1243453656744', N'Bac Ninh')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (12, N'duc', N'17541725347', N'HCM')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (13, N'', N'', N'')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (1002, N'aaa', N'093124413', N'adlalja')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (1003, N'', N'', N'')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (1004, N'', N'', N'')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (1005, N'', N'', N'')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (1006, N'', N'', N'')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (1007, N'', N'', N'')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (1008, N'', N'', N'')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (1009, N'admin1', N'0987654321', N'adlalja')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (1010, N'', N'', N'')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (1011, N'duc', N'1243453656744', N'Bac Ninh')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (1012, N'user1', N'0987654321', N'Ha Noi')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (1013, N'', N'', N'')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (1014, N'duc', N'1243453656744', N'Bac Ninh')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (1015, N'cuongcaoca', N'1243453656744', N'HCM')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (1016, N'phuche150288', N'1243453656744', N'HCM')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (1017, N'phuche150288', N'1243453656744', N'adlalja')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (1018, N'user1', N'1235456', N'Bac Ninh')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (1019, N'admin', N'1243453656744', N'Bac Ninh')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (1020, N'admin', N'0987654321', N'Bac Ninh')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (1021, N'user1', N'0987654321', N'Ha Noi')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (1022, N'user1', N'0987654321', N'adlalja')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (1023, N'user1', N'17541725347', N'Bac Ninh')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (1024, N'admin1', N'1243453656744', N'Bac Ninh')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (1025, N'admin', N'0987654321', N'Ha Noi')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (1026, N'phuche150288', N'0987654321', N'adlalja')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (1027, N'phuche150288', N'1243453656744', N'Ha Noi')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (1028, N'duc', N'1243453656744', N'adlalja')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (1029, N'phuche150288', N'1243453656744', N'aaaa')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (1030, N'cuongcaoca', N'17541725347', N'HCM')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (1031, N'admin1', N'1235456', N'HCM')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (2012, N'duc', N'0987654321', N'Ha Noi')
SET IDENTITY_INSERT [dbo].[Shipping] OFF
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_create_date]  DEFAULT (getdate()) FOR [create_date]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Orders] FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Orders]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Account1] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([uID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Account1]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Shipping] FOREIGN KEY([shipping_id])
REFERENCES [dbo].[Shipping] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Shipping]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_Category] FOREIGN KEY([cateID])
REFERENCES [dbo].[Category] ([cid])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_Category]
GO

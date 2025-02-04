USE [ShopOnline]
GO
/****** Object:  Table [dbo].[About]    Script Date: 10/15/2020 10:21:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[About](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTitle] [varchar](250) NULL,
	[Description] [nvarchar](500) NULL,
	[Image] [nvarchar](250) NULL,
	[Detail] [ntext] NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[MetaKeywordl] [nvarchar](250) NULL,
	[MetaDescriptions] [nchar](250) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_About] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 10/15/2020 10:21:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[UserName] [varchar](20) NOT NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_Acount] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 10/15/2020 10:21:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTitle] [varchar](250) NULL,
	[ParentID] [bigint] NULL,
	[DisplayOrder] [int] NULL,
	[SeoTitle] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[CretaedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [nchar](250) NULL,
	[Status] [bit] NULL,
	[ShowOnHome] [bit] NULL,
	[Language] [varchar](2) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 10/15/2020 10:21:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Content] [ntext] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Content]    Script Date: 10/15/2020 10:21:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Content](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTitle] [varchar](250) NULL,
	[Description] [nvarchar](500) NULL,
	[Image] [nvarchar](250) NULL,
	[CategoryID] [bigint] NULL,
	[Detail] [ntext] NULL,
	[Warranty] [int] NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[MetaKeywordl] [nvarchar](250) NULL,
	[MetaDescriptions] [nchar](250) NULL,
	[Status] [bit] NOT NULL,
	[TopHot] [datetime] NULL,
	[ViewCount] [int] NULL,
	[Tags] [nvarchar](500) NOT NULL,
	[Language] [varchar](2) NULL,
 CONSTRAINT [PK_Content] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContentTag]    Script Date: 10/15/2020 10:21:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContentTag](
	[ContentID] [bigint] NOT NULL,
	[TagID] [nvarchar](50) NULL,
 CONSTRAINT [PK_ContentTag] PRIMARY KEY CLUSTERED 
(
	[ContentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Credential]    Script Date: 10/15/2020 10:21:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Credential](
	[UserGroupID] [varchar](20) NOT NULL,
	[RoleID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Credential] PRIMARY KEY CLUSTERED 
(
	[UserGroupID] ASC,
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 10/15/2020 10:21:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Content] [nvarchar](250) NULL,
	[CreateDate] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Footer]    Script Date: 10/15/2020 10:21:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Footer](
	[ID] [varchar](50) NOT NULL,
	[Content] [ntext] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Footer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Language]    Script Date: 10/15/2020 10:21:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Language](
	[ID] [varchar](2) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[IsDefault] [bit] NULL,
 CONSTRAINT [PK_Language] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 10/15/2020 10:21:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Text] [nvarchar](50) NULL,
	[Link] [nvarchar](250) NULL,
	[DisplayOrder] [int] NULL,
	[Target] [nvarchar](50) NULL,
	[Status] [bit] NULL,
	[TypeID] [int] NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuType]    Script Date: 10/15/2020 10:21:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_MenuType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 10/15/2020 10:21:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[CreateDate] [datetime] NULL,
	[CustomerID] [bigint] NULL,
	[ShipName] [nvarchar](50) NULL,
	[ShipMobile] [varchar](50) NULL,
	[ShipAddress] [nvarchar](50) NULL,
	[ShipEmail] [nvarchar](50) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 10/15/2020 10:21:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[ProductID] [bigint] NOT NULL,
	[OrderID] [bigint] NOT NULL,
	[Quantity] [int] NULL,
	[Price] [decimal](18, 0) NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 10/15/2020 10:21:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Code] [varchar](10) NULL,
	[MetaTitle] [varchar](250) NULL,
	[Description] [nvarchar](500) NULL,
	[Image] [nvarchar](250) NULL,
	[MoreImage] [xml] NULL,
	[Price] [decimal](18, 0) NULL,
	[PromotionPrice] [decimal](18, 0) NULL,
	[IncludeVAT] [bit] NULL,
	[Quantity] [int] NOT NULL,
	[CategoryID] [bigint] NULL,
	[Detail] [ntext] NULL,
	[Warranty] [int] NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[MetaKeywordl] [nvarchar](250) NULL,
	[MetaDescriptions] [nchar](250) NULL,
	[Status] [bit] NOT NULL,
	[TopHot] [datetime] NULL,
	[ViewCount] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 10/15/2020 10:21:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](250) NULL,
	[MetaTitle] [varchar](250) NULL,
	[ParentID] [bigint] NULL,
	[DisplayOrder] [int] NULL,
	[SeoTitle] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [nchar](250) NULL,
	[Status] [bit] NULL,
	[ShowOnHome] [bit] NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 10/15/2020 10:21:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[ID] [varchar](20) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slide]    Script Date: 10/15/2020 10:21:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slide](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](250) NULL,
	[DisplayOrder] [int] NULL,
	[Link] [nvarchar](250) NULL,
	[Description] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Slide] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SystemConfig]    Script Date: 10/15/2020 10:21:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemConfig](
	[ID] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Type] [varchar](50) NULL,
	[Value] [nvarchar](250) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_SystemConfig] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tag]    Script Date: 10/15/2020 10:21:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tag](
	[ID] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 10/15/2020 10:21:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[Password] [varchar](32) NULL,
	[GroupID] [varchar](20) NULL,
	[Name] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[ProvinceID] [int] NULL,
	[DistrictID] [int] NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserGroup]    Script Date: 10/15/2020 10:21:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserGroup](
	[ID] [varchar](20) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_UserGroup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CretaedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome], [Language]) VALUES (4, N'tin thế giới', N'tin-the-gioi', 1, 1, NULL, CAST(N'2020-08-10T23:48:20.117' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, 0, NULL)
INSERT [dbo].[Category] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CretaedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome], [Language]) VALUES (6, N'tin trong nước', N'tin-trong-nuoc', 2, 2, NULL, CAST(N'2020-08-10T23:49:26.203' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, 0, NULL)
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([ID], [Content], [Status]) VALUES (1, N'<p>Công ty cổ phần ABC</p><p>Địa chỉ : thôn phú hữu xã bột xuyên huyền mỹ đức thành phố hà nội</p>
<p>Điện thoại : 0359288873</p>', 1)
SET IDENTITY_INSERT [dbo].[Contact] OFF
SET IDENTITY_INSERT [dbo].[Content] ON 

INSERT [dbo].[Content] ([ID], [Name], [MetaTitle], [Description], [Image], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywordl], [MetaDescriptions], [Status], [TopHot], [ViewCount], [Tags], [Language]) VALUES (1, N'vinh', N'vinh', NULL, N'/Data/images/ada/image.jpg', 6, N'một con zịt', NULL, CAST(N'2020-08-25T22:49:38.320' AS DateTime), N'Admin', NULL, NULL, NULL, NULL, 0, NULL, 0, N'123', N'vi')
SET IDENTITY_INSERT [dbo].[Content] OFF
INSERT [dbo].[ContentTag] ([ContentID], [TagID]) VALUES (1, N'123')
INSERT [dbo].[Footer] ([ID], [Content], [Status]) VALUES (N'footer', N'<div class="wrap">
            <div class="section group">
                <div class="col_1_of_4 span_1_of_4">
                    <h4>Information</h4>
                    <ul>
                        <li><a href="about.html">About Us</a></li>
                        <li><a href="contact.html">Customer Service</a></li>
                        <li><a href="#">Advanced Search</a></li>
                        <li><a href="delivery.html">Orders and Returns</a></li>
                        <li><a href="contact.html">Contact Us</a></li>
                    </ul>
                </div>
                <div class="col_1_of_4 span_1_of_4">
                    <h4>Why buy from us</h4>
                    <ul>
                        <li><a href="about.html">About Us</a></li>
                        <li><a href="contact.html">Customer Service</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                        <li><a href="contact.html">Site Map</a></li>
                        <li><a href="#">Search Terms</a></li>
                    </ul>
                </div>
                <div class="col_1_of_4 span_1_of_4">
                    <h4>My account</h4>
                    <ul>
                        <li><a href="contact.html">Sign In</a></li>
                        <li><a href="index.html">View Cart</a></li>
                        <li><a href="#">My Wishlist</a></li>
                        <li><a href="#">Track My Order</a></li>
                        <li><a href="contact.html">Help</a></li>
                    </ul>
                </div>
                <div class="col_1_of_4 span_1_of_4">
                    <h4>Contact</h4>
                    <ul>
                        <li><span>+91-123-456789</span></li>
                        <li><span>+00-123-000000</span></li>
                    </ul>
                    <div class="social-icons">
                        <h4>Follow Us</h4>
                        <ul>
                            <li>
                                <a href="#" target="_blank"><img src="images/facebook.png" alt="" /></a>
                            </li>
                            <li>
                                <a href="#" target="_blank"><img src="images/twitter.png" alt="" /></a>
                            </li>
                            <li>
                                <a href="#" target="_blank"><img src="images/skype.png" alt="" /> </a>
                            </li>
                            <li>
                                <a href="#" target="_blank"> <img src="images/dribbble.png" alt="" /></a>
                            </li>
                            <li>
                                <a href="#" target="_blank"> <img src="images/linkedin.png" alt="" /></a>
                            </li>
                            <div class="clear"></div>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="copy_right">
            <p>&copy; 2013 home_shoppe. All rights reserved | Design by <a href="http://w3layouts.com/">W3layouts</a></p>
        </div>', 1)
INSERT [dbo].[Language] ([ID], [Name], [IsDefault]) VALUES (N'en', N'Tiếng anh', 0)
INSERT [dbo].[Language] ([ID], [Name], [IsDefault]) VALUES (N'vi', N'Tiếng việt', 1)
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID]) VALUES (1, N'Trang chủ', N'/', 1, N'_blank', 1, 1)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID]) VALUES (2, N'Giới thiệu', N'/gioi-thieu', 2, N'_self', 1, 1)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID]) VALUES (3, N'Tin tức', N'/tin-tuc', 3, N'_self', 1, 1)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID]) VALUES (4, N'Sản phẩm', N'/san-pham', 4, N'_self', 1, 1)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID]) VALUES (5, N'Liên hệ', N'/lien-he', 5, N'_self', 1, 1)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID]) VALUES (6, N'Đăng nhập', N'/dang-nhap', 1, N'_self', 1, 2)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID]) VALUES (7, N'Đăng ký', N'/dang-ky', 2, N'_self', 1, 2)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID]) VALUES (8, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID]) VALUES (9, NULL, NULL, NULL, NULL, NULL, 2)
SET IDENTITY_INSERT [dbo].[Menu] OFF
SET IDENTITY_INSERT [dbo].[MenuType] ON 

INSERT [dbo].[MenuType] ([ID], [Name]) VALUES (1, N'Menu chinh')
INSERT [dbo].[MenuType] ([ID], [Name]) VALUES (2, N'Menu Top')
SET IDENTITY_INSERT [dbo].[MenuType] OFF
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([ID], [CreateDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (1, CAST(N'2020-08-20T01:36:55.903' AS DateTime), NULL, N'vinh', N'13243', N'hà nội', N'vinh140999@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreateDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (2, CAST(N'2020-08-20T17:57:24.060' AS DateTime), NULL, N'vinh', N'13243', N'hà nội', N'vinh140999@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreateDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (3, CAST(N'2020-08-20T17:57:55.670' AS DateTime), NULL, N'vinh', N'13243', N'hà nội', N'hvjh', NULL)
INSERT [dbo].[Order] ([ID], [CreateDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (4, CAST(N'2020-08-20T17:58:02.247' AS DateTime), NULL, N'vinh', N'13243', N'hà nội', N'vinh140999@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreateDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (5, CAST(N'2020-08-20T18:16:17.667' AS DateTime), NULL, N'toan', N'123', N'hà nội', N'vinh140999@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreateDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (6, CAST(N'2020-08-20T18:16:34.197' AS DateTime), NULL, N'toan', N'123', N'hà nội', N'vinh140999@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreateDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (7, CAST(N'2020-08-20T18:17:34.440' AS DateTime), NULL, N'vinh', N'13243', N'hà nội', N'vinh140999@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreateDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (8, CAST(N'2020-08-20T18:18:39.833' AS DateTime), NULL, N'vinh', N'13243', N'hà nội', N'hvjh', NULL)
INSERT [dbo].[Order] ([ID], [CreateDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (9, CAST(N'2020-08-20T18:19:51.487' AS DateTime), NULL, N'vinh', N'13243', N'hà nội', N'hvjh', NULL)
INSERT [dbo].[Order] ([ID], [CreateDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (10, CAST(N'2020-08-20T18:21:19.600' AS DateTime), NULL, N'fdfdfd', N'13243', N'hà nội', N'vinh140999@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreateDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (11, CAST(N'2020-08-20T21:06:11.083' AS DateTime), NULL, N'fdfdfd', N'13243', N'hà nội', N'vinh140999@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreateDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (12, CAST(N'2020-08-20T21:07:18.783' AS DateTime), NULL, N'vinh', N'13243', N'hà nội', N'vinh140999@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreateDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (13, CAST(N'2020-08-20T21:08:34.567' AS DateTime), NULL, N'vinh', N'13243', N'hà nội', N'hvjh', NULL)
INSERT [dbo].[Order] ([ID], [CreateDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (14, CAST(N'2020-08-20T21:11:17.740' AS DateTime), NULL, N'vinh', N'13243', N'hà nội', N'vinh140999@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreateDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (15, CAST(N'2020-08-20T21:13:32.970' AS DateTime), NULL, N'vinh', N'13243', N'hà nội', N'vinh140999@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreateDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (16, CAST(N'2020-08-20T21:25:26.113' AS DateTime), NULL, N'vinh', N'13243', N'hà nội', N'vinh140999@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreateDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (17, CAST(N'2020-08-20T21:26:59.217' AS DateTime), NULL, N'vinh', N'13243', N'hà nội', N'vinh140999@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreateDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (18, CAST(N'2020-08-20T21:29:09.427' AS DateTime), NULL, N'vinh', N'13243', N'hà nội', N'vinh140999@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreateDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (19, CAST(N'2020-08-20T22:01:07.373' AS DateTime), NULL, N'fdfdfd', N'13243', N'hà nội', N'vinh140999@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreateDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (20, CAST(N'2020-08-20T22:01:13.167' AS DateTime), NULL, N'fdfdfd', N'13243', N'hà nội', N'vinh140999@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreateDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (21, CAST(N'2020-08-20T22:02:07.483' AS DateTime), NULL, N'vinh', N'13243', N'hà nội', N'vinh140999@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreateDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (22, CAST(N'2020-08-20T22:06:01.437' AS DateTime), NULL, N'vinh', N'13243', N'hà nội', N'vinh140999@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreateDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (23, CAST(N'2020-08-20T22:23:42.293' AS DateTime), NULL, N'vinh', N'13243', N'hà nội', N'vinhamin99@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreateDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (24, CAST(N'2020-08-20T22:31:05.650' AS DateTime), NULL, N'vinh', N'13243', N'hà nội', N'vinh140999@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreateDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (25, CAST(N'2020-08-20T22:32:23.450' AS DateTime), NULL, N'vinh', N'13243', N'hà nội', N'vinh140999@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreateDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (26, CAST(N'2020-08-20T22:37:36.197' AS DateTime), NULL, N'vinh', N'13243', N'hà nội', N'vinh140999@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreateDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (27, CAST(N'2020-08-20T22:42:29.210' AS DateTime), NULL, N'vinh', N'13243', N'hà nội', N'vinh140999@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreateDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (28, CAST(N'2020-08-20T22:43:55.277' AS DateTime), NULL, N'vinh', N'13243', N'hà nội', N'vinh140999@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreateDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (29, CAST(N'2020-08-20T22:49:12.523' AS DateTime), NULL, N'vinh', N'13243', N'hà nội', N'vinh140999@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreateDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (30, CAST(N'2020-08-20T23:15:00.920' AS DateTime), NULL, N'vinh', N'13243', N'hà nội', N'vinh140999@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreateDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (31, CAST(N'2020-08-20T23:16:46.917' AS DateTime), NULL, N'vinh', N'13243', N'hà nội', N'vinh140999@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreateDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (32, CAST(N'2020-08-20T23:18:03.370' AS DateTime), NULL, N'vinh', N'13243', N'hà nội', N'vinh140999@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreateDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (33, CAST(N'2020-08-21T00:05:45.127' AS DateTime), NULL, N'vinh', N'13243', N'hà nội', N'vinh140999@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreateDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (34, CAST(N'2020-08-21T00:19:14.677' AS DateTime), NULL, N'vinh', N'13243', N'hà nội', N'vinh140999@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreateDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (35, CAST(N'2020-08-22T15:40:31.690' AS DateTime), NULL, N'vinh', N'13243', N'hà nội', N'vinh140999@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreateDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (36, CAST(N'2020-08-22T15:41:33.393' AS DateTime), NULL, N'vinh', N'13243', N'hà nội', N'vinh140999@gmail.com', NULL)
SET IDENTITY_INSERT [dbo].[Order] OFF
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (7, 7, 1, CAST(7535000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (7, 8, 1, CAST(7535000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (7, 14, 1, CAST(7535000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (7, 21, 1, CAST(7535000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (7, 22, 1, CAST(7535000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (7, 25, 1, CAST(7535000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (7, 28, 1, CAST(7535000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (7, 32, 1, CAST(7535000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (7, 36, 1, CAST(7535000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (8, 1, 1, CAST(4300000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (8, 2, 1, CAST(4300000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (8, 3, 1, CAST(4300000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (8, 4, 1, CAST(4300000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (8, 5, 1, CAST(4300000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (8, 6, 1, CAST(4300000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (8, 9, 1, CAST(4300000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (8, 10, 1, CAST(4300000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (8, 11, 1, CAST(4300000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (8, 12, 1, CAST(4300000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (8, 13, 1, CAST(4300000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (8, 15, 1, CAST(4300000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (8, 16, 1, CAST(4300000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (8, 17, 1, CAST(4300000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (8, 18, 1, CAST(4300000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (8, 19, 1, CAST(4300000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (8, 20, 1, CAST(4300000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (8, 23, 1, CAST(4300000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (8, 24, 1, CAST(4300000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (8, 26, 1, CAST(4300000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (8, 27, 1, CAST(4300000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (8, 29, 1, CAST(4300000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (8, 30, 1, CAST(4300000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (8, 31, 1, CAST(4300000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (8, 33, 1, CAST(4300000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (8, 34, 1, CAST(4300000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (8, 35, 1, CAST(4300000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywordl], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (1, N'Tivi Sony 21inch', N'A01', N'tivi-sony-21', N'Lorem ipsum dolor sit amet', N'/Assets/Client/images/feature-pic1.jpg', NULL, CAST(5770000 AS Decimal(18, 0)), NULL, NULL, 0, 1, N'Lorem ipsum dolor sit amet1', NULL, CAST(N'2020-08-14T14:23:24.083' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, CAST(N'2020-08-30T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywordl], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (2, N'Bộ loa 2.0 microlab', N'A02', N'bo-loa-20-microlab', N'Lorem ipsum dolor sit amet', N'/Assets/Client/images/feature-pic2.jpg', NULL, CAST(435000 AS Decimal(18, 0)), CAST(235000 AS Decimal(18, 0)), 0, 0, 1, N'Lorem ipsum dolor sit amet2', NULL, CAST(N'2020-08-14T14:24:31.273' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, NULL, 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywordl], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (3, N'Máy Ảnh Nikon', N'A03', N'may-anh-nikon', N'Lorem ipsum dolor sit amet', N'/Assets/Client/images/feature-pic3.jpg', NULL, CAST(2535000 AS Decimal(18, 0)), CAST(2350000 AS Decimal(18, 0)), 0, 0, 2, N'Lorem ipsum dolor sit amet 3', NULL, CAST(N'2020-08-14T14:25:01.120' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, NULL, 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywordl], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (4, N'Ti vi Plasma siêu phẳng', N'A04', N'ti-vi-plasma', N'Lorem ipsum dolor sit amet', N'/Assets/Client/images/feature-pic4.jpg', NULL, CAST(12535000 AS Decimal(18, 0)), CAST(12350000 AS Decimal(18, 0)), 0, 0, 2, N'Lorem ipsum dolor sit amet 4', NULL, CAST(N'2020-08-14T14:25:46.600' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, NULL, 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywordl], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (5, N'Máy Ảnh sony', N'A05', N'may-anh-sony', N'Lorem ipsum dolor sit amet', N'/Assets/Client/images/new-pic1.jpg', NULL, CAST(22535000 AS Decimal(18, 0)), NULL, 0, 0, 3, N'Lorem ipsum dolor sit amet5', NULL, CAST(N'2020-08-14T14:26:34.407' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, NULL, 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywordl], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (6, N'Dàn Karaoke 2.0', N'A06', N'dan-karaoke-20', N'Lorem ipsum dolor sit amet', N'/Assets/Client/images/new-pic2.jpg', NULL, CAST(12535000 AS Decimal(18, 0)), NULL, 0, 0, 3, N'Lorem ipsum dolor sit amet6', NULL, CAST(N'2020-08-14T14:27:15.253' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, NULL, 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywordl], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (7, N'Máy giặt Electrolux', N'A07', N'may-giat-electrolux', N'Lorem ipsum dolor sit amet', N'/Assets/Client/images/new-pic2.jpg', NULL, CAST(7535000 AS Decimal(18, 0)), NULL, 0, 0, 4, N'Lorem ipsum dolor sit amet7', NULL, CAST(N'2020-08-14T14:29:49.887' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, NULL, 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywordl], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (8, N'Đồng hồ đeo tay thời trang', N'A08', N'dong-ho-deo-tay-thoi-trang', N'Lorem ipsum dolor sit amet', N'/Assets/Client/images/new-pic3.jpg', N'<Images />', CAST(4300000 AS Decimal(18, 0)), NULL, 0, 0, 4, N'Lorem ipsum dolor sit amet8', NULL, CAST(N'2020-08-14T14:30:34.920' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, NULL, 0)
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[ProductCategory] ON 

INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (1, N'Đồng hồ                                                                                                                                                                                                                                                   ', N'dong-ho', NULL, 0, NULL, CAST(N'2020-08-14T14:15:25.180' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (2, N'Điện thoại                                                                                                                                                                                                                                                ', N'dien-thoai', NULL, 1, NULL, CAST(N'2020-08-14T14:15:46.193' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (3, N'Máy tính để  bàn                                                                                                                                                                                                                                          ', N'may-tinh-de-ban', NULL, 1, NULL, CAST(N'2020-08-14T14:16:06.103' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (4, N'Máy tính xách tay                                                                                                                                                                                                                                         ', N'may-tinh-xach-tay', NULL, 1, NULL, CAST(N'2020-08-14T14:16:25.843' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (5, N'Phụ kiện                                                                                                                                                                                                                                                  ', N'phu-kien', NULL, 1, NULL, CAST(N'2020-08-14T14:16:36.430' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (6, N'Phần mềm                                                                                                                                                                                                                                                  ', N'phan-mem', NULL, 1, NULL, CAST(N'2020-08-14T14:16:48.283' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (7, N'Thể thao                                                                                                                                                                                                                                                  ', N'the-thao', NULL, 1, NULL, CAST(N'2020-08-14T14:16:59.523' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (8, N'Thời trang                                                                                                                                                                                                                                                ', N'thoi-trang', NULL, 1, NULL, CAST(N'2020-08-14T14:17:13.380' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (9, N'Trang sức                                                                                                                                                                                                                                                 ', N'trang-suc', NULL, 1, NULL, CAST(N'2020-08-14T14:17:24.450' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (10, N'Đồ nội thất                                                                                                                                                                                                                                               ', N'do-noi-that', NULL, 1, NULL, CAST(N'2020-08-14T14:18:00.120' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (11, N'Làm đẹp                                                                                                                                                                                                                                                   ', N'lam-dep', NULL, 1, NULL, CAST(N'2020-08-14T14:19:04.640' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (12, N'ABC                                                                                                                                                                                                                                                       ', N'abc', 1, 1, NULL, CAST(N'2020-08-18T21:24:01.507' AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[ProductCategory] OFF
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'ADD_CONTENT', N'Thêm tin tức')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'ADD_USER', N'Thêm User')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'DELETE_USER', N'Xóa danh sách')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'EDIT_CONTENT', N'Sửa tin tức')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'EDIT_USER', N'Sửa danh sách')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'VIEW_USER', N'Xem danh sách')
SET IDENTITY_INSERT [dbo].[Slide] ON 

INSERT [dbo].[Slide] ([ID], [Image], [DisplayOrder], [Link], [Description], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (1, N'/Assets/Client/images/slide-2-image.jpg', 1, N'/', NULL, CAST(N'2020-08-14T14:34:34.547' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[Slide] ([ID], [Image], [DisplayOrder], [Link], [Description], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (2, N'/Assets/Client/images/slide-1-image.jpg', 2, N'/', NULL, CAST(N'2020-08-14T14:34:54.817' AS DateTime), NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Slide] OFF
INSERT [dbo].[Tag] ([ID], [Name]) VALUES (N'123', N'123')
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([ID], [UserName], [Password], [GroupID], [Name], [Address], [Email], [Phone], [ProvinceID], [DistrictID], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (1, N'Admin', N'202cb962ac59075b964b07152d234b70', N'ADMIN', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-07-21T10:38:36.210' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [Password], [GroupID], [Name], [Address], [Email], [Phone], [ProvinceID], [DistrictID], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (2, N'Vinh', N'202cb962ac59075b964b07152d234b70', N'MOD', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-07-25T17:23:31.170' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [Password], [GroupID], [Name], [Address], [Email], [Phone], [ProvinceID], [DistrictID], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (3, N'123', N'202cb962ac59075b964b07152d234b70', N'MOD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-07-27T00:22:13.170' AS DateTime), NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [Password], [GroupID], [Name], [Address], [Email], [Phone], [ProvinceID], [DistrictID], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (5, N'1234', N'202cb962ac59075b964b07152d234b70', N'MEMBER', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-08-12T22:32:41.360' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [Password], [GroupID], [Name], [Address], [Email], [Phone], [ProvinceID], [DistrictID], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (6, N'ly', N'202cb962ac59075b964b07152d234b70', N'MEMBER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [Password], [GroupID], [Name], [Address], [Email], [Phone], [ProvinceID], [DistrictID], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (7, N'vinh', N'202cb962ac59075b964b07152d234b70', N'MEMBER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [Password], [GroupID], [Name], [Address], [Email], [Phone], [ProvinceID], [DistrictID], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (8, N'long', N'202cb962ac59075b964b07152d234b70', N'MEMBER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [Password], [GroupID], [Name], [Address], [Email], [Phone], [ProvinceID], [DistrictID], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (9, NULL, N'vinhnguyen99', N'MEMBER', N'vinh', N'a', N'vinh123@gmail.com', N'43876', NULL, NULL, CAST(N'2020-08-22T22:57:00.880' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [Password], [GroupID], [Name], [Address], [Email], [Phone], [ProvinceID], [DistrictID], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (10, NULL, N'vinhnguyen99', N'MEMBER', N'vinh', N'hà lội', N'vinh1@gmail.com', N'43876', NULL, NULL, CAST(N'2020-08-23T08:38:17.270' AS DateTime), NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[User] OFF
INSERT [dbo].[UserGroup] ([ID], [Name]) VALUES (N'ADMIN', N'Quản trị')
INSERT [dbo].[UserGroup] ([ID], [Name]) VALUES (N'MEMBER', N'Thành viên')
INSERT [dbo].[UserGroup] ([ID], [Name]) VALUES (N'MOD', N'Moderatior')
ALTER TABLE [dbo].[About] ADD  CONSTRAINT [DF_About_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[About] ADD  CONSTRAINT [DF_About_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_DisplayOrder]  DEFAULT ((0)) FOR [DisplayOrder]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_ShowOnHome]  DEFAULT ((0)) FOR [ShowOnHome]
GO
ALTER TABLE [dbo].[Content] ADD  CONSTRAINT [DF_Content_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Content] ADD  CONSTRAINT [DF_Content_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Content] ADD  CONSTRAINT [DF_Content_ViewCount]  DEFAULT ((0)) FOR [ViewCount]
GO
ALTER TABLE [dbo].[Feedback] ADD  CONSTRAINT [DF_Feedback_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Language] ADD  CONSTRAINT [DF_Language_IsDefault]  DEFAULT ((0)) FOR [IsDefault]
GO
ALTER TABLE [dbo].[OrderDetail] ADD  CONSTRAINT [DF_OrderDetail_Quantity]  DEFAULT ((1)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Price]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Quantity]  DEFAULT ((0)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_ViewCount]  DEFAULT ((0)) FOR [ViewCount]
GO
ALTER TABLE [dbo].[ProductCategory] ADD  CONSTRAINT [DF_ProductCategory_DisplayOrder]  DEFAULT ((0)) FOR [DisplayOrder]
GO
ALTER TABLE [dbo].[ProductCategory] ADD  CONSTRAINT [DF_ProductCategory_CreatedData]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ProductCategory] ADD  CONSTRAINT [DF_ProductCategory_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[ProductCategory] ADD  CONSTRAINT [DF_ProductCategory_ShowOnHome]  DEFAULT ((0)) FOR [ShowOnHome]
GO
ALTER TABLE [dbo].[Slide] ADD  CONSTRAINT [DF_Slide_DisplayOrder]  DEFAULT ((1)) FOR [DisplayOrder]
GO
ALTER TABLE [dbo].[Slide] ADD  CONSTRAINT [DF_Slide_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Slide] ADD  CONSTRAINT [DF_Slide_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_GroupID]  DEFAULT ('MEMBER') FOR [GroupID]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO

USE [master]
GO
/****** Object:  Database [ASm1670final]    Script Date: 12/19/2023 10:50:50 AM ******/
CREATE DATABASE [ASm1670final]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ASm1670final', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ASm1670final.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ASm1670final_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ASm1670final_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ASm1670final].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ASm1670final] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ASm1670final] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ASm1670final] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ASm1670final] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ASm1670final] SET ARITHABORT OFF 
GO
ALTER DATABASE [ASm1670final] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ASm1670final] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ASm1670final] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ASm1670final] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ASm1670final] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ASm1670final] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ASm1670final] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ASm1670final] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ASm1670final] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ASm1670final] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ASm1670final] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ASm1670final] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ASm1670final] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ASm1670final] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ASm1670final] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ASm1670final] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [ASm1670final] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ASm1670final] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ASm1670final] SET  MULTI_USER 
GO
ALTER DATABASE [ASm1670final] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ASm1670final] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ASm1670final] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ASm1670final] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ASm1670final] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ASm1670final] SET QUERY_STORE = OFF
GO
USE [ASm1670final]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 12/19/2023 10:50:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 12/19/2023 10:50:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 12/19/2023 10:50:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 12/19/2023 10:50:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 12/19/2023 10:50:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 12/19/2023 10:50:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 12/19/2023 10:50:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 12/19/2023 10:50:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 12/19/2023 10:50:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BookName] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[DateAdd] [datetime2](7) NOT NULL,
	[Price] [int] NOT NULL,
	[UrlImage] [nvarchar](max) NOT NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 12/19/2023 10:50:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 12/19/2023 10:50:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Book_Name] [nvarchar](max) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Total] [decimal](18, 2) NULL,
	[OrderDate] [datetime2](7) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'6.0.23')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231204141121_initialCreate', N'6.0.23')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231204142619_initialCreate', N'6.0.23')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231206080600_Price', N'6.0.23')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231206142358_Order', N'6.0.23')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'AD', N'Admin', N'Admin', N'Admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'USER', N'User', N'User', N'User')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c1a8027d-1e83-4f68-bacf-0d36a9a34ca7', N'AD')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2e7ff855-c796-49d9-9d7c-1622affcee1d', N'USER')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'2e7ff855-c796-49d9-9d7c-1622affcee1d', N'customer@gmail.com', N'CUSTOMER@GMAIL.COM', N'customer@gmail.com', N'CUSTOMER@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAECvbV2aY0JWcjHqZej5ckdmJZTR+zbfDwVN2r7ZU4fArZOuDpYxmbX2qJSb4nIPFEg==', N'2VVWMILGSFGL2ZEHACPYVABN3KCJLURI', N'f721aab5-63fe-4895-b9f3-dc590135cbf9', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'c1a8027d-1e83-4f68-bacf-0d36a9a34ca7', N'admin@gmail.com', N'ADMIN@GMAIL.COM', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEB/JZA1WFeRiCSeA8R8JXr2HRUpz7OXO8BCXBj9TvlFNgR+Dnlsdw3jeh9I2lHWJAg==', N'MRQEKAKS4EDU6XY5OIDFVI4JBTVMN5SB', N'9a94392d-c714-478b-864e-1a1b785606e0', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Book] ON 

INSERT [dbo].[Book] ([Id], [BookName], [Description], [DateAdd], [Price], [UrlImage], [CategoryId]) VALUES (1, N'GhostBook', N'In these sections, you will discover many things such as why some people become ghosts and others do not. You will be taught some tips for ghost hunting. You will be explained the difference between mysterious phenomena and ghostly phenomena. You will be explained about the desperate huddle activity called "oui bridge". Finally, if you''re creative, you can write your own extremely scary (or extremely crazy, can''t swim) modern ghost stories. Ok! You have no reason to delay anymore... Buy the 10 BEST GHOST STORIES OF ALL TIME and read them. But there''s a small warning: Never read this book in the dark, simply because... you won''t be able to see the way. Attractive content, humorous and diverse presentation with fun illustrations. The book is suitable for readers aged 10 and up.', CAST(N'2023-12-04T21:43:00.0000000' AS DateTime2), 10, N'https://www.nxbtre.com.vn/Images/Book/nxbtre_full_09582018_025809.jpg', 2)
INSERT [dbo].[Book] ([Id], [BookName], [Description], [DateAdd], [Price], [UrlImage], [CategoryId]) VALUES (2, N'Game Of Throne', N'Winter is coming. Such is the stern motto of House Stark, the northernmost of the fiefdoms that owe allegiance to King Robert Baratheon in far-off King’s Landing. There Eddard Stark of Winterfell rules in Robert’s name. There his family dwells in peace and comfort: his proud wife, Catelyn; his sons Robb, Brandon, and Rickon; his daughters Sansa and Arya; and his bastard son, Jon Snow. Far to the north, behind the towering Wall, lie savage Wildings and worse—unnatural things relegated to myth during the centuries-long summer, but proving all too real and all too deadly in the turning of the season.', CAST(N'2023-11-26T21:45:00.0000000' AS DateTime2), 20, N'https://m.media-amazon.com/images/I/91dSMhdIzTL._AC_UF1000,1000_QL80_.jpg', 1)
INSERT [dbo].[Book] ([Id], [BookName], [Description], [DateAdd], [Price], [UrlImage], [CategoryId]) VALUES (3, N'Koren Gambit', N'“The Korean Gambit” is an Action Thriller Book Cover we designed for author Charles DeMaris, and it’s the second book in the Casey Reddick series.  Related posts', CAST(N'2023-11-29T11:50:00.0000000' AS DateTime2), 15, N'https://www.bookcoversart.com/wp-content/uploads/2019/09/Action-Thriller-Book-Cover-The-Korean-Gambit.jpg', 3)
INSERT [dbo].[Book] ([Id], [BookName], [Description], [DateAdd], [Price], [UrlImage], [CategoryId]) VALUES (4, N'Naruto', N'Naruto[d] is a Japanese anime television series based on Masashi Kishimoto''s manga series of the same name. The story follows Naruto Uzumaki, a young ninja who seeks recognition from his peers and dreams of becoming the Hokage, the leader of his village. Just like the manga, the anime series is divided into two separate parts: the first series retains the original manga''s title and is set in Naruto''s pre-teen years. The second series, a direct sequel titled Naruto: Shippuden,[e] takes place during his teens. Both anime series were animated by Pierrot, produced by Aniplex and licensed in North America by Viz Media.', CAST(N'2023-11-08T00:48:00.0000000' AS DateTime2), 50, N'https://picfiles.alphacoders.com/361/thumb-1920-361913.jpg', 1)
INSERT [dbo].[Book] ([Id], [BookName], [Description], [DateAdd], [Price], [UrlImage], [CategoryId]) VALUES (5, N'Tieng Viet Book', N'Sách Giáo Khoa Tiếng Anh Lớp 8 được chuẩn hóa theo khung chương trình của Bộ Giáo Dục. giúp các em rèn luyện các kĩ năng cơ bản nghe, nói, đọc viết bằng giọng phát âm chuẩn và các bài tập giúp các em rèn luyện để nâng cao các kĩ năng.  Mục lục Sách Giáo Khoa Tiếng Anh Lớp 8 :  Unit 1: My Friends – Bạn của tôi  Unit 2: Making arrangements – Sắp xếp  Unit 3: At home – Ở nhà  Unit 4: Our past – Quá khứ của chúng ta  Unit 5: Study Habits – Thói quen học tập  Unit 6: The young pioneers club – Câu lạc bộ Thiếu niên Tiền phong  Unit 7: My neighborhood – Láng giềng của tôi  Unit 8: Country life and city life – Đời sống ở nông thôn và đời sống ở thành thị  Unit 9: A first – Aid course – Khoá học cấp cứu  Unit 10: Recycling – Tái chế  Unit 11: Travelling around Viet Nam – Du lịch vòng quanh Việt Nam  Unit 12: A vacation abroad – Kì nghỉ ở nước ngoài  Unit 13: Festivals – Lễ hội  Unit 14: Wonders of the world – Kì quan của thế giới  Unit 15: Computers – Máy vi tính  Unit 16: Inventions – Các phát minh', CAST(N'2023-11-17T13:53:00.0000000' AS DateTime2), 45, N'https://book.sachgiai.com/uploads/book/sach-giao-khoa-tieng-viet-4-tap-2/sach-giao-khoa-tieng-viet-4-tap-2-0.jpg', 4)
SET IDENTITY_INSERT [dbo].[Book] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [CategoryName]) VALUES (1, N'Manga')
INSERT [dbo].[Category] ([Id], [CategoryName]) VALUES (2, N'Scary')
INSERT [dbo].[Category] ([Id], [CategoryName]) VALUES (3, N'Action')
INSERT [dbo].[Category] ([Id], [CategoryName]) VALUES (4, N'Study')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([Id], [Name], [Book_Name], [Quantity], [Price], [Total], [OrderDate]) VALUES (17, N'customer@gmail.com', N'GhostBook', 6, CAST(10.00 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), CAST(N'2023-12-11T15:11:50.6563523' AS DateTime2))
INSERT [dbo].[Order] ([Id], [Name], [Book_Name], [Quantity], [Price], [Total], [OrderDate]) VALUES (19, N'admin@gmail.com', N'Naruto', 4, CAST(500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(N'2023-12-16T09:01:24.1097343' AS DateTime2))
INSERT [dbo].[Order] ([Id], [Name], [Book_Name], [Quantity], [Price], [Total], [OrderDate]) VALUES (20, N'customer@gmail.com', N'Koren Gambit', 1, CAST(15.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), CAST(N'2023-12-16T09:05:16.6474372' AS DateTime2))
INSERT [dbo].[Order] ([Id], [Name], [Book_Name], [Quantity], [Price], [Total], [OrderDate]) VALUES (21, N'customer@gmail.com', N'Game Of Throne', 1, CAST(20.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(N'2023-12-16T09:05:16.6731511' AS DateTime2))
INSERT [dbo].[Order] ([Id], [Name], [Book_Name], [Quantity], [Price], [Total], [OrderDate]) VALUES (23, N'customer@gmail.com', N'GhostBook', 1, CAST(10.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(N'2023-12-19T10:19:59.9543971' AS DateTime2))
INSERT [dbo].[Order] ([Id], [Name], [Book_Name], [Quantity], [Price], [Total], [OrderDate]) VALUES (24, N'customer@gmail.com', N'GhostBook', 3, CAST(10.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(N'2023-12-19T10:46:28.3520757' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 12/19/2023 10:50:50 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 12/19/2023 10:50:50 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 12/19/2023 10:50:50 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 12/19/2023 10:50:50 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 12/19/2023 10:50:50 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 12/19/2023 10:50:50 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 12/19/2023 10:50:50 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Book_CategoryId]    Script Date: 12/19/2023 10:50:50 AM ******/
CREATE NONCLUSTERED INDEX [IX_Book_CategoryId] ON [dbo].[Book]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Category_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Category_CategoryId]
GO
USE [master]
GO
ALTER DATABASE [ASm1670final] SET  READ_WRITE 
GO

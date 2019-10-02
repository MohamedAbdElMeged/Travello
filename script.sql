USE [master]
GO
/****** Object:  Database [Travello]    Script Date: 6/16/2019 1:52:21 PM ******/
CREATE DATABASE [Travello]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Travello', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Travello.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Travello_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Travello_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Travello] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Travello].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Travello] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Travello] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Travello] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Travello] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Travello] SET ARITHABORT OFF 
GO
ALTER DATABASE [Travello] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Travello] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Travello] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Travello] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Travello] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Travello] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Travello] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Travello] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Travello] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Travello] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Travello] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Travello] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Travello] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Travello] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Travello] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Travello] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [Travello] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Travello] SET RECOVERY FULL 
GO
ALTER DATABASE [Travello] SET  MULTI_USER 
GO
ALTER DATABASE [Travello] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Travello] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Travello] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Travello] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Travello] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Travello', N'ON'
GO
ALTER DATABASE [Travello] SET QUERY_STORE = OFF
GO
USE [Travello]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 6/16/2019 1:52:21 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 6/16/2019 1:52:21 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 6/16/2019 1:52:21 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 6/16/2019 1:52:21 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 6/16/2019 1:52:21 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 6/16/2019 1:52:21 PM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 6/16/2019 1:52:21 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 6/16/2019 1:52:21 PM ******/
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
/****** Object:  Table [dbo].[City]    Script Date: 6/16/2019 1:52:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[City_id] [int] IDENTITY(1,1) NOT NULL,
	[City_Name] [nvarchar](max) NULL,
	[City_pic] [nvarchar](max) NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[City_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hotels]    Script Date: 6/16/2019 1:52:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotels](
	[Hotel_Id] [int] IDENTITY(1,1) NOT NULL,
	[Hotel_name] [nvarchar](max) NULL,
	[Hotel_Pic] [nvarchar](max) NULL,
	[Rooms_available] [int] NOT NULL,
	[Rooms_quantity] [int] NOT NULL,
	[city_id] [int] NOT NULL,
	[Hotel_type] [int] NOT NULL,
	[Room_price] [float] NOT NULL,
	[Gymnesium] [bit] NOT NULL,
	[Restaurant] [bit] NOT NULL,
	[RoomService] [bit] NOT NULL,
	[SwimmingPool] [bit] NOT NULL,
	[Wi_fi] [bit] NOT NULL,
 CONSTRAINT [PK_Hotels] PRIMARY KEY CLUSTERED 
(
	[Hotel_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 6/16/2019 1:52:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Order_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [nvarchar](max) NULL,
	[room_id] [int] NOT NULL,
	[person_quantity] [int] NOT NULL,
	[Order_from] [datetime2](7) NOT NULL,
	[Order_to] [datetime2](7) NOT NULL,
	[total_price] [float] NOT NULL,
	[Order_timestamp] [datetime2](7) NOT NULL,
	[user_name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 6/16/2019 1:52:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[Room_id] [int] IDENTITY(1,1) NOT NULL,
	[Room_type] [int] NOT NULL,
	[Hotel_id] [int] NOT NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[Room_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'2.2.4-servicing-10062')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190614220719_HotelMigration', N'2.2.4-servicing-10062')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190614222739_HotelCityMigration', N'2.2.4-servicing-10062')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190614233745_HotelMigrationnn', N'2.2.4-servicing-10062')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190615000937_HotelCityMigrationsaa', N'2.2.4-servicing-10062')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190615005454_HotelMigrationnnuuju', N'2.2.4-servicing-10062')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190615213330_migratokvxcvxc', N'2.2.4-servicing-10062')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190615213523_migratokvxcvxcssa', N'2.2.4-servicing-10062')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190615214008_migratokvxcvxcssawqw', N'2.2.4-servicing-10062')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190615220139_migratokvxcvxcssattytyty', N'2.2.4-servicing-10062')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190616104716_miksacascas', N'2.2.4-servicing-10062')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'1', N'normal', N'Normal', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'2', N'admin', N'admin', NULL)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'062ca6d6-1d77-44d1-9aa4-36950fd1139f', N'1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2be293a3-0735-4167-aa56-a317a5390b06', N'1')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'062ca6d6-1d77-44d1-9aa4-36950fd1139f', N'momeged99@ag.com', N'MOMEGED99@AG.COM', N'momeged99@ag.com', N'MOMEGED99@AG.COM', 0, N'AQAAAAEAACcQAAAAEG/hgan1NELIcacuAiUKtvOHdI+Ov0bjMSQ6oO1A30TwKltkmQE/mIgrnXgdZ2BoZg==', N'D5PMFH5L44XMYQU6C2K3O6FTAYQNBMRJ', N'42405953-9a15-4785-95de-c07753cb4295', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'2be293a3-0735-4167-aa56-a317a5390b06', N'mabdelmeged.se@gmail.com', N'MABDELMEGED.SE@GMAIL.COM', N'mabdelmeged.se@gmail.com', N'MABDELMEGED.SE@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEOVMHp2gKXaJmngvcCV9AgMjI4+B4GTUjyrLRsDLkEdtwyNJxzJ3THqNsI2TVqrrNw==', N'EMSDMS3CIJ64NSNTUV2N46MFQRCEGI6X', N'797a95a9-ec71-4c4e-b04e-6506389be189', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'30a766d5-ce61-4979-972a-90efaab73426', N'MohamedAbdELMeged', N'MOHAMEDABDELMEGED', N'momeged99@gmail.com', N'MOMEGED99@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAENqUA0aXSeWA6k9wDzJduIVlb3CfC/v3qguSapHl4XXTlhisjnbmV5udL5pjiQIJPA==', N'IS2MKDCSVDPMRQ33C6GDTBSO2GGNQQPS', N'7910e1bc-3014-43ab-8413-297a288c7f7a', NULL, 0, 0, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[City] ON 

INSERT [dbo].[City] ([City_id], [City_Name], [City_pic]) VALUES (1, N'paris', N'img/d2.jpg')
INSERT [dbo].[City] ([City_id], [City_Name], [City_pic]) VALUES (2, N'paraguay', N'img/d1.jpg')
INSERT [dbo].[City] ([City_id], [City_Name], [City_pic]) VALUES (3, N'cuba', N'img/d3.jpg')
INSERT [dbo].[City] ([City_id], [City_Name], [City_pic]) VALUES (4, N'egypt', N'img/d4.jpg')
INSERT [dbo].[City] ([City_id], [City_Name], [City_pic]) VALUES (5, N'roma', N'img/d5.jpg')
SET IDENTITY_INSERT [dbo].[City] OFF
SET IDENTITY_INSERT [dbo].[Hotels] ON 

INSERT [dbo].[Hotels] ([Hotel_Id], [Hotel_name], [Hotel_Pic], [Rooms_available], [Rooms_quantity], [city_id], [Hotel_type], [Room_price], [Gymnesium], [Restaurant], [RoomService], [SwimmingPool], [Wi_fi]) VALUES (2, N'Hilton', N'img/hotels/d1.jpg', 500, 600, 1, 1, 500, 1, 0, 1, 0, 1)
INSERT [dbo].[Hotels] ([Hotel_Id], [Hotel_name], [Hotel_Pic], [Rooms_available], [Rooms_quantity], [city_id], [Hotel_type], [Room_price], [Gymnesium], [Restaurant], [RoomService], [SwimmingPool], [Wi_fi]) VALUES (3, N'Fourseasons', N'img/hotels/d2.jpg', 300, 450, 2, 2, 680, 0, 1, 1, 0, 1)
INSERT [dbo].[Hotels] ([Hotel_Id], [Hotel_name], [Hotel_Pic], [Rooms_available], [Rooms_quantity], [city_id], [Hotel_type], [Room_price], [Gymnesium], [Restaurant], [RoomService], [SwimmingPool], [Wi_fi]) VALUES (4, N'Kempinski', N'img/hotels/d3.jpg', 250, 300, 3, 3, 790, 1, 1, 1, 0, 1)
INSERT [dbo].[Hotels] ([Hotel_Id], [Hotel_name], [Hotel_Pic], [Rooms_available], [Rooms_quantity], [city_id], [Hotel_type], [Room_price], [Gymnesium], [Restaurant], [RoomService], [SwimmingPool], [Wi_fi]) VALUES (5, N'Tolip', N'img/hotels/d4.jpg', 400, 600, 5, 1, 1000, 0, 1, 0, 1, 1)
SET IDENTITY_INSERT [dbo].[Hotels] OFF
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([Order_id], [user_id], [room_id], [person_quantity], [Order_from], [Order_to], [total_price], [Order_timestamp], [user_name]) VALUES (1, NULL, 0, 3, CAST(N'2019-06-16T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, CAST(N'2019-06-16T13:14:20.8514964' AS DateTime2), N'mabdelmeged.se@gmail.com')
INSERT [dbo].[Order] ([Order_id], [user_id], [room_id], [person_quantity], [Order_from], [Order_to], [total_price], [Order_timestamp], [user_name]) VALUES (2, N'2be293a3-0735-4167-aa56-a317a5390b06', 1, 2, CAST(N'2019-06-16T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1500, CAST(N'2019-06-16T13:20:49.2198214' AS DateTime2), N'mabdelmeged.se@gmail.com')
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[Room] ON 

INSERT [dbo].[Room] ([Room_id], [Room_type], [Hotel_id]) VALUES (1, 1, 2)
INSERT [dbo].[Room] ([Room_id], [Room_type], [Hotel_id]) VALUES (2, 2, 3)
INSERT [dbo].[Room] ([Room_id], [Room_type], [Hotel_id]) VALUES (3, 1, 4)
INSERT [dbo].[Room] ([Room_id], [Room_type], [Hotel_id]) VALUES (4, 2, 5)
SET IDENTITY_INSERT [dbo].[Room] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 6/16/2019 1:52:22 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 6/16/2019 1:52:22 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 6/16/2019 1:52:22 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 6/16/2019 1:52:22 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 6/16/2019 1:52:22 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 6/16/2019 1:52:22 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 6/16/2019 1:52:22 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Hotels_city_id]    Script Date: 6/16/2019 1:52:22 PM ******/
CREATE NONCLUSTERED INDEX [IX_Hotels_city_id] ON [dbo].[Hotels]
(
	[city_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Room_Hotel_id]    Script Date: 6/16/2019 1:52:22 PM ******/
CREATE NONCLUSTERED INDEX [IX_Room_Hotel_id] ON [dbo].[Room]
(
	[Hotel_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Hotels] ADD  DEFAULT ((0)) FOR [Rooms_available]
GO
ALTER TABLE [dbo].[Hotels] ADD  DEFAULT ((0)) FOR [Rooms_quantity]
GO
ALTER TABLE [dbo].[Hotels] ADD  DEFAULT ((0)) FOR [city_id]
GO
ALTER TABLE [dbo].[Hotels] ADD  DEFAULT ((0)) FOR [Hotel_type]
GO
ALTER TABLE [dbo].[Hotels] ADD  DEFAULT ((0.0000000000000000e+000)) FOR [Room_price]
GO
ALTER TABLE [dbo].[Hotels] ADD  DEFAULT ((0)) FOR [Gymnesium]
GO
ALTER TABLE [dbo].[Hotels] ADD  DEFAULT ((0)) FOR [Restaurant]
GO
ALTER TABLE [dbo].[Hotels] ADD  DEFAULT ((0)) FOR [RoomService]
GO
ALTER TABLE [dbo].[Hotels] ADD  DEFAULT ((0)) FOR [SwimmingPool]
GO
ALTER TABLE [dbo].[Hotels] ADD  DEFAULT ((0)) FOR [Wi_fi]
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
ALTER TABLE [dbo].[Hotels]  WITH CHECK ADD  CONSTRAINT [FK_Hotels_City_city_id] FOREIGN KEY([city_id])
REFERENCES [dbo].[City] ([City_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Hotels] CHECK CONSTRAINT [FK_Hotels_City_city_id]
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD  CONSTRAINT [FK_Room_Hotels_Hotel_id] FOREIGN KEY([Hotel_id])
REFERENCES [dbo].[Hotels] ([Hotel_Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Room] CHECK CONSTRAINT [FK_Room_Hotels_Hotel_id]
GO
USE [master]
GO
ALTER DATABASE [Travello] SET  READ_WRITE 
GO

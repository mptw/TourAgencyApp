USE [master]
GO
/****** Object:  Database [aspnet-TourAgencyApp-2d7285c3-16b7-4b46-854b-fb40c24cbae6]    Script Date: 20/05/2024 12:55:15 ******/
CREATE DATABASE [aspnet-TourAgencyApp-2d7285c3-16b7-4b46-854b-fb40c24cbae6]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'aspnet-TourAgencyApp-2d7285c3-16b7-4b46-854b-fb40c24cbae6', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\aspnet-TourAgencyApp-2d7285c3-16b7-4b46-854b-fb40c24cbae6.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'aspnet-TourAgencyApp-2d7285c3-16b7-4b46-854b-fb40c24cbae6_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\aspnet-TourAgencyApp-2d7285c3-16b7-4b46-854b-fb40c24cbae6_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [aspnet-TourAgencyApp-2d7285c3-16b7-4b46-854b-fb40c24cbae6] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [aspnet-TourAgencyApp-2d7285c3-16b7-4b46-854b-fb40c24cbae6].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [aspnet-TourAgencyApp-2d7285c3-16b7-4b46-854b-fb40c24cbae6] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [aspnet-TourAgencyApp-2d7285c3-16b7-4b46-854b-fb40c24cbae6] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [aspnet-TourAgencyApp-2d7285c3-16b7-4b46-854b-fb40c24cbae6] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [aspnet-TourAgencyApp-2d7285c3-16b7-4b46-854b-fb40c24cbae6] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [aspnet-TourAgencyApp-2d7285c3-16b7-4b46-854b-fb40c24cbae6] SET ARITHABORT OFF 
GO
ALTER DATABASE [aspnet-TourAgencyApp-2d7285c3-16b7-4b46-854b-fb40c24cbae6] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [aspnet-TourAgencyApp-2d7285c3-16b7-4b46-854b-fb40c24cbae6] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [aspnet-TourAgencyApp-2d7285c3-16b7-4b46-854b-fb40c24cbae6] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [aspnet-TourAgencyApp-2d7285c3-16b7-4b46-854b-fb40c24cbae6] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [aspnet-TourAgencyApp-2d7285c3-16b7-4b46-854b-fb40c24cbae6] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [aspnet-TourAgencyApp-2d7285c3-16b7-4b46-854b-fb40c24cbae6] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [aspnet-TourAgencyApp-2d7285c3-16b7-4b46-854b-fb40c24cbae6] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [aspnet-TourAgencyApp-2d7285c3-16b7-4b46-854b-fb40c24cbae6] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [aspnet-TourAgencyApp-2d7285c3-16b7-4b46-854b-fb40c24cbae6] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [aspnet-TourAgencyApp-2d7285c3-16b7-4b46-854b-fb40c24cbae6] SET  DISABLE_BROKER 
GO
ALTER DATABASE [aspnet-TourAgencyApp-2d7285c3-16b7-4b46-854b-fb40c24cbae6] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [aspnet-TourAgencyApp-2d7285c3-16b7-4b46-854b-fb40c24cbae6] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [aspnet-TourAgencyApp-2d7285c3-16b7-4b46-854b-fb40c24cbae6] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [aspnet-TourAgencyApp-2d7285c3-16b7-4b46-854b-fb40c24cbae6] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [aspnet-TourAgencyApp-2d7285c3-16b7-4b46-854b-fb40c24cbae6] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [aspnet-TourAgencyApp-2d7285c3-16b7-4b46-854b-fb40c24cbae6] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [aspnet-TourAgencyApp-2d7285c3-16b7-4b46-854b-fb40c24cbae6] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [aspnet-TourAgencyApp-2d7285c3-16b7-4b46-854b-fb40c24cbae6] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [aspnet-TourAgencyApp-2d7285c3-16b7-4b46-854b-fb40c24cbae6] SET  MULTI_USER 
GO
ALTER DATABASE [aspnet-TourAgencyApp-2d7285c3-16b7-4b46-854b-fb40c24cbae6] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [aspnet-TourAgencyApp-2d7285c3-16b7-4b46-854b-fb40c24cbae6] SET DB_CHAINING OFF 
GO
ALTER DATABASE [aspnet-TourAgencyApp-2d7285c3-16b7-4b46-854b-fb40c24cbae6] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [aspnet-TourAgencyApp-2d7285c3-16b7-4b46-854b-fb40c24cbae6] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [aspnet-TourAgencyApp-2d7285c3-16b7-4b46-854b-fb40c24cbae6] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [aspnet-TourAgencyApp-2d7285c3-16b7-4b46-854b-fb40c24cbae6] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [aspnet-TourAgencyApp-2d7285c3-16b7-4b46-854b-fb40c24cbae6] SET QUERY_STORE = OFF
GO
USE [aspnet-TourAgencyApp-2d7285c3-16b7-4b46-854b-fb40c24cbae6]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 20/05/2024 12:55:16 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 20/05/2024 12:55:16 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 20/05/2024 12:55:16 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 20/05/2024 12:55:16 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 20/05/2024 12:55:16 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 20/05/2024 12:55:16 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 20/05/2024 12:55:16 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 20/05/2024 12:55:16 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 20/05/2024 12:55:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Text] [nvarchar](max) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[TourId] [int] NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Event]    Script Date: 20/05/2024 12:55:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](60) NOT NULL,
	[EventDate] [datetime2](7) NOT NULL,
	[Destination] [nvarchar](60) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[ImageName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Event] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EventBooking]    Script Date: 20/05/2024 12:55:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventBooking](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EventId] [int] NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_EventBooking] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tour]    Script Date: 20/05/2024 12:55:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tour](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](60) NOT NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[EndDate] [datetime2](7) NOT NULL,
	[Country] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[ImageName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tour] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TourBooking]    Script Date: 20/05/2024 12:55:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TourBooking](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TourId] [int] NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_TourBooking] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'8.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240518221759_InitialCreate', N'8.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240519130453_adedTourBookings', N'8.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240519134846_moddedTourBookings', N'8.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240519153636_addedEventBooking', N'8.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240519154526_moddedEventBooking', N'8.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240519163322_addedPicToTour', N'8.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240519164736_addedPicToTourIO', N'8.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240519173006_addedPicToTouriff', N'8.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240519173020_addedPicToTouriff2', N'8.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240519183912_addedPicToTouriff3', N'8.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240519192106_addedPicToEvent', N'8.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240519224017_addcommentstotour', N'8.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240520000800_addPayment', N'8.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240520000838_addPaymentModDate', N'8.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240520000859_addPaymentModDate1', N'8.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240520061925_removePayment', N'8.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240520084405_update', N'8.0.5')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'1fb8886a-a1ff-48d7-a761-a2a0f528a1c3', N'Member', N'MEMBER', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'771d9158-db16-471b-b1a1-4110f5909d81', N'Admin', N'ADMIN', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'a02d6c46-3757-4ac9-9572-69143046d6de', N'Guest', N'GUEST', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'66f950fb-391b-4125-a925-49f728c9a239', N'771d9158-db16-471b-b1a1-4110f5909d81')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'3bfd78fe-7ef0-49d8-ae4e-5a9f77e49dcd', N'test1@test.com', N'TEST1@TEST.COM', N'test1@test.com', N'TEST1@TEST.COM', 1, N'AQAAAAIAAYagAAAAEKPuj+YwlSaoAPp4/56THkHJ9zRjyxfQEM6KwbhCsk/kxfq7SQNEuwlgHxtRmHhVqA==', N'TRLG3AHMOHOAKFNE6N6OTKEFM5XFUGJ5', N'549789b4-fa1e-4a73-9ca5-73ba8078e1c8', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'66f950fb-391b-4125-a925-49f728c9a239', N'admin@gmail.com', N'ADMIN@GMAIL.COM', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEAbD3LX7xFu/Swlr1adAxDQjQG23nmmQLnmBh+RfyHwZCcOzIHQuZORfOazjMPAv+Q==', N'SKMRAI4JEURZMIA2N4EVBRL5ZEX7QMIW', N'46b70a81-e574-49b1-979a-a0dd9aa11663', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'70cfafec-56f4-4ac4-8f10-2ad72d8b2e3f', N'test@test.com', N'TEST@TEST.COM', N'test@test.com', N'TEST@TEST.COM', 1, N'AQAAAAIAAYagAAAAEBMpk41SwWiKX89F8qrdvUcnJkA0bArUWXjt4btVyn5vZQbqltBCyn5xkehmtsRjfw==', N'42FATOOIVY7CEK3SSQDQSVM54WSXP7MX', N'd7c1af9b-0eeb-4c29-b8d4-875e3eef2bb8', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'f17c49e2-bf79-482b-87db-c7b840997606', N'test2@test.com', N'TEST2@TEST.COM', N'test2@test.com', N'TEST2@TEST.COM', 1, N'AQAAAAIAAYagAAAAEOlC2O/82JILPjWzMJ0lZ7prAvTbngUsQWCGcpnHDFSuF2z1pHoZMXTLQN4o9Lkadg==', N'G2TFZZAT35ALB4AI52TUCFR2I2V35Y2I', N'a57c7066-331c-4cf8-9dda-7ac5e89367a5', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Comment] ON 

INSERT [dbo].[Comment] ([Id], [Text], [CreatedDate], [TourId], [UserId]) VALUES (1, N'Can''t wait!', CAST(N'2024-05-20T01:58:49.4545001' AS DateTime2), 10, N'70cfafec-56f4-4ac4-8f10-2ad72d8b2e3f')
INSERT [dbo].[Comment] ([Id], [Text], [CreatedDate], [TourId], [UserId]) VALUES (2, N'Can''t wait!', CAST(N'2024-05-20T02:05:06.7418939' AS DateTime2), 10, N'70cfafec-56f4-4ac4-8f10-2ad72d8b2e3f')
INSERT [dbo].[Comment] ([Id], [Text], [CreatedDate], [TourId], [UserId]) VALUES (3, N'So far, so good!', CAST(N'2024-05-20T02:18:31.7261991' AS DateTime2), 11, N'70cfafec-56f4-4ac4-8f10-2ad72d8b2e3f')
INSERT [dbo].[Comment] ([Id], [Text], [CreatedDate], [TourId], [UserId]) VALUES (4, N'Can''t wait!', CAST(N'2024-05-20T02:19:42.4640349' AS DateTime2), 11, N'70cfafec-56f4-4ac4-8f10-2ad72d8b2e3f')
INSERT [dbo].[Comment] ([Id], [Text], [CreatedDate], [TourId], [UserId]) VALUES (5, N'Can''t wait!', CAST(N'2024-05-20T02:22:25.7857206' AS DateTime2), 13, N'70cfafec-56f4-4ac4-8f10-2ad72d8b2e3f')
INSERT [dbo].[Comment] ([Id], [Text], [CreatedDate], [TourId], [UserId]) VALUES (6, N'So far, so good!', CAST(N'2024-05-20T02:31:58.8898222' AS DateTime2), 13, N'70cfafec-56f4-4ac4-8f10-2ad72d8b2e3f')
INSERT [dbo].[Comment] ([Id], [Text], [CreatedDate], [TourId], [UserId]) VALUES (7, N'I''m looking forward to it :)', CAST(N'2024-05-20T08:46:22.6151922' AS DateTime2), 12, N'3bfd78fe-7ef0-49d8-ae4e-5a9f77e49dcd')
SET IDENTITY_INSERT [dbo].[Comment] OFF
GO
SET IDENTITY_INSERT [dbo].[Event] ON 

INSERT [dbo].[Event] ([Id], [Title], [EventDate], [Destination], [Description], [Price], [ImageName]) VALUES (10, N'Rila Lakes hike', CAST(N'2024-05-26T00:00:00.0000000' AS DateTime2), N'Rila Lakes, Rila mountain, Bulgaria', N'Join a guided one - day hike to the breathtaking Rila Lakes, located in the Rila Mountains, where you''ll trek through stunning alpine landscapes, traverse scenic mountain trails, and marvel at the crystal-clear waters of the seven shimmering lakes, including the majestic Popovo Lake, offering breathtaking views of the surrounding peaks and valleys.', CAST(40.00 AS Decimal(18, 2)), N'RilaLakesHike.jpg')
INSERT [dbo].[Event] ([Id], [Title], [EventDate], [Destination], [Description], [Price], [ImageName]) VALUES (11, N'Trolltunga Hike', CAST(N'2024-06-15T00:00:00.0000000' AS DateTime2), N'Hardangervidda, Norway', N'Embark on a challenging 10-hour hike to the iconic Trolltunga rock formation, offering breathtaking views of the Norwegian wilderness and the surrounding mountains.', CAST(120.00 AS Decimal(18, 2)), N'TrolltungaHike.jpg')
INSERT [dbo].[Event] ([Id], [Title], [EventDate], [Destination], [Description], [Price], [ImageName]) VALUES (12, N'Santorini Sunset Cruise', CAST(N'2024-08-03T00:00:00.0000000' AS DateTime2), N'Santorini, Greece', N'Relax on a luxurious catamaran cruise around the stunning caldera of Santorini, watching the breathtaking sunset over the Aegean Sea, and enjoying a refreshing cocktail and canapés.', CAST(60.00 AS Decimal(18, 2)), N'SantoriniSunsetCruise.jpg')
INSERT [dbo].[Event] ([Id], [Title], [EventDate], [Destination], [Description], [Price], [ImageName]) VALUES (13, N'Iguazu Falls Hike', CAST(N'2024-04-20T00:00:00.0000000' AS DateTime2), N'Iguazu Falls, Argentina/Brazil', N'Join a guided hike to the breathtaking Devil''s Throat waterfall, exploring the lush tropical forests and getting up close to the roaring falls, with stunning views of the surrounding Argentine and Brazilian sides.', CAST(80.00 AS Decimal(18, 2)), N'IguazuFallsHike.jpg')
INSERT [dbo].[Event] ([Id], [Title], [EventDate], [Destination], [Description], [Price], [ImageName]) VALUES (14, N'Tuscan Wine Tasting', CAST(N'2024-09-15T00:00:00.0000000' AS DateTime2), N'Florence, Italy', N'Join us for a guided wine tasting tour in the picturesque Tuscan countryside, exploring the region''s famous vineyards and enjoying a selection of fine wines and gourmet cheeses.', CAST(75.00 AS Decimal(18, 2)), N'TuscanWineTasting.jpg')
SET IDENTITY_INSERT [dbo].[Event] OFF
GO
SET IDENTITY_INSERT [dbo].[EventBooking] ON 

INSERT [dbo].[EventBooking] ([Id], [EventId], [UserId]) VALUES (1, 11, N'70cfafec-56f4-4ac4-8f10-2ad72d8b2e3f')
INSERT [dbo].[EventBooking] ([Id], [EventId], [UserId]) VALUES (3, 13, N'3bfd78fe-7ef0-49d8-ae4e-5a9f77e49dcd')
SET IDENTITY_INSERT [dbo].[EventBooking] OFF
GO
SET IDENTITY_INSERT [dbo].[Tour] ON 

INSERT [dbo].[Tour] ([Id], [Title], [StartDate], [EndDate], [Country], [Description], [Price], [ImageName]) VALUES (10, N'4 days in Italy', CAST(N'2024-05-25T00:00:00.0000000' AS DateTime2), CAST(N'2024-05-29T00:00:00.0000000' AS DateTime2), N'Italy', N'Discover the essence of Italy on a 4-day getaway, exploring Rome''s ancient ruins and Vatican City, then jetting off to the Amalfi Coast, where you''ll soak up the sun on picturesque beaches like Positano and Amalfi, and finally indulge in the romantic charm of Venice, with its winding canals and stunning St. Mark''s Square.', CAST(1400.00 AS Decimal(18, 2)), N'Italy.jpg')
INSERT [dbo].[Tour] ([Id], [Title], [StartDate], [EndDate], [Country], [Description], [Price], [ImageName]) VALUES (11, N'A week in Greece', CAST(N'2024-05-19T00:00:00.0000000' AS DateTime2), CAST(N'2024-05-29T00:00:00.0000000' AS DateTime2), N'Greece', N'Explore the best of Greece on a 7-day adventure, visiting Athens, the cradle of Western civilization, and its iconic Acropolis, then island-hop to Mykonos, with its vibrant nightlife and stunning beaches, and finally relax on the picturesque shores of Santorini, with its famous black sand beach and breathtaking sunsets.', CAST(1700.00 AS Decimal(18, 2)), N'Greece.jpg')
INSERT [dbo].[Tour] ([Id], [Title], [StartDate], [EndDate], [Country], [Description], [Price], [ImageName]) VALUES (12, N'3 days in Germany', CAST(N'2024-05-27T00:00:00.0000000' AS DateTime2), CAST(N'2024-05-30T00:00:00.0000000' AS DateTime2), N'Germany', N'Experience the best of Germany on a 3-day adventure, visiting Berlin''s vibrant city center and iconic landmarks like the Brandenburg Gate, then exploring the charming medieval town of Rothenburg ob der Tauber, and finally relaxing in the picturesque coastal town of Sylt, with its stunning beaches and rugged North Sea coastline.', CAST(900.00 AS Decimal(18, 2)), N'Germany.jpg')
INSERT [dbo].[Tour] ([Id], [Title], [StartDate], [EndDate], [Country], [Description], [Price], [ImageName]) VALUES (13, N'6 days in Spain', CAST(N'2024-05-21T00:00:00.0000000' AS DateTime2), CAST(N'2024-05-27T00:00:00.0000000' AS DateTime2), N'Spain', N'Embark on a 6-day odyssey through Spain, discovering the rich history and culture of Madrid''s Royal Palace and Prado Museum, then heading to the sun-kissed Costa Brava, where you''ll unwind on the pristine beaches of Lloret de Mar and Tossa de Mar, and finally experience the vibrant energy of Barcelona, with its iconic Sagrada Familia and bustling La Rambla.', CAST(2100.00 AS Decimal(18, 2)), N'Spain.jpg')
INSERT [dbo].[Tour] ([Id], [Title], [StartDate], [EndDate], [Country], [Description], [Price], [ImageName]) VALUES (15, N'week in Costa Rica', CAST(N'2024-10-10T00:00:00.0000000' AS DateTime2), CAST(N'2024-10-17T00:00:00.0000000' AS DateTime2), N'Costa Rica', N'Escape to the tropical paradise of Costa Rica on a 7-day adventure, exploring the lush rainforests and exotic wildlife of Arenal Volcano, then relaxing on the stunning beaches of the Nicoya Peninsula. Next, venture to the cloud forests of Monteverde, where you''ll hike through the misty treetops and marvel at the unique ecosystem. Finally, unwind in the vibrant city of San José, with its colorful markets and rich cultural heritage.', CAST(3200.00 AS Decimal(18, 2)), N'CostaRica.jpg')
INSERT [dbo].[Tour] ([Id], [Title], [StartDate], [EndDate], [Country], [Description], [Price], [ImageName]) VALUES (16, N'9 days in Spain', CAST(N'2024-08-01T00:00:00.0000000' AS DateTime2), CAST(N'2024-08-10T00:00:00.0000000' AS DateTime2), N'Spain', N'Experience the rich culture and history of Spain on a 9-day adventure, visiting the vibrant cities of Madrid and Barcelona, with their world-class museums and architecture. Explore the scenic countryside of Andalusia, visiting the charming towns of Seville and Granada, and relax on the beautiful beaches of Costa Brava, with its stunning coastline and picturesque fishing villages.', CAST(3400.00 AS Decimal(18, 2)), N'Spain1.jpg')
SET IDENTITY_INSERT [dbo].[Tour] OFF
GO
SET IDENTITY_INSERT [dbo].[TourBooking] ON 

INSERT [dbo].[TourBooking] ([Id], [TourId], [UserId]) VALUES (7, 13, N'3bfd78fe-7ef0-49d8-ae4e-5a9f77e49dcd')
INSERT [dbo].[TourBooking] ([Id], [TourId], [UserId]) VALUES (8, 12, N'3bfd78fe-7ef0-49d8-ae4e-5a9f77e49dcd')
INSERT [dbo].[TourBooking] ([Id], [TourId], [UserId]) VALUES (9, 10, N'70cfafec-56f4-4ac4-8f10-2ad72d8b2e3f')
SET IDENTITY_INSERT [dbo].[TourBooking] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 20/05/2024 12:55:16 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 20/05/2024 12:55:16 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 20/05/2024 12:55:16 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 20/05/2024 12:55:16 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 20/05/2024 12:55:16 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 20/05/2024 12:55:16 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 20/05/2024 12:55:16 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Comment_TourId]    Script Date: 20/05/2024 12:55:16 ******/
CREATE NONCLUSTERED INDEX [IX_Comment_TourId] ON [dbo].[Comment]
(
	[TourId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Comment_UserId]    Script Date: 20/05/2024 12:55:16 ******/
CREATE NONCLUSTERED INDEX [IX_Comment_UserId] ON [dbo].[Comment]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_EventBooking_EventId]    Script Date: 20/05/2024 12:55:16 ******/
CREATE NONCLUSTERED INDEX [IX_EventBooking_EventId] ON [dbo].[EventBooking]
(
	[EventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_EventBooking_UserId]    Script Date: 20/05/2024 12:55:16 ******/
CREATE NONCLUSTERED INDEX [IX_EventBooking_UserId] ON [dbo].[EventBooking]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TourBooking_TourId]    Script Date: 20/05/2024 12:55:16 ******/
CREATE NONCLUSTERED INDEX [IX_TourBooking_TourId] ON [dbo].[TourBooking]
(
	[TourId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_TourBooking_UserId]    Script Date: 20/05/2024 12:55:16 ******/
CREATE NONCLUSTERED INDEX [IX_TourBooking_UserId] ON [dbo].[TourBooking]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TourBooking] ADD  DEFAULT (N'') FOR [UserId]
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
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Tour_TourId] FOREIGN KEY([TourId])
REFERENCES [dbo].[Tour] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Tour_TourId]
GO
ALTER TABLE [dbo].[EventBooking]  WITH CHECK ADD  CONSTRAINT [FK_EventBooking_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EventBooking] CHECK CONSTRAINT [FK_EventBooking_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[EventBooking]  WITH CHECK ADD  CONSTRAINT [FK_EventBooking_Event_EventId] FOREIGN KEY([EventId])
REFERENCES [dbo].[Event] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EventBooking] CHECK CONSTRAINT [FK_EventBooking_Event_EventId]
GO
ALTER TABLE [dbo].[TourBooking]  WITH CHECK ADD  CONSTRAINT [FK_TourBooking_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TourBooking] CHECK CONSTRAINT [FK_TourBooking_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[TourBooking]  WITH CHECK ADD  CONSTRAINT [FK_TourBooking_Tour_TourId] FOREIGN KEY([TourId])
REFERENCES [dbo].[Tour] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TourBooking] CHECK CONSTRAINT [FK_TourBooking_Tour_TourId]
GO
USE [master]
GO
ALTER DATABASE [aspnet-TourAgencyApp-2d7285c3-16b7-4b46-854b-fb40c24cbae6] SET  READ_WRITE 
GO

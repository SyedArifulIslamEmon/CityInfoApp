USE [master]
GO
/****** Object:  Database [CityDescriptionDB]    Script Date: 15/06/2015 10:31:47 ******/
CREATE DATABASE [CityDescriptionDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CityDescriptionDB', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.PAVEL\MSSQL\DATA\CityDescriptionDB.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CityDescriptionDB_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.PAVEL\MSSQL\DATA\CityDescriptionDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CityDescriptionDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CityDescriptionDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CityDescriptionDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CityDescriptionDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CityDescriptionDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CityDescriptionDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CityDescriptionDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [CityDescriptionDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CityDescriptionDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [CityDescriptionDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CityDescriptionDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CityDescriptionDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CityDescriptionDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CityDescriptionDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CityDescriptionDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CityDescriptionDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CityDescriptionDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CityDescriptionDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CityDescriptionDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CityDescriptionDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CityDescriptionDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CityDescriptionDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CityDescriptionDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CityDescriptionDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CityDescriptionDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CityDescriptionDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CityDescriptionDB] SET  MULTI_USER 
GO
ALTER DATABASE [CityDescriptionDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CityDescriptionDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CityDescriptionDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CityDescriptionDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [CityDescriptionDB]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 15/06/2015 10:31:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cities](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[About] [varchar](400) NOT NULL,
	[No_of_Dwellers] [int] NOT NULL,
	[Location] [varchar](100) NOT NULL,
	[Weather] [varchar](100) NOT NULL,
	[Country_ID] [int] NOT NULL,
 CONSTRAINT [PK_Cities] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 15/06/2015 10:31:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Countries](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[About] [varchar](500) NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Cities] ON 

INSERT [dbo].[Cities] ([ID], [Name], [About], [No_of_Dwellers], [Location], [Weather], [Country_ID]) VALUES (1, N'Dhaka', N'Dhaka is the capital of Bangladesh.', 200000, N'South Asia', N'x czudczbu', 1)
INSERT [dbo].[Cities] ([ID], [Name], [About], [No_of_Dwellers], [Location], [Weather], [Country_ID]) VALUES (2, N'Feni', N'Feni is a small city.', 20000, N'South East region of Bangladesh', N'Modarate', 1)
INSERT [dbo].[Cities] ([ID], [Name], [About], [No_of_Dwellers], [Location], [Weather], [Country_ID]) VALUES (3, N'Delhi', N'The capital of India', 1000, N'Uttar Pradesh', N'Dry,Sunny', 2)
INSERT [dbo].[Cities] ([ID], [Name], [About], [No_of_Dwellers], [Location], [Weather], [Country_ID]) VALUES (4, N'Beijing', N'The capital of China', 100000, N'Center of China', N'Cold,Sunny', 4)
SET IDENTITY_INSERT [dbo].[Cities] OFF
SET IDENTITY_INSERT [dbo].[Countries] ON 

INSERT [dbo].[Countries] ([ID], [Name], [About]) VALUES (1, N'Bangladesh', N'Bangladesh is beautiful country.')
INSERT [dbo].[Countries] ([ID], [Name], [About]) VALUES (2, N'India', N'India is a one of the largest country of the world.')
INSERT [dbo].[Countries] ([ID], [Name], [About]) VALUES (3, N'Nigeria', N'Nigeria is African country.')
INSERT [dbo].[Countries] ([ID], [Name], [About]) VALUES (4, N'China', N'One of the largest Country in the world.')
SET IDENTITY_INSERT [dbo].[Countries] OFF
/****** Object:  Index [IX_Countries]    Script Date: 15/06/2015 10:31:48 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Countries] ON [dbo].[Countries]
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Cities]  WITH CHECK ADD  CONSTRAINT [FK_Cities_Cities] FOREIGN KEY([Country_ID])
REFERENCES [dbo].[Countries] ([ID])
GO
ALTER TABLE [dbo].[Cities] CHECK CONSTRAINT [FK_Cities_Cities]
GO
USE [master]
GO
ALTER DATABASE [CityDescriptionDB] SET  READ_WRITE 
GO

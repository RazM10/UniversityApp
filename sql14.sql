USE [master]
GO
/****** Object:  Database [University20]    Script Date: 11/14/2018 9:31:36 PM ******/
CREATE DATABASE [University20]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'University20', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\University20.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'University20_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\University20_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [University20] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [University20].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [University20] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [University20] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [University20] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [University20] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [University20] SET ARITHABORT OFF 
GO
ALTER DATABASE [University20] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [University20] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [University20] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [University20] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [University20] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [University20] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [University20] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [University20] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [University20] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [University20] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [University20] SET  DISABLE_BROKER 
GO
ALTER DATABASE [University20] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [University20] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [University20] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [University20] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [University20] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [University20] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [University20] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [University20] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [University20] SET  MULTI_USER 
GO
ALTER DATABASE [University20] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [University20] SET DB_CHAINING OFF 
GO
ALTER DATABASE [University20] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [University20] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [University20]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 11/14/2018 9:31:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Department](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Code] [varchar](50) NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Students]    Script Date: 11/14/2018 9:31:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Students](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RegNo] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Department] [varchar](50) NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Students] ON 

INSERT [dbo].[Students] ([Id], [RegNo], [Name], [Email], [Address], [Department]) VALUES (3, N'Reg-101q', N'Shayok Ullah', N'shayokullah@ovi.com', N'Cox''s Bazar', N'CSE')
INSERT [dbo].[Students] ([Id], [RegNo], [Name], [Email], [Address], [Department]) VALUES (4, N'Reg 001', N'Hafiz', N'hafiz@gmail.com', N'205/a', N'CSE')
SET IDENTITY_INSERT [dbo].[Students] OFF
USE [master]
GO
ALTER DATABASE [University20] SET  READ_WRITE 
GO

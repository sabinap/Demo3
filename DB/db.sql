USE [master]
GO
/****** Object:  Database [Conoisseur]    Script Date: 12/12/2012 17:34:36 ******/
CREATE DATABASE [Conoisseur] ON  PRIMARY 
( NAME = N'Conoisseur', FILENAME = N'D:\Dropbox\proiect\Database\Conoisseur.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Conoisseur_log', FILENAME = N'D:\Dropbox\proiect\Database\Conoisseur_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Conoisseur] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Conoisseur].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Conoisseur] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Conoisseur] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Conoisseur] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Conoisseur] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Conoisseur] SET ARITHABORT OFF
GO
ALTER DATABASE [Conoisseur] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [Conoisseur] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Conoisseur] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Conoisseur] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Conoisseur] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Conoisseur] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Conoisseur] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Conoisseur] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Conoisseur] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Conoisseur] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Conoisseur] SET  DISABLE_BROKER
GO
ALTER DATABASE [Conoisseur] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Conoisseur] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Conoisseur] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Conoisseur] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Conoisseur] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Conoisseur] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Conoisseur] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Conoisseur] SET  READ_WRITE
GO
ALTER DATABASE [Conoisseur] SET RECOVERY SIMPLE
GO
ALTER DATABASE [Conoisseur] SET  MULTI_USER
GO
ALTER DATABASE [Conoisseur] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Conoisseur] SET DB_CHAINING OFF
GO
USE [Conoisseur]
GO
/****** Object:  Table [dbo].[users]    Script Date: 12/12/2012 17:34:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[users](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[user_id] [varchar](36) NOT NULL,
	[password] [varchar](256) NULL,
	[address] [varchar](512) NULL,
	[phone] [varchar](10) NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[product_category]    Script Date: 12/12/2012 17:34:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[product_category](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](256) NULL,
	[description] [varchar](1024) NULL,
 CONSTRAINT [PK_product_category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[coupon_type]    Script Date: 12/12/2012 17:34:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[coupon_type](
	[id] [bigint] NOT NULL,
	[name] [varchar](512) NULL,
	[description] [varchar](1024) NULL,
 CONSTRAINT [PK_coupon_type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[order]    Script Date: 12/12/2012 17:34:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[order](
	[id] [bigint] NOT NULL,
	[order_no] [bigint] NOT NULL,
	[user_id] [bigint] NOT NULL,
	[is_Guest] [bit] NULL,
	[address] [varchar](1024) NULL,
	[card_name] [varchar](1024) NULL,
	[card_number] [nchar](16) NULL,
	[card_cvv] [numeric](4, 0) NULL,
	[card_expiration_month] [int] NULL,
	[card_expiration_year] [int] NULL,
	[subtotal] [decimal](4, 2) NULL,
	[taxes] [decimal](4, 2) NULL,
	[total] [decimal](4, 2) NULL,
 CONSTRAINT [PK_order] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[coupon_codes]    Script Date: 12/12/2012 17:34:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[coupon_codes](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](256) NULL,
	[coupon_type] [bigint] NOT NULL,
	[deduct] [decimal](4, 2) NULL,
 CONSTRAINT [PK_coupon_codes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[product]    Script Date: 12/12/2012 17:34:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[product](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[category_id] [bigint] NOT NULL,
	[name] [varchar](256) NULL,
	[description] [varchar](1024) NULL,
	[price] [decimal](4, 2) NULL,
	[coupon_id] [bigint] NULL,
	[image] [varchar](512) NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[order_product]    Script Date: 12/12/2012 17:34:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_product](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[order_id] [bigint] NULL,
	[product_id] [bigint] NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_order_product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_order_users]    Script Date: 12/12/2012 17:34:37 ******/
ALTER TABLE [dbo].[order]  WITH CHECK ADD  CONSTRAINT [FK_order_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[order] CHECK CONSTRAINT [FK_order_users]
GO
/****** Object:  ForeignKey [FK_coupon_codes_coupon_type]    Script Date: 12/12/2012 17:34:37 ******/
ALTER TABLE [dbo].[coupon_codes]  WITH CHECK ADD  CONSTRAINT [FK_coupon_codes_coupon_type] FOREIGN KEY([coupon_type])
REFERENCES [dbo].[coupon_type] ([id])
GO
ALTER TABLE [dbo].[coupon_codes] CHECK CONSTRAINT [FK_coupon_codes_coupon_type]
GO
/****** Object:  ForeignKey [FK_product_coupon_codes]    Script Date: 12/12/2012 17:34:37 ******/
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_coupon_codes] FOREIGN KEY([coupon_id])
REFERENCES [dbo].[coupon_codes] ([id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_coupon_codes]
GO
/****** Object:  ForeignKey [FK_product_product_category]    Script Date: 12/12/2012 17:34:37 ******/
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_product_category] FOREIGN KEY([category_id])
REFERENCES [dbo].[product_category] ([id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_product_category]
GO
/****** Object:  ForeignKey [FK_order_product_order]    Script Date: 12/12/2012 17:34:37 ******/
ALTER TABLE [dbo].[order_product]  WITH CHECK ADD  CONSTRAINT [FK_order_product_order] FOREIGN KEY([order_id])
REFERENCES [dbo].[order] ([id])
GO
ALTER TABLE [dbo].[order_product] CHECK CONSTRAINT [FK_order_product_order]
GO
/****** Object:  ForeignKey [FK_order_product_product]    Script Date: 12/12/2012 17:34:37 ******/
ALTER TABLE [dbo].[order_product]  WITH CHECK ADD  CONSTRAINT [FK_order_product_product] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[order_product] CHECK CONSTRAINT [FK_order_product_product]
GO

USE [master]
GO
/****** Object:  Database [ec_portfolio]    Script Date: 2024/03/03 15:36:51 ******/
CREATE DATABASE [ec_portfolio]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EC_PORTFOLIO', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\EC_PORTFOLIO.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'EC_PORTFOLIO_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\EC_PORTFOLIO_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ec_portfolio] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ec_portfolio].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ec_portfolio] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ec_portfolio] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ec_portfolio] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ec_portfolio] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ec_portfolio] SET ARITHABORT OFF 
GO
ALTER DATABASE [ec_portfolio] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ec_portfolio] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ec_portfolio] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ec_portfolio] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ec_portfolio] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ec_portfolio] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ec_portfolio] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ec_portfolio] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ec_portfolio] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ec_portfolio] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ec_portfolio] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ec_portfolio] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ec_portfolio] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ec_portfolio] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ec_portfolio] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ec_portfolio] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ec_portfolio] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ec_portfolio] SET RECOVERY FULL 
GO
ALTER DATABASE [ec_portfolio] SET  MULTI_USER 
GO
ALTER DATABASE [ec_portfolio] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ec_portfolio] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ec_portfolio] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ec_portfolio] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ec_portfolio] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ec_portfolio] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ec_portfolio', N'ON'
GO
ALTER DATABASE [ec_portfolio] SET QUERY_STORE = OFF
GO
USE [ec_portfolio]
GO
/****** Object:  Table [dbo].[category]    Script Date: 2024/03/03 15:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[category_id] [smallint] IDENTITY(1,1) NOT NULL,
	[category_name] [nvarchar](20) NOT NULL,
	[created_by] [varchar](30) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_by] [varchar](30) NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [PK_category] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[key_word]    Script Date: 2024/03/03 16:19:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[key_word](
	[key_word_id] [bigint] NOT NULL,
	[key_word] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_key_word] PRIMARY KEY CLUSTERED 
(
	[key_word_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_status]    Script Date: 2024/03/03 16:19:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_status](
	[status_id] [tinyint] NOT NULL,
	[status_name] [nvarchar](10) NOT NULL,
	[created_by] [varchar](30) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_by] [varchar](30) NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [PK_order_status] PRIMARY KEY CLUSTERED 
(
	[status_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[payment_method]    Script Date: 2024/03/03 16:19:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[payment_method](
	[method_id] [tinyint] IDENTITY(1,1) NOT NULL,
	[method_name] [nvarchar](20) NOT NULL,
	[created_by] [varchar](30) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_by] [varchar](30) NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [PK_payment_method] PRIMARY KEY CLUSTERED 
(
	[method_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 2024/03/03 15:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[product_id] [bigint] IDENTITY(1,1) NOT NULL,
	[product_name] [nvarchar](100) NOT NULL,
	[price] [decimal](23, 8) NOT NULL,
	[discount_percentage] [tinyint] NULL,
	[size] [nvarchar](30) NULL,
	[model_number] [varchar](30) NULL,
	[product_description] [nvarchar](100) NULL,
	[product_details] [nvarchar](max) NULL,
	[stock_quantity] [int] NOT NULL,
	[brand_id] [bigint] NOT NULL,
	[category_id] [bigint] NOT NULL,
	[created_by] [varchar](30) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_by] [varchar](30) NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_brand]    Script Date: 2024/03/03 15:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_brand](
	[brand_id] [bigint] IDENTITY(1,1) NOT NULL,
	[brand_name] [nvarchar](50) NOT NULL,
	[manufacturer_id] [bigint] NOT NULL,
	[brand_website_link] [nvarchar](max) NULL,
 CONSTRAINT [PK_product_brand] PRIMARY KEY CLUSTERED 
(
	[brand_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_image]    Script Date: 2024/03/03 20:12:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_image](
	[image_id] [bigint] IDENTITY(1,1) NOT NULL,
	[product_id] [bigint] NOT NULL,
	[image_description] [nvarchar](100) NULL,
	[image_data] [varbinary](max) NOT NULL,
 CONSTRAINT [PK_image] PRIMARY KEY CLUSTERED 
(
	[image_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_key_word]    Script Date: 2024/03/03 20:12:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_key_word](
	[product_id] [bigint] NOT NULL,
	[key_word_id] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_manufacturer]    Script Date: 2024/03/03 16:19:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_manufacturer](
	[manufacturer_id] [bigint] IDENTITY(1,1) NOT NULL,
	[manufacturer_name] [nchar](10) NOT NULL,
	[created_by] [varchar](30) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_by] [varchar](30) NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [PK_manufacturer] PRIMARY KEY CLUSTERED 
(
	[manufacturer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[purchase_order]    Script Date: 2024/03/03 15:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[purchase_order](
	[order_id] [bigint] IDENTITY(1,1) NOT NULL,
	[product_id] [bigint] NOT NULL,
	[shipping_address_id] [bigint] NOT NULL,
	[payment_option_id] [tinyint] NOT NULL,
	[order_quantity] [int] NOT NULL,
	[order_status_id] [tinyint] NOT NULL,
	[created_by] [varchar](50) NOT NULL,
	[created_at] [datetime2](7) NOT NULL,
	[updated_by] [varchar](50) NOT NULL,
	[updated_at] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_purchase_order] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[review]    Script Date: 2024/03/03 15:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[review](
	[rate_id] [bigint] IDENTITY(1,1) NOT NULL,
	[product_id] [bigint] NOT NULL,
	[rate] [real] NOT NULL,
	[comment] [nvarchar](max) NULL,
	[created_by] [varchar](30) NOT NULL,
	[created_at] [datetime] NOT NULL,
 CONSTRAINT [PK_review] PRIMARY KEY CLUSTERED 
(
	[rate_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shipping_address]    Script Date: 2024/03/03 15:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shipping_address](
	[addess_id] [bigint] IDENTITY(1,1) NOT NULL,
	[postcode] [char](7) NOT NULL,
	[addess] [nvarchar](50) NOT NULL,
	[building_name] [nvarchar](50) NOT NULL,
	[user_id] [varchar](30) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [PK_shipping_address] PRIMARY KEY CLUSTERED 
(
	[addess_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 2024/03/03 15:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[user_id] [varchar](30) NOT NULL,
	[user_surname] [nvarchar](50) NOT NULL,
	[user_surname_ruby] [nvarchar](50) NOT NULL,
	[user_firstname] [nvarchar](50) NOT NULL,
	[user_firstname_ruby] [nvarchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[category] ADD  CONSTRAINT [DF_category_created_at]  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[category] ADD  CONSTRAINT [DF_category_updated_at]  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[order_status] ADD  CONSTRAINT [DF_order_status_created_at]  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[order_status] ADD  CONSTRAINT [DF_order_status_updated_at]  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[payment_method] ADD  CONSTRAINT [DF_payment_method_created_at]  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[payment_method] ADD  CONSTRAINT [DF_payment_method_updated_at]  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[product] ADD  CONSTRAINT [DF_product_created_at]  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[product] ADD  CONSTRAINT [DF_product_updated_at]  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[purchase_order] ADD  CONSTRAINT [DF_purchase_order_OrderStatusId]  DEFAULT ((1)) FOR [order_status_id]
GO
ALTER TABLE [dbo].[purchase_order] ADD  CONSTRAINT [DF_purchase_order_created_at]  DEFAULT (sysdatetime()) FOR [created_at]
GO
ALTER TABLE [dbo].[purchase_order] ADD  CONSTRAINT [DF_purchase_order_updated_at]  DEFAULT (sysdatetime()) FOR [updated_at]
GO
ALTER TABLE [dbo].[review] ADD  CONSTRAINT [DF_review_created_at]  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[shipping_address] ADD  CONSTRAINT [DF_shipping_address_created_at]  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[shipping_address] ADD  CONSTRAINT [DF_shipping_address_updated_at]  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[user] ADD  CONSTRAINT [DF_users_created_at]  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[user] ADD  CONSTRAINT [DF_users_updated_at]  DEFAULT (getdate()) FOR [updated_at]
GO
USE [master]
GO
ALTER DATABASE [ec_portfolio] SET  READ_WRITE 
GO

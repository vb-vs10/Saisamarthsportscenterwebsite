USE [saisamarthdb]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 06/09/2022 14:14:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Payment](
	[pay_id] [int] NULL,
	[pay_date] [varchar](50) NULL,
	[sale_id] [int] NULL,
	[pay_amt] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Product_master]    Script Date: 06/09/2022 14:14:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product_master](
	[prod_id] [int] NOT NULL,
	[prod_nm] [varchar](50) NOT NULL,
	[cat_id] [int] NOT NULL,
	[rate] [int] NOT NULL,
	[gender] [varchar](50) NOT NULL,
	[size] [varchar](50) NOT NULL,
	[stock] [int] NOT NULL,
	[photo] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 06/09/2022 14:14:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[cust_id] [int] NULL,
	[cust_nm] [varchar](50) NULL,
	[cust_addr] [varchar](50) NULL,
	[cust_pincode] [int] NULL,
	[cust_phone] [varchar](50) NULL,
	[cust_email] [varchar](50) NULL,
	[cust_pass] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Product_Category]    Script Date: 06/09/2022 14:14:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product_Category](
	[cat_id] [int] NULL,
	[cat_nm] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sale_master]    Script Date: 06/09/2022 14:14:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sale_master](
	[sale_id] [int] NULL,
	[sale_date] [varchar](50) NULL,
	[cust_id] [int] NULL,
	[gst] [float] NULL,
	[grandtotal] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sale_details]    Script Date: 06/09/2022 14:14:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sale_details](
	[sale_det_id] [int] NULL,
	[sale_id] [int] NULL,
	[prod_id] [int] NULL,
	[rate] [int] NULL,
	[qty] [int] NULL,
	[amt] [int] NULL
) ON [PRIMARY]
GO

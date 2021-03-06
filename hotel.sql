USE [master]
GO
/****** Object:  Database [hotel]    Script Date: 14-11-2018 14:59:37 ******/
CREATE DATABASE [hotel]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'hotel', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\hotel.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'hotel_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\hotel_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [hotel] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [hotel].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [hotel] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [hotel] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [hotel] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [hotel] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [hotel] SET ARITHABORT OFF 
GO
ALTER DATABASE [hotel] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [hotel] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [hotel] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [hotel] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [hotel] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [hotel] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [hotel] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [hotel] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [hotel] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [hotel] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [hotel] SET  ENABLE_BROKER 
GO
ALTER DATABASE [hotel] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [hotel] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [hotel] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [hotel] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [hotel] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [hotel] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [hotel] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [hotel] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [hotel] SET  MULTI_USER 
GO
ALTER DATABASE [hotel] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [hotel] SET DB_CHAINING OFF 
GO
ALTER DATABASE [hotel] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [hotel] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [hotel]
GO
/****** Object:  Table [dbo].[bill_detail]    Script Date: 14-11-2018 14:59:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[bill_detail](
	[select_table] [varchar](50) NOT NULL,
	[bill_no] [varchar](50) NULL,
	[total_amount] [varchar](50) NULL,
	[cust_name] [varchar](100) NULL,
	[service_charge] [varchar](50) NULL,
	[waitor] [varchar](50) NULL,
	[cgst] [varchar](50) NULL,
	[payment] [varchar](50) NULL,
	[sgst] [varchar](50) NULL,
	[Discount] [varchar](50) NULL,
	[igst] [varchar](50) NULL,
	[Net_amount] [varchar](50) NULL,
	[Paid] [varchar](50) NULL,
	[remain] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[bill_detail_1]    Script Date: 14-11-2018 14:59:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[bill_detail_1](
	[item_code] [varchar](50) NULL,
	[item_name] [varchar](50) NULL,
	[qty] [varchar](50) NULL,
	[price] [varchar](50) NULL,
	[amount] [varchar](50) NULL,
	[selected_tab] [varchar](50) NULL,
	[bill_no] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[customer]    Script Date: 14-11-2018 14:59:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[customer](
	[Custom_Id] [bigint] NOT NULL,
	[First_Name] [varchar](20) NULL,
	[Last_Name] [varchar](20) NULL,
	[Street_Address] [varchar](50) NULL,
	[Street_Address_Line2] [varchar](50) NULL,
	[City] [varchar](20) NULL,
	[State_Province] [varchar](30) NULL,
	[Postal_Code] [bigint] NULL,
	[Country] [varchar](30) NULL,
	[Area_Code] [varchar](10) NULL,
	[Phone_No] [varchar](20) NULL,
	[Email] [varchar](50) NULL,
	[Info] [varchar](50) NULL,
	[Feedback] [varchar](50) NULL,
	[Suggestion] [varchar](50) NULL,
	[Recommend] [varchar](20) NULL,
 CONSTRAINT [PK_customer] PRIMARY KEY CLUSTERED 
(
	[Custom_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 14-11-2018 14:59:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employee](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[mobileNo] [bigint] NOT NULL,
	[Address] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[final_bill]    Script Date: 14-11-2018 14:59:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[final_bill](
	[name] [varchar](50) NULL,
	[info] [varchar](500) NULL,
	[bill_no] [varchar](50) NULL,
	[date_1] [varchar](50) NULL,
	[time_1] [varchar](50) NULL,
	[amount] [varchar](50) NULL,
	[service_charge] [varchar](50) NULL,
	[cgst] [varchar](50) NULL,
	[sgst] [varchar](50) NULL,
	[igst] [varchar](50) NULL,
	[net_amount] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 14-11-2018 14:59:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Menu](
	[Product_Code] [int] IDENTITY(1,1) NOT NULL,
	[Product_Name] [varchar](30) NULL,
	[Product_Cat] [varchar](30) NOT NULL,
	[Product_Subcat] [varchar](100) NOT NULL,
	[Price] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[reg]    Script Date: 14-11-2018 14:59:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg](
	[username] [varchar](20) NULL,
	[pswd] [varchar](20) NULL,
	[city] [varchar](20) NULL,
	[mob] [varchar](20) NULL,
	[email] [varchar](30) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[bill_detail] ([select_table], [bill_no], [total_amount], [cust_name], [service_charge], [waitor], [cgst], [payment], [sgst], [Discount], [igst], [Net_amount], [Paid], [remain]) VALUES (N'1', N'111', N'660', N'Rajat', N'33', N'Ram', N'33', N'Debit Card', N'33', N'33', N'33', N'759', N'700', N'59')
INSERT [dbo].[bill_detail] ([select_table], [bill_no], [total_amount], [cust_name], [service_charge], [waitor], [cgst], [payment], [sgst], [Discount], [igst], [Net_amount], [Paid], [remain]) VALUES (N'3', N'113', N'600', N'Tejas', N'30', N'tushar ', N'30', N'Debit Card', N'30', N'30', N'30', N'690', N'600', N'90')
INSERT [dbo].[bill_detail] ([select_table], [bill_no], [total_amount], [cust_name], [service_charge], [waitor], [cgst], [payment], [sgst], [Discount], [igst], [Net_amount], [Paid], [remain]) VALUES (N'6', N'116', N'640', N'Vikas', N'32', N'gsg', N'32', N'Net Banking', N'32', N'32', N'32', N'736', N'700', N'36')
INSERT [dbo].[bill_detail] ([select_table], [bill_no], [total_amount], [cust_name], [service_charge], [waitor], [cgst], [payment], [sgst], [Discount], [igst], [Net_amount], [Paid], [remain]) VALUES (N'2', N'112', N'620', N'Ram', N'31', N'Rahul', N'31', N'Debit Card', N'31', N'31', N'31', N'713', N'700', N'13')
INSERT [dbo].[bill_detail] ([select_table], [bill_no], [total_amount], [cust_name], [service_charge], [waitor], [cgst], [payment], [sgst], [Discount], [igst], [Net_amount], [Paid], [remain]) VALUES (N'4', N'114', N'470', N'Vikas', N'23.5', N'tushar ', N'23.5', N'Debit Card', N'23.5', N'23.5', N'23.5', N'540.5', N'500', N'40.5')
INSERT [dbo].[bill_detail_1] ([item_code], [item_name], [qty], [price], [amount], [selected_tab], [bill_no]) VALUES (N'2', N'Veg Makhanwala', N'2', N'170', N'340', N'2', N'112')
INSERT [dbo].[bill_detail_1] ([item_code], [item_name], [qty], [price], [amount], [selected_tab], [bill_no]) VALUES (N'23', N'Veg Pulav', N'2', N'140', N'280', N'2', N'112')
INSERT [dbo].[bill_detail_1] ([item_code], [item_name], [qty], [price], [amount], [selected_tab], [bill_no]) VALUES (N'4', N'Veg Kolhapuri', N'2', N'160', N'320', N'3', N'113')
INSERT [dbo].[bill_detail_1] ([item_code], [item_name], [qty], [price], [amount], [selected_tab], [bill_no]) VALUES (N'5', N'Bhendi Fry', N'2', N'150', N'300', N'4', N'114')
INSERT [dbo].[bill_detail_1] ([item_code], [item_name], [qty], [price], [amount], [selected_tab], [bill_no]) VALUES (N'8', N'Veg Kadai', N'2', N'150', N'300', N'5', N'115')
INSERT [dbo].[bill_detail_1] ([item_code], [item_name], [qty], [price], [amount], [selected_tab], [bill_no]) VALUES (N'12', N'Veg Chatpatta', N'2', N'170', N'340', N'6', N'116')
INSERT [dbo].[bill_detail_1] ([item_code], [item_name], [qty], [price], [amount], [selected_tab], [bill_no]) VALUES (N'1', N'Mix Veg', N'2', N'160', N'320', N'1', N'111')
INSERT [dbo].[bill_detail_1] ([item_code], [item_name], [qty], [price], [amount], [selected_tab], [bill_no]) VALUES (N'6', N'Veg Jalfrazei', N'1', N'170', N'170', N'4', N'114')
INSERT [dbo].[bill_detail_1] ([item_code], [item_name], [qty], [price], [amount], [selected_tab], [bill_no]) VALUES (N'9', N'Baingan Bharta', N'2', N'150', N'300', N'5', N'115')
INSERT [dbo].[bill_detail_1] ([item_code], [item_name], [qty], [price], [amount], [selected_tab], [bill_no]) VALUES (N'13', N'Green Peas Masala', N'2', N'150', N'300', N'6', N'116')
INSERT [dbo].[bill_detail_1] ([item_code], [item_name], [qty], [price], [amount], [selected_tab], [bill_no]) VALUES (N'2', N'Veg Makhanwala', N'2', N'170', N'340', N'1', N'111')
INSERT [dbo].[bill_detail_1] ([item_code], [item_name], [qty], [price], [amount], [selected_tab], [bill_no]) VALUES (N'23', N'Veg Pulav', N'2', N'140', N'280', N'3', N'113')
INSERT [dbo].[customer] ([Custom_Id], [First_Name], [Last_Name], [Street_Address], [Street_Address_Line2], [City], [State_Province], [Postal_Code], [Country], [Area_Code], [Phone_No], [Email], [Info], [Feedback], [Suggestion], [Recommend]) VALUES (1, N'', N'', N'', N'', N'', N'', 0, N'Belgium', N'', N'', N'', N'', N'1', N'', N'  ')
INSERT [dbo].[customer] ([Custom_Id], [First_Name], [Last_Name], [Street_Address], [Street_Address_Line2], [City], [State_Province], [Postal_Code], [Country], [Area_Code], [Phone_No], [Email], [Info], [Feedback], [Suggestion], [Recommend]) VALUES (2, N'Ram', N'Ahire', N'Shree Ram Apartment', N'Katraj Road', N'Pune', N'Maharashtra', 411041, N'India', N'+91', N'7820019311', N'ramahire01@gmail.com', N'Internet', N'Nice', N'No', N'  ,Yes')
INSERT [dbo].[customer] ([Custom_Id], [First_Name], [Last_Name], [Street_Address], [Street_Address_Line2], [City], [State_Province], [Postal_Code], [Country], [Area_Code], [Phone_No], [Email], [Info], [Feedback], [Suggestion], [Recommend]) VALUES (3, N'Vikas', N'Patil', N'Rutu Apartments', N'Nanded City', N'Pune', N'Maharashtra', 411041, N'India', N'+91', N'8982324510', N'vikaspatil02@gmail.com', N'TV', N'good', N'no', N'  ,Maybe')
INSERT [dbo].[customer] ([Custom_Id], [First_Name], [Last_Name], [Street_Address], [Street_Address_Line2], [City], [State_Province], [Postal_Code], [Country], [Area_Code], [Phone_No], [Email], [Info], [Feedback], [Suggestion], [Recommend]) VALUES (4, N'Rajat', N'Hode', N'Dinesh Apartments', N'Sinhagad Road', N'Pune', N'Maharashtra', 411051, N'India', N'+91', N'8983322678', N'rajathode05@gmail.com', N'TV', N'Nice Food', N'Improve Infrastructure', N'  ,Yes')
INSERT [dbo].[customer] ([Custom_Id], [First_Name], [Last_Name], [Street_Address], [Street_Address_Line2], [City], [State_Province], [Postal_Code], [Country], [Area_Code], [Phone_No], [Email], [Info], [Feedback], [Suggestion], [Recommend]) VALUES (5, N'Tejas', N'Dholare', N'Dnyandeep Residency', N'Katraj', N'Pune', N'Maharashtra', 411023, N'India', N'+91', N'8785342387', N'tejasdh24@gmail.com', N'Other', N'Good', N'no', N'  ,Yes')
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([id], [Name], [mobileNo], [Address]) VALUES (1, N'Ram', 887, N'pune')
INSERT [dbo].[Employee] ([id], [Name], [mobileNo], [Address]) VALUES (2, N'fz', 882, N'pune')
INSERT [dbo].[Employee] ([id], [Name], [mobileNo], [Address]) VALUES (3, N'gsg', 44444, N'xgx')
INSERT [dbo].[Employee] ([id], [Name], [mobileNo], [Address]) VALUES (4, N'tushar ', 8879552142, N'pune')
INSERT [dbo].[Employee] ([id], [Name], [mobileNo], [Address]) VALUES (5, N'sfzasf', 61646, N'dgdsg')
INSERT [dbo].[Employee] ([id], [Name], [mobileNo], [Address]) VALUES (6, N'sdg', 564, N'dgs')
INSERT [dbo].[Employee] ([id], [Name], [mobileNo], [Address]) VALUES (7, N'zfzs', 554, N'sfa')
INSERT [dbo].[Employee] ([id], [Name], [mobileNo], [Address]) VALUES (8, N'tsrm', 55552, N'dsgxdg')
INSERT [dbo].[Employee] ([id], [Name], [mobileNo], [Address]) VALUES (9, N'ram', 8879552142, N'pinr')
INSERT [dbo].[Employee] ([id], [Name], [mobileNo], [Address]) VALUES (10, N'shaym', 777441500, N'pune')
INSERT [dbo].[Employee] ([id], [Name], [mobileNo], [Address]) VALUES (11, N'jklm', 96300000, N'mumbai')
INSERT [dbo].[Employee] ([id], [Name], [mobileNo], [Address]) VALUES (13, N'Rajat', 8983322676, N'Pune')
INSERT [dbo].[Employee] ([id], [Name], [mobileNo], [Address]) VALUES (15, N'Rahul', 7879131911, N'Nagpur')
SET IDENTITY_INSERT [dbo].[Employee] OFF
INSERT [dbo].[final_bill] ([name], [info], [bill_no], [date_1], [time_1], [amount], [service_charge], [cgst], [sgst], [igst], [net_amount]) VALUES (N'Ram', N'  ,2,Veg Makhanwala,2,170,340,23,Veg Pulav,2,140,280', N'112', N'05-11-2018', N'13:14:43', N'620', N'31', N'31', N'31', N'31', N'713')
INSERT [dbo].[final_bill] ([name], [info], [bill_no], [date_1], [time_1], [amount], [service_charge], [cgst], [sgst], [igst], [net_amount]) VALUES (N'Tejas', N'  ,4,Veg Kolhapuri,2,160,320,23,Veg Pulav,2,140,280', N'113', N'05-11-2018', N'13:20:01', N'600', N'30', N'30', N'30', N'30', N'690')
INSERT [dbo].[final_bill] ([name], [info], [bill_no], [date_1], [time_1], [amount], [service_charge], [cgst], [sgst], [igst], [net_amount]) VALUES (N'Vikas', N'  ,5,Bhendi Fry,2,150,300,6,Veg Jalfrazei,1,170,170', N'114', N'05-11-2018', N'13:25:36', N'470', N'23.5', N'23.5', N'23.5', N'23.5', N'540.5')
INSERT [dbo].[final_bill] ([name], [info], [bill_no], [date_1], [time_1], [amount], [service_charge], [cgst], [sgst], [igst], [net_amount]) VALUES (N'Vikas', N'  ,12,Veg Chatpatta,2,170,340,13,Green Peas Masala,2,150,300', N'116', N'05-11-2018', N'13:35:54', N'640', N'32', N'32', N'32', N'32', N'736')
INSERT [dbo].[final_bill] ([name], [info], [bill_no], [date_1], [time_1], [amount], [service_charge], [cgst], [sgst], [igst], [net_amount]) VALUES (N'Ram', N'  ,45,Chicken Handi full,1,500,500,46,Chicken Malawani Half,1,350,350', N'117', N'05-11-2018', N'13:37:18', N'850', N'42.5', N'42.5', N'42.5', N'42.5', N'977.5')
INSERT [dbo].[final_bill] ([name], [info], [bill_no], [date_1], [time_1], [amount], [service_charge], [cgst], [sgst], [igst], [net_amount]) VALUES (N'Rajat', N'  ,15,Kaju Masala,2,200,400,16,Aloo Methi,2,140,280', N'117', N'08-11-2018', N'11:01:46', N'680', N'34', N'34', N'34', N'34', N'782')
INSERT [dbo].[final_bill] ([name], [info], [bill_no], [date_1], [time_1], [amount], [service_charge], [cgst], [sgst], [igst], [net_amount]) VALUES (N'Rajat', N'  ,1,Mix Veg,2,160,320,2,Veg Makhanwala,2,170,340', N'111', N'05-11-2018', N'13:04:00', N'660', N'33', N'33', N'33', N'33', N'759')
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (1, N'Mix Veg', N'Veg', N'Veg-Group', 160)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (2, N'Veg Makhanwala', N'Veg', N'Veg-Group', 170)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (61, N'Anda Rice', N'non-veg', N',Non-Veg Group', 150)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (4, N'Veg Kolhapuri', N'Veg', N'Veg-Group', 160)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (5, N'Bhendi Fry', N'Veg', N'Veg-Group', 150)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (6, N'Veg Jalfrazei', N'Veg', N'Veg-Group', 170)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (7, N'Baingan Masala', N'Veg', N'Veg-Group', 150)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (8, N'Veg Kadai', N'Veg', N'Veg-Group', 150)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (9, N'Baingan Bharta', N'Veg', N'Veg-Group', 150)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (10, N'Veg Handi', N'Veg', N'Veg-Group', 180)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (11, N'Chana Masala', N'Veg', N'Veg-Group', 155)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (12, N'Veg Chatpatta', N'Veg', N'Veg-Group', 170)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (13, N'Green Peas Masala', N'Veg', N'Veg-Group', 150)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (14, N'Kaju Curry', N'Veg', N'Veg-Group', 210)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (15, N'Kaju Masala', N'Veg', N'Veg-Group', 200)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (16, N'Aloo Methi', N'Veg', N'Veg-Group', 140)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (17, N'Aloo Mutter', N'Veg', N'Veg-Group', 150)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (18, N'Veg Kofta', N'Veg', N'Veg-Group', 180)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (19, N'Veg Maratha', N'Veg', N'Veg-Group', 180)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (20, N'Stuffed Tomato', N'Veg', N'Veg-Group', 160)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (21, N'Steam Rice', N'Veg', N'Rice/Biryani', 90)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (22, N'Jeera Fried Rice', N'Veg', N'Rice/Biryani', 110)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (23, N'Veg Pulav', N'Veg', N'Rice/Biryani', 140)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (24, N'Paneer Pulav', N'Veg', N'Rice/Biryani', 160)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (25, N'Kashmiri Pulav', N'Veg', N'Rice/Biryani', 160)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (26, N'Cheese Pulav', N'Veg', N'Rice/Biryani', 185)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (27, N'Veg Biryani', N'Veg', N'Rice/Biryani', 150)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (28, N'Paneer Tikka Biryani', N'Veg', N'Rice/Biryani', 170)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (29, N'Dal Khichadi', N'Veg', N'Rice/Biryani', 140)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (30, N'Ghee Rice', N'Veg', N'Rice/Biryani', 130)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (31, N'Roti', N'Veg', N'Roti/Parathas', 25)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (32, N'Butter Roti', N'Veg', N'Roti/Parathas', 35)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (33, N'Naan', N'Veg', N'Roti/Parathas', 40)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (34, N'Butter Naan', N'Veg', N'Roti/Parathas', 55)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (35, N'Butter Paratha', N'Veg', N'Roti/Parathas', 55)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (36, N'Paratha', N'Veg', N'Roti/Parathas', 50)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (37, N'Orange Juice', N'Veg', N'Juice', 50)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (38, N'Mosambi Juice', N'Veg', N'Juice', 100)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (39, N'Watermelon Juice', N'Veg', N'Juice', 90)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (40, N'Pineapple Juice', N'Veg', N'Juice', 100)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (41, N'Chicken Masala', N'Non-Veg ', N'Non-Veg Group', 180)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (42, N'Chicken Butter Masala', N'Non-Veg ', N'Non-Veg Group', 200)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (43, N'Chicken Curry', N'Non-Veg ', N'Non-Veg Group', 160)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (44, N'Chicken Handi Half', N'Non-Veg ', N'Non-Veg Group', 300)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (45, N'Chicken Handi full', N'Non-Veg ', N'Non-Veg Group', 500)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (46, N'Chicken Malawani Half', N'Non-Veg ', N'Non-Veg Group', 350)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (47, N'Chicken Malawani full', N'Non-Veg ', N'Non-Veg Group', 600)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (48, N'Anda Curry', N'Non-Veg ', N'Non-Veg Group', 120)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (49, N'Anda Masala', N'Non-Veg ', N'Non-Veg Group', 120)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (50, N'Tandoori Roti', N'Non-Veg ', N'Roti', 15)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (51, N'Tandoori Butter Roti', N'Non-Veg ', N'Roti', 20)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (52, N'Naan', N'Non-Veg ', N'Roti', 50)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (53, N'Butter Naan', N'Non-Veg ', N'Roti', 60)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (54, N'Chapati', N'Non-Veg ', N'Roti', 15)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (55, N'Bhakari', N'Non-Veg ', N'Roti', 20)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (56, N'Chicken Biryani', N'Non-Veg ', N'Rice', 180)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (57, N'Anda Biryani', N'Non-Veg ', N'Rice', 150)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (58, N'Chicken Fried Rice', N'Non-Veg ', N'Rice', 170)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (59, N'Egg Fried Rice', N'Non-Veg ', N'Rice', 140)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (60, N'Egg  Rice', N'Non-Veg ', N'Rice', 140)
INSERT [dbo].[Menu] ([Product_Code], [Product_Name], [Product_Cat], [Product_Subcat], [Price]) VALUES (62, N'Mango Juice', N'veg', N',Juice', 100)
SET IDENTITY_INSERT [dbo].[Menu] OFF
INSERT [dbo].[reg] ([username], [pswd], [city], [mob], [email]) VALUES (N'Vikas', N'1234', N'Pune', N'8983322678', N'vikasp5@gmail.com')
USE [master]
GO
ALTER DATABASE [hotel] SET  READ_WRITE 
GO

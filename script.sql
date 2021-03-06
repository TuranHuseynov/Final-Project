USE [master]
GO
/****** Object:  Database [Travel]    Script Date: 5/3/2018 10:31:59 PM ******/
CREATE DATABASE [Travel]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Travel', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Travel.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Travel_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Travel_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Travel] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Travel].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Travel] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Travel] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Travel] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Travel] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Travel] SET ARITHABORT OFF 
GO
ALTER DATABASE [Travel] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Travel] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Travel] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Travel] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Travel] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Travel] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Travel] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Travel] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Travel] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Travel] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Travel] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Travel] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Travel] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Travel] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Travel] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Travel] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Travel] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Travel] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Travel] SET  MULTI_USER 
GO
ALTER DATABASE [Travel] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Travel] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Travel] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Travel] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Travel] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Travel]
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 5/3/2018 10:31:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[blog_id] [int] IDENTITY(1,1) NOT NULL,
	[blog_title] [nvarchar](200) NULL,
	[blog_content] [nvarchar](max) NULL,
 CONSTRAINT [PK_Blog] PRIMARY KEY CLUSTERED 
(
	[blog_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 5/3/2018 10:32:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[comment_id] [int] IDENTITY(1,1) NOT NULL,
	[comment_user_id] [int] NULL,
	[comment_text] [nvarchar](max) NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[comment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 5/3/2018 10:32:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[contact_id] [int] IDENTITY(1,1) NOT NULL,
	[contact_phone] [nvarchar](200) NULL,
	[contact_email] [nvarchar](200) NULL,
	[contact_address] [nvarchar](max) NULL,
	[contact_work_time] [nvarchar](50) NULL,
	[contact_facebook] [nvarchar](max) NULL,
	[contact_intagram] [nvarchar](max) NULL,
	[contact_twitter] [nvarchar](max) NULL,
	[contact_google] [nvarchar](max) NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[contact_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gallery]    Script Date: 5/3/2018 10:32:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gallery](
	[galery_id] [int] IDENTITY(1,1) NOT NULL,
	[galery_user_id] [int] NULL,
	[img_src] [nvarchar](max) NULL,
	[galery_comment] [nvarchar](max) NULL,
 CONSTRAINT [PK_Gallery] PRIMARY KEY CLUSTERED 
(
	[galery_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 5/3/2018 10:32:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[gender_id] [int] IDENTITY(1,1) NOT NULL,
	[gender_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[gender_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Join]    Script Date: 5/3/2018 10:32:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Join](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[joined_user_id] [int] NULL,
	[join_user_id] [int] NULL,
 CONSTRAINT [PK_Join] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 5/3/2018 10:32:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[menu_id] [int] IDENTITY(1,1) NOT NULL,
	[menu_backround] [nvarchar](500) NULL,
	[menu_text] [nvarchar](max) NULL,
	[menu_content] [nvarchar](max) NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[menu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Message]    Script Date: 5/3/2018 10:32:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[message_id] [int] IDENTITY(1,1) NOT NULL,
	[message_email] [nvarchar](500) NULL,
	[message_content] [nvarchar](max) NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[message_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Navbar]    Script Date: 5/3/2018 10:32:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Navbar](
	[nav_id] [int] IDENTITY(1,1) NOT NULL,
	[nav_name] [nvarchar](50) NULL,
	[nav_url] [nvarchar](450) NULL,
 CONSTRAINT [PK_Navbar] PRIMARY KEY CLUSTERED 
(
	[nav_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Postt]    Script Date: 5/3/2018 10:32:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Postt](
	[single_id] [int] IDENTITY(1,1) NOT NULL,
	[single_img] [nvarchar](200) NULL,
	[single_title] [nvarchar](200) NULL,
	[single_content] [nvarchar](max) NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[single_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 5/3/2018 10:32:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[service_id] [int] IDENTITY(1,1) NOT NULL,
	[serv_header] [nvarchar](500) NULL,
	[serv_content] [nvarchar](max) NULL,
	[serv_icons] [nvarchar](200) NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[service_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tra]    Script Date: 5/3/2018 10:32:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tra](
	[travel_id] [int] IDENTITY(1,1) NOT NULL,
	[travel_type_id] [int] NULL,
	[travel_user_id] [int] NULL,
	[travel_from] [nvarchar](600) NULL,
	[travel_to] [nvarchar](600) NULL,
	[travel_access_point] [nvarchar](600) NULL,
	[travel_price] [nvarchar](50) NULL,
	[travel_notice] [nvarchar](max) NULL,
	[travel_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[travel_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Travel_Type]    Script Date: 5/3/2018 10:32:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Travel_Type](
	[t_type_id] [int] IDENTITY(1,1) NOT NULL,
	[t_ttype_name] [nvarchar](200) NULL,
 CONSTRAINT [PK_Travel_Type] PRIMARY KEY CLUSTERED 
(
	[t_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 5/3/2018 10:32:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[user_full_name] [nvarchar](200) NULL,
	[user_img] [nvarchar](500) NULL,
	[user_email] [nvarchar](300) NULL,
	[user_password] [nvarchar](300) NULL,
	[user_age] [int] NULL,
	[user_gender_id] [int] NULL,
	[user_phone] [nvarchar](100) NULL,
	[user_city] [nvarchar](200) NULL,
	[user_fb_link] [nvarchar](max) NULL,
	[user_instagram_link] [nvarchar](max) NULL,
	[user_twitter_link] [nvarchar](max) NULL,
	[user_car_marka] [nvarchar](50) NULL,
	[user_car_model] [nvarchar](50) NULL,
	[user_car_place] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Comment] ON 

INSERT [dbo].[Comment] ([comment_id], [comment_user_id], [comment_text]) VALUES (3, 3, N'bele yene de baxilasi saytdi.Like')
INSERT [dbo].[Comment] ([comment_id], [comment_user_id], [comment_text]) VALUES (4, 4, N'eger biz bele dusunmusukse bele de olmalidir qaqa')
INSERT [dbo].[Comment] ([comment_id], [comment_user_id], [comment_text]) VALUES (5, 1, N'nebilim day')
INSERT [dbo].[Comment] ([comment_id], [comment_user_id], [comment_text]) VALUES (6, 8, N':)')
SET IDENTITY_INSERT [dbo].[Comment] OFF
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([contact_id], [contact_phone], [contact_email], [contact_address], [contact_work_time], [contact_facebook], [contact_intagram], [contact_twitter], [contact_google]) VALUES (2, N'+99450/70 641 96 93', N'turaneh@code.edu.az', N'Baku.Yeni Gunashli', N'24/7', N'https://www.facebook.com/turan.huseynov.95', N'url', N'url', N'url')
SET IDENTITY_INSERT [dbo].[Contact] OFF
SET IDENTITY_INSERT [dbo].[Gallery] ON 

INSERT [dbo].[Gallery] ([galery_id], [galery_user_id], [img_src], [galery_comment]) VALUES (9, 1, N'asfaltzad.jpg', N' Where does it come from? Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.  The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.')
INSERT [dbo].[Gallery] ([galery_id], [galery_user_id], [img_src], [galery_comment]) VALUES (1024, 3, N'automobile-car-classic-car-68256.jpg', N' Where does it come from? Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.  The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanie')
INSERT [dbo].[Gallery] ([galery_id], [galery_user_id], [img_src], [galery_comment]) VALUES (1025, 1, N'automobile-car-classic-car-68256.jpg', N'bu da bizden')
INSERT [dbo].[Gallery] ([galery_id], [galery_user_id], [img_src], [galery_comment]) VALUES (1026, 4, N'asphalt-cloud-color-561201.jpg', N' Where does it come from? Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.  The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanie')
INSERT [dbo].[Gallery] ([galery_id], [galery_user_id], [img_src], [galery_comment]) VALUES (1027, 3, N'automobile-car-classic-car-68256.jpg', N'hello my bro')
INSERT [dbo].[Gallery] ([galery_id], [galery_user_id], [img_src], [galery_comment]) VALUES (1028, 1, N'img3.jpeg', N'bele yolda ne geder')
SET IDENTITY_INSERT [dbo].[Gallery] OFF
SET IDENTITY_INSERT [dbo].[Gender] ON 

INSERT [dbo].[Gender] ([gender_id], [gender_name]) VALUES (1, N'male')
INSERT [dbo].[Gender] ([gender_id], [gender_name]) VALUES (2, N'female')
SET IDENTITY_INSERT [dbo].[Gender] OFF
SET IDENTITY_INSERT [dbo].[Join] ON 

INSERT [dbo].[Join] ([id], [joined_user_id], [join_user_id]) VALUES (4, 1, 8)
INSERT [dbo].[Join] ([id], [joined_user_id], [join_user_id]) VALUES (6, 1, 8)
INSERT [dbo].[Join] ([id], [joined_user_id], [join_user_id]) VALUES (7, 1, 4)
INSERT [dbo].[Join] ([id], [joined_user_id], [join_user_id]) VALUES (8, 1, 4)
INSERT [dbo].[Join] ([id], [joined_user_id], [join_user_id]) VALUES (9, 1, 4)
INSERT [dbo].[Join] ([id], [joined_user_id], [join_user_id]) VALUES (10, 3, 4)
INSERT [dbo].[Join] ([id], [joined_user_id], [join_user_id]) VALUES (11, 3, 4)
INSERT [dbo].[Join] ([id], [joined_user_id], [join_user_id]) VALUES (13, 1, 8)
INSERT [dbo].[Join] ([id], [joined_user_id], [join_user_id]) VALUES (14, 1, 8)
INSERT [dbo].[Join] ([id], [joined_user_id], [join_user_id]) VALUES (16, 3, 1)
INSERT [dbo].[Join] ([id], [joined_user_id], [join_user_id]) VALUES (17, 1, 1)
INSERT [dbo].[Join] ([id], [joined_user_id], [join_user_id]) VALUES (18, 1, 8)
INSERT [dbo].[Join] ([id], [joined_user_id], [join_user_id]) VALUES (19, 1, 4)
INSERT [dbo].[Join] ([id], [joined_user_id], [join_user_id]) VALUES (20, 1, 4)
INSERT [dbo].[Join] ([id], [joined_user_id], [join_user_id]) VALUES (21, 1, 4)
INSERT [dbo].[Join] ([id], [joined_user_id], [join_user_id]) VALUES (22, 1, 4)
INSERT [dbo].[Join] ([id], [joined_user_id], [join_user_id]) VALUES (23, 1, 4)
INSERT [dbo].[Join] ([id], [joined_user_id], [join_user_id]) VALUES (24, 1, 4)
INSERT [dbo].[Join] ([id], [joined_user_id], [join_user_id]) VALUES (25, 1, 4)
INSERT [dbo].[Join] ([id], [joined_user_id], [join_user_id]) VALUES (26, 1, 1)
INSERT [dbo].[Join] ([id], [joined_user_id], [join_user_id]) VALUES (27, 4, 8)
INSERT [dbo].[Join] ([id], [joined_user_id], [join_user_id]) VALUES (28, 4, 4)
INSERT [dbo].[Join] ([id], [joined_user_id], [join_user_id]) VALUES (32, 1, 4)
INSERT [dbo].[Join] ([id], [joined_user_id], [join_user_id]) VALUES (35, 1, 4)
INSERT [dbo].[Join] ([id], [joined_user_id], [join_user_id]) VALUES (36, 1, 4)
INSERT [dbo].[Join] ([id], [joined_user_id], [join_user_id]) VALUES (37, 1, 4)
INSERT [dbo].[Join] ([id], [joined_user_id], [join_user_id]) VALUES (38, 1, 8)
INSERT [dbo].[Join] ([id], [joined_user_id], [join_user_id]) VALUES (39, 1, 4)
INSERT [dbo].[Join] ([id], [joined_user_id], [join_user_id]) VALUES (1039, 1, 1)
INSERT [dbo].[Join] ([id], [joined_user_id], [join_user_id]) VALUES (1040, 1, 4)
SET IDENTITY_INSERT [dbo].[Join] OFF
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([menu_id], [menu_backround], [menu_text], [menu_content]) VALUES (1029, N'pexels-photo-105234.jpeg', N'Səyahətə xoş gəlmisiz', N'yollarınız qısalsın dostlarınız çoxalsın                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       ')
SET IDENTITY_INSERT [dbo].[Menu] OFF
SET IDENTITY_INSERT [dbo].[Message] ON 

INSERT [dbo].[Message] ([message_id], [message_email], [message_content]) VALUES (1, N'turan@mail.ru', N'Salam bele ozuvuz necesiz')
INSERT [dbo].[Message] ([message_id], [message_email], [message_content]) VALUES (3, N'xalid@mail.ru', N'blablablabla')
INSERT [dbo].[Message] ([message_id], [message_email], [message_content]) VALUES (1006, N'shamil@code.edi', N'sasaas')
INSERT [dbo].[Message] ([message_id], [message_email], [message_content]) VALUES (1010, N'turan@mail.ru', N'salamm necesen yaxsisanmi')
SET IDENTITY_INSERT [dbo].[Message] OFF
SET IDENTITY_INSERT [dbo].[Navbar] ON 

INSERT [dbo].[Navbar] ([nav_id], [nav_name], [nav_url]) VALUES (1, N'Ana səhifə', N'/Home/Index')
INSERT [dbo].[Navbar] ([nav_id], [nav_name], [nav_url]) VALUES (3, N'Əlaqə', N'/Home/Message')
SET IDENTITY_INSERT [dbo].[Navbar] OFF
SET IDENTITY_INSERT [dbo].[Service] ON 

INSERT [dbo].[Service] ([service_id], [serv_header], [serv_content], [serv_icons]) VALUES (1, N'səyahətinizi daha xoş hisslərlə doldurun', N'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', N'fa fa-road')
INSERT [dbo].[Service] ([service_id], [serv_header], [serv_content], [serv_icons]) VALUES (2, N'responsiv  dizayna sahib bir vebsayt', N'Burada siz rahatca öz səyahet elanlarınızı yerleşdirə bilə və bir səyahətə qoşula bilərsiniz.It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', N'fa fa-laptop')
INSERT [dbo].[Service] ([service_id], [serv_header], [serv_content], [serv_icons]) VALUES (3, N'səyahətdəki şəkillərinizi bizimlə paylaşın', N'Siz həm dostluq həm uzun söhbət əldə etdiyiniz bu layihədə səyahət boyu öz şəkillərinizi bizimlə paylaşın. Və həftənin ən sevimli "YolYoldaşım"ı olaraq şəkillərinizi vebsaytda görün.It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', N'fa fa-camera')
INSERT [dbo].[Service] ([service_id], [serv_header], [serv_content], [serv_icons]) VALUES (4, N'səyahətinizi daha xoş hisslərlə doldurun', N'Lorem  Where does it come from? Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.  The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, acco', N'fa fa-camera')
SET IDENTITY_INSERT [dbo].[Service] OFF
SET IDENTITY_INSERT [dbo].[Tra] ON 

INSERT [dbo].[Tra] ([travel_id], [travel_type_id], [travel_user_id], [travel_from], [travel_to], [travel_access_point], [travel_price], [travel_notice], [travel_date]) VALUES (1038, NULL, 4, N'Baku, Azerbaijan', N'Mingecevir, Azerbaijan', N'Vagzal', N'20', N'menim qeydlerim', NULL)
INSERT [dbo].[Tra] ([travel_id], [travel_type_id], [travel_user_id], [travel_from], [travel_to], [travel_access_point], [travel_price], [travel_notice], [travel_date]) VALUES (1039, NULL, 3, N'Qazax, Azerbaijan', N'Quba, Azerbaijan', N'Vagzal', N'22 Azn', N'qeydler
', NULL)
INSERT [dbo].[Tra] ([travel_id], [travel_type_id], [travel_user_id], [travel_from], [travel_to], [travel_access_point], [travel_price], [travel_notice], [travel_date]) VALUES (1043, NULL, 1, N'Barcelona, Spain', N'Kuwait City, Kuwait', N'Vagzal', N'88', N'', CAST(N'2018-03-04T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Tra] OFF
SET IDENTITY_INSERT [dbo].[Travel_Type] ON 

INSERT [dbo].[Travel_Type] ([t_type_id], [t_ttype_name]) VALUES (1, N'olkedaxili')
INSERT [dbo].[Travel_Type] ([t_type_id], [t_ttype_name]) VALUES (2, N'seherici')
SET IDENTITY_INSERT [dbo].[Travel_Type] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([user_id], [user_full_name], [user_img], [user_email], [user_password], [user_age], [user_gender_id], [user_phone], [user_city], [user_fb_link], [user_instagram_link], [user_twitter_link], [user_car_marka], [user_car_model], [user_car_place]) VALUES (1, N'Turan Huseynov', N'img4.jpg', N'turan@mail.ru', N'123456', 23, 1, N'+994506419693', N'Baku,Yeni Guneshli', N'#', N'#', N'#', N'Mersedec', N'C220', 4)
INSERT [dbo].[User] ([user_id], [user_full_name], [user_img], [user_email], [user_password], [user_age], [user_gender_id], [user_phone], [user_city], [user_fb_link], [user_instagram_link], [user_twitter_link], [user_car_marka], [user_car_model], [user_car_place]) VALUES (3, N'Xalid Velizade', N'img3.jpeg', N'xalid@mail.ru', N'123456', 28, 2, N'+99450777777', N'Gence', N'#', N'#', N'#', N'BMW', N'E666', 6)
INSERT [dbo].[User] ([user_id], [user_full_name], [user_img], [user_email], [user_password], [user_age], [user_gender_id], [user_phone], [user_city], [user_fb_link], [user_instagram_link], [user_twitter_link], [user_car_marka], [user_car_model], [user_car_place]) VALUES (4, N'Orxan Ferecov', N'automobile-campervan-camping-587976.jpg', N'orxan@mail.ru', N'123456', 22, 1, N'+9945077766', N'Sovetski', N'#', N'#', N'#', N'BMW', N'C220', 2)
INSERT [dbo].[User] ([user_id], [user_full_name], [user_img], [user_email], [user_password], [user_age], [user_gender_id], [user_phone], [user_city], [user_fb_link], [user_instagram_link], [user_twitter_link], [user_car_marka], [user_car_model], [user_car_place]) VALUES (8, N'Vəfadar Hüseynov', N'img1.jpg', N'vefadar@mail.ru', N'123456', NULL, 1, N'4776646', NULL, NULL, NULL, NULL, N'acsent', N'hundai', NULL)
SET IDENTITY_INSERT [dbo].[User] OFF
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_User] FOREIGN KEY([comment_user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_User]
GO
ALTER TABLE [dbo].[Gallery]  WITH CHECK ADD  CONSTRAINT [FK_Gallery_User] FOREIGN KEY([galery_user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Gallery] CHECK CONSTRAINT [FK_Gallery_User]
GO
ALTER TABLE [dbo].[Join]  WITH CHECK ADD  CONSTRAINT [FK_Join_User] FOREIGN KEY([join_user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Join] CHECK CONSTRAINT [FK_Join_User]
GO
ALTER TABLE [dbo].[Join]  WITH CHECK ADD  CONSTRAINT [FK_Joined_User1] FOREIGN KEY([joined_user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Join] CHECK CONSTRAINT [FK_Joined_User1]
GO
ALTER TABLE [dbo].[Travel_Type]  WITH CHECK ADD  CONSTRAINT [FK_Travel_Type_Travel_Type] FOREIGN KEY([t_type_id])
REFERENCES [dbo].[Travel_Type] ([t_type_id])
GO
ALTER TABLE [dbo].[Travel_Type] CHECK CONSTRAINT [FK_Travel_Type_Travel_Type]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Gender] FOREIGN KEY([user_gender_id])
REFERENCES [dbo].[Gender] ([gender_id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Gender]
GO
USE [master]
GO
ALTER DATABASE [Travel] SET  READ_WRITE 
GO

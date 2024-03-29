USE [master]
GO
/****** Object:  Database [Crud]    Script Date: 31.10.2019 02:16:27 ******/
CREATE DATABASE [Crud]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Crud', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Crud.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Crud_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Crud_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Crud] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Crud].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Crud] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Crud] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Crud] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Crud] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Crud] SET ARITHABORT OFF 
GO
ALTER DATABASE [Crud] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Crud] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Crud] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Crud] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Crud] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Crud] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Crud] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Crud] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Crud] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Crud] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Crud] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Crud] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Crud] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Crud] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Crud] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Crud] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Crud] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Crud] SET RECOVERY FULL 
GO
ALTER DATABASE [Crud] SET  MULTI_USER 
GO
ALTER DATABASE [Crud] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Crud] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Crud] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Crud] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Crud] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Crud', N'ON'
GO
ALTER DATABASE [Crud] SET QUERY_STORE = OFF
GO
USE [Crud]
GO
/****** Object:  Table [dbo].[Adresler]    Script Date: 31.10.2019 02:16:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adresler](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Adres] [nvarchar](50) NULL,
 CONSTRAINT [PK_Adresler] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kisiler]    Script Date: 31.10.2019 02:16:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kisiler](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NULL,
	[Soyadi] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Telefon] [char](10) NULL,
	[AdresID] [int] NULL,
 CONSTRAINT [PK_Kisiler] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Siteler]    Script Date: 31.10.2019 02:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Siteler](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[KisiID] [int] NULL,
	[Site] [nvarchar](50) NULL,
 CONSTRAINT [PK_Siteler] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Adresler] ON 

INSERT [dbo].[Adresler] ([Id], [Adres]) VALUES (1, N'Beykoz/İstanbul')
INSERT [dbo].[Adresler] ([Id], [Adres]) VALUES (2, N'Ümraniye/İstanbul')
SET IDENTITY_INSERT [dbo].[Adresler] OFF
SET IDENTITY_INSERT [dbo].[Kisiler] ON 

INSERT [dbo].[Kisiler] ([Id], [Adi], [Soyadi], [Email], [Telefon], [AdresID]) VALUES (37, N'mert ', N'ss', N'kenan@kenan.com', N'55555     ', 1)
INSERT [dbo].[Kisiler] ([Id], [Adi], [Soyadi], [Email], [Telefon], [AdresID]) VALUES (38, N'mert ', N's', N'kenan@kenan.com', N'55555     ', 1)
INSERT [dbo].[Kisiler] ([Id], [Adi], [Soyadi], [Email], [Telefon], [AdresID]) VALUES (39, N'mert ', N's', N'kenan@kenan.com', N'55555     ', 1)
INSERT [dbo].[Kisiler] ([Id], [Adi], [Soyadi], [Email], [Telefon], [AdresID]) VALUES (40, N'mert ', N's', N'kenan@kenan.com', N'55555     ', 1)
INSERT [dbo].[Kisiler] ([Id], [Adi], [Soyadi], [Email], [Telefon], [AdresID]) VALUES (41, N'mert ', N's', N'kenan@kenan.com', N'55555     ', 1)
INSERT [dbo].[Kisiler] ([Id], [Adi], [Soyadi], [Email], [Telefon], [AdresID]) VALUES (42, N'mert ', N's', N'kenan@kenan.com', N'55555     ', 1)
INSERT [dbo].[Kisiler] ([Id], [Adi], [Soyadi], [Email], [Telefon], [AdresID]) VALUES (43, N'q', N'q', N'q@q.com', N'q         ', 1)
INSERT [dbo].[Kisiler] ([Id], [Adi], [Soyadi], [Email], [Telefon], [AdresID]) VALUES (44, N'q', N'q', N'q@a.com', N'q         ', 1)
INSERT [dbo].[Kisiler] ([Id], [Adi], [Soyadi], [Email], [Telefon], [AdresID]) VALUES (45, N'q', N'q', N'q@aaaaaaaa.com', N'q         ', 1)
INSERT [dbo].[Kisiler] ([Id], [Adi], [Soyadi], [Email], [Telefon], [AdresID]) VALUES (47, N'mert ', N's', N'kenan@kenan.com', N'5536805166', 2)
INSERT [dbo].[Kisiler] ([Id], [Adi], [Soyadi], [Email], [Telefon], [AdresID]) VALUES (49, N'q', N'q', N'q@aaaaaaaa.com', N'q         ', 1)
INSERT [dbo].[Kisiler] ([Id], [Adi], [Soyadi], [Email], [Telefon], [AdresID]) VALUES (50, N'mert ', N's', N'kenan@kenan.com', N'5536805166', 2)
INSERT [dbo].[Kisiler] ([Id], [Adi], [Soyadi], [Email], [Telefon], [AdresID]) VALUES (51, N'mert ', N'ss', N'kenan@kenan.com', N'55555     ', 1)
INSERT [dbo].[Kisiler] ([Id], [Adi], [Soyadi], [Email], [Telefon], [AdresID]) VALUES (52, N'mert ', N's', N'kenan@kenan.com', N'55555     ', 1)
INSERT [dbo].[Kisiler] ([Id], [Adi], [Soyadi], [Email], [Telefon], [AdresID]) VALUES (53, N'mert ', N's', N'kenan@kenan.com', N'55555     ', 1)
INSERT [dbo].[Kisiler] ([Id], [Adi], [Soyadi], [Email], [Telefon], [AdresID]) VALUES (54, N'mert ', N's', N'kenan@kenan.com', N'55555     ', 1)
INSERT [dbo].[Kisiler] ([Id], [Adi], [Soyadi], [Email], [Telefon], [AdresID]) VALUES (55, N'mert ', N's', N'kenan@kenan.com', N'55555     ', 1)
INSERT [dbo].[Kisiler] ([Id], [Adi], [Soyadi], [Email], [Telefon], [AdresID]) VALUES (56, N'mert ', N's', N'kenan@kenan.com', N'55555     ', 1)
INSERT [dbo].[Kisiler] ([Id], [Adi], [Soyadi], [Email], [Telefon], [AdresID]) VALUES (57, N'q', N'q', N'q@q.com', N'q         ', 1)
INSERT [dbo].[Kisiler] ([Id], [Adi], [Soyadi], [Email], [Telefon], [AdresID]) VALUES (58, N'q', N'q', N'q@a.com', N'q         ', 1)
INSERT [dbo].[Kisiler] ([Id], [Adi], [Soyadi], [Email], [Telefon], [AdresID]) VALUES (59, N'q', N'q', N'q@aaaaaaaa.com', N'q         ', 1)
INSERT [dbo].[Kisiler] ([Id], [Adi], [Soyadi], [Email], [Telefon], [AdresID]) VALUES (60, N'mert ', N's', N'kenan@kenan.com', N'5536805166', 2)
INSERT [dbo].[Kisiler] ([Id], [Adi], [Soyadi], [Email], [Telefon], [AdresID]) VALUES (61, N'q', N'q', N'q@aaaaaaaa.com', N'q         ', 1)
INSERT [dbo].[Kisiler] ([Id], [Adi], [Soyadi], [Email], [Telefon], [AdresID]) VALUES (62, N'mert ', N's', N'kenan@kenan.com', N'5536805166', 2)
INSERT [dbo].[Kisiler] ([Id], [Adi], [Soyadi], [Email], [Telefon], [AdresID]) VALUES (63, N'mert ', N'ss', N'kenan@kenan.com', N'55555     ', 1)
INSERT [dbo].[Kisiler] ([Id], [Adi], [Soyadi], [Email], [Telefon], [AdresID]) VALUES (64, N'mert ', N's', N'kenan@kenan.com', N'55555     ', 1)
INSERT [dbo].[Kisiler] ([Id], [Adi], [Soyadi], [Email], [Telefon], [AdresID]) VALUES (65, N'mert ', N's', N'kenan@kenan.com', N'55555     ', 1)
INSERT [dbo].[Kisiler] ([Id], [Adi], [Soyadi], [Email], [Telefon], [AdresID]) VALUES (66, N'mert ', N's', N'kenan@kenan.com', N'55555     ', 1)
INSERT [dbo].[Kisiler] ([Id], [Adi], [Soyadi], [Email], [Telefon], [AdresID]) VALUES (67, N'mert ', N's', N'kenan@kenan.com', N'55555     ', 1)
INSERT [dbo].[Kisiler] ([Id], [Adi], [Soyadi], [Email], [Telefon], [AdresID]) VALUES (68, N'mert ', N's', N'kenan@kenan.com', N'55555     ', 1)
INSERT [dbo].[Kisiler] ([Id], [Adi], [Soyadi], [Email], [Telefon], [AdresID]) VALUES (69, N'q', N'q', N'q@q.com', N'q         ', 1)
INSERT [dbo].[Kisiler] ([Id], [Adi], [Soyadi], [Email], [Telefon], [AdresID]) VALUES (70, N'q', N'q', N'q@a.com', N'q         ', 1)
INSERT [dbo].[Kisiler] ([Id], [Adi], [Soyadi], [Email], [Telefon], [AdresID]) VALUES (71, N'q', N'q', N'q@aaaaaaaa.com', N'q         ', 1)
INSERT [dbo].[Kisiler] ([Id], [Adi], [Soyadi], [Email], [Telefon], [AdresID]) VALUES (72, N'mert ', N's', N'kenan@kenan.com', N'5536805166', 2)
INSERT [dbo].[Kisiler] ([Id], [Adi], [Soyadi], [Email], [Telefon], [AdresID]) VALUES (73, N'q', N'q', N'q@aaaaaaaa.com', N'q         ', 1)
INSERT [dbo].[Kisiler] ([Id], [Adi], [Soyadi], [Email], [Telefon], [AdresID]) VALUES (74, N'mert ', N's', N'kenan@kenan.com', N'5536805166', 2)
INSERT [dbo].[Kisiler] ([Id], [Adi], [Soyadi], [Email], [Telefon], [AdresID]) VALUES (75, N'mert ', N'Aksuw', N'kenan@kenan.com', N'1111111111', 1)
INSERT [dbo].[Kisiler] ([Id], [Adi], [Soyadi], [Email], [Telefon], [AdresID]) VALUES (76, N'mert ', N'merhaba', N'kenan@kenan.com', N'5555555555', 2)
INSERT [dbo].[Kisiler] ([Id], [Adi], [Soyadi], [Email], [Telefon], [AdresID]) VALUES (77, N'mert ', N'Aksuw', N'kenan@kenan.com', N'5555544443', 1)
INSERT [dbo].[Kisiler] ([Id], [Adi], [Soyadi], [Email], [Telefon], [AdresID]) VALUES (78, N'mert ', N'Aksuw', N'kenan@kenan.com', N'5555544443', 1)
INSERT [dbo].[Kisiler] ([Id], [Adi], [Soyadi], [Email], [Telefon], [AdresID]) VALUES (79, N'mert ', N'Aksuw', N'kenan@kenan.com', N'5555544443', 1)
INSERT [dbo].[Kisiler] ([Id], [Adi], [Soyadi], [Email], [Telefon], [AdresID]) VALUES (80, N's', N's', N'kenan@kenan.com', N'5555544443', 2)
SET IDENTITY_INSERT [dbo].[Kisiler] OFF
SET IDENTITY_INSERT [dbo].[Siteler] ON 

INSERT [dbo].[Siteler] ([id], [KisiID], [Site]) VALUES (4, 37, N'https://www.google.com/')
INSERT [dbo].[Siteler] ([id], [KisiID], [Site]) VALUES (5, 38, N'https://www.google.com/')
INSERT [dbo].[Siteler] ([id], [KisiID], [Site]) VALUES (6, 39, N'https://www.google.com/')
INSERT [dbo].[Siteler] ([id], [KisiID], [Site]) VALUES (7, 40, N'https://www.google.com/')
INSERT [dbo].[Siteler] ([id], [KisiID], [Site]) VALUES (8, 41, N'https://www.google.com/')
INSERT [dbo].[Siteler] ([id], [KisiID], [Site]) VALUES (9, 42, N'https://www.google.com/')
INSERT [dbo].[Siteler] ([id], [KisiID], [Site]) VALUES (10, 43, N'qhttps://www.google.com/')
INSERT [dbo].[Siteler] ([id], [KisiID], [Site]) VALUES (11, 44, N'https://www.google.com/')
INSERT [dbo].[Siteler] ([id], [KisiID], [Site]) VALUES (12, 45, N'https://www.google.com/')
INSERT [dbo].[Siteler] ([id], [KisiID], [Site]) VALUES (14, 47, N'https://www.google.com/')
INSERT [dbo].[Siteler] ([id], [KisiID], [Site]) VALUES (16, 75, N'merdo')
INSERT [dbo].[Siteler] ([id], [KisiID], [Site]) VALUES (17, 76, N'merdo')
INSERT [dbo].[Siteler] ([id], [KisiID], [Site]) VALUES (18, 77, N'merdo')
INSERT [dbo].[Siteler] ([id], [KisiID], [Site]) VALUES (19, 78, N'merdo')
INSERT [dbo].[Siteler] ([id], [KisiID], [Site]) VALUES (20, 79, N'merdo')
INSERT [dbo].[Siteler] ([id], [KisiID], [Site]) VALUES (21, 80, N'merdo')
SET IDENTITY_INSERT [dbo].[Siteler] OFF
ALTER TABLE [dbo].[Kisiler]  WITH CHECK ADD  CONSTRAINT [FK_Kisiler_Adresler] FOREIGN KEY([AdresID])
REFERENCES [dbo].[Adresler] ([Id])
GO
ALTER TABLE [dbo].[Kisiler] CHECK CONSTRAINT [FK_Kisiler_Adresler]
GO
ALTER TABLE [dbo].[Siteler]  WITH CHECK ADD  CONSTRAINT [FK_Siteler_Kisiler1] FOREIGN KEY([KisiID])
REFERENCES [dbo].[Kisiler] ([Id])
GO
ALTER TABLE [dbo].[Siteler] CHECK CONSTRAINT [FK_Siteler_Kisiler1]
GO
USE [master]
GO
ALTER DATABASE [Crud] SET  READ_WRITE 
GO

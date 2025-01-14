CREATE DATABASE [InfoCityDB]
GO
USE [InfoCityDB]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 30/04/2021 15:26:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](60) NOT NULL,
	[Population] [int] NOT NULL,
 CONSTRAINT [PK_Cities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CitiesBorder]    Script Date: 30/04/2021 15:26:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CitiesBorder](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CityBorderAId] [int] NOT NULL,
	[CityBorderBId] [int] NOT NULL,
 CONSTRAINT [PK_CitiesBorder] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 30/04/2021 15:26:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cities] ON 

INSERT [dbo].[Cities] ([Id], [Name], [Population]) VALUES (1, N'Florianópolis', 508826)
INSERT [dbo].[Cities] ([Id], [Name], [Population]) VALUES (2, N'São Jose', 250181)
INSERT [dbo].[Cities] ([Id], [Name], [Population]) VALUES (3, N'Rancho Queimado', 2748)
INSERT [dbo].[Cities] ([Id], [Name], [Population]) VALUES (4, N'São João Batista', 37424)
INSERT [dbo].[Cities] ([Id], [Name], [Population]) VALUES (5, N'Palhoça', 175272)
INSERT [dbo].[Cities] ([Id], [Name], [Population]) VALUES (6, N'Leoberto Leal', 3365)
INSERT [dbo].[Cities] ([Id], [Name], [Population]) VALUES (7, N'Paulo Lopes', 7569)
INSERT [dbo].[Cities] ([Id], [Name], [Population]) VALUES (8, N'Brusque', 134723)
INSERT [dbo].[Cities] ([Id], [Name], [Population]) VALUES (9, N'Bom Retiro', 8942)
INSERT [dbo].[Cities] ([Id], [Name], [Population]) VALUES (10, N'Santa Rosa de Lima', 2065)
SET IDENTITY_INSERT [dbo].[Cities] OFF
GO
SET IDENTITY_INSERT [dbo].[CitiesBorder] ON 

INSERT [dbo].[CitiesBorder] ([Id], [CityBorderAId], [CityBorderBId]) VALUES (1, 10, 2)
INSERT [dbo].[CitiesBorder] ([Id], [CityBorderAId], [CityBorderBId]) VALUES (2, 10, 5)
INSERT [dbo].[CitiesBorder] ([Id], [CityBorderAId], [CityBorderBId]) VALUES (3, 2, 5)
INSERT [dbo].[CitiesBorder] ([Id], [CityBorderAId], [CityBorderBId]) VALUES (4, 2, 1)
INSERT [dbo].[CitiesBorder] ([Id], [CityBorderAId], [CityBorderBId]) VALUES (5, 3, 6)
INSERT [dbo].[CitiesBorder] ([Id], [CityBorderAId], [CityBorderBId]) VALUES (6, 3, 8)
INSERT [dbo].[CitiesBorder] ([Id], [CityBorderAId], [CityBorderBId]) VALUES (7, 3, 9)
INSERT [dbo].[CitiesBorder] ([Id], [CityBorderAId], [CityBorderBId]) VALUES (8, 4, 10)
INSERT [dbo].[CitiesBorder] ([Id], [CityBorderAId], [CityBorderBId]) VALUES (9, 4, 8)
INSERT [dbo].[CitiesBorder] ([Id], [CityBorderAId], [CityBorderBId]) VALUES (10, 4, 9)
INSERT [dbo].[CitiesBorder] ([Id], [CityBorderAId], [CityBorderBId]) VALUES (11, 5, 9)
INSERT [dbo].[CitiesBorder] ([Id], [CityBorderAId], [CityBorderBId]) VALUES (12, 6, 8)
INSERT [dbo].[CitiesBorder] ([Id], [CityBorderAId], [CityBorderBId]) VALUES (13, 6, 4)
SET IDENTITY_INSERT [dbo].[CitiesBorder] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Name], [Password]) VALUES (1, N'Knewin', N'123456')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[CitiesBorder]  WITH CHECK ADD  CONSTRAINT [FK_CitiesBorder_Cities_CityBorderAId] FOREIGN KEY([CityBorderAId])
REFERENCES [dbo].[Cities] ([Id])
GO
ALTER TABLE [dbo].[CitiesBorder] CHECK CONSTRAINT [FK_CitiesBorder_Cities_CityBorderAId]
GO
ALTER TABLE [dbo].[CitiesBorder]  WITH CHECK ADD  CONSTRAINT [FK_CitiesBorder_Cities_CityBorderBId] FOREIGN KEY([CityBorderBId])
REFERENCES [dbo].[Cities] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CitiesBorder] CHECK CONSTRAINT [FK_CitiesBorder_Cities_CityBorderBId]
GO

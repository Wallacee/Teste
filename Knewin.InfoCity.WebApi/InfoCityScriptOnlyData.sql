USE [InfoCityDB]
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

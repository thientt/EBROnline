USE [ACP_REPORTS]
GO
/****** Object:  Table [dbo].[EBR_MST.EmailAddress]    Script Date: 9/24/2016 2:45:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EBR_MST.EmailAddress](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[LastUpdatedBy] [nvarchar](50) NOT NULL,
	[LastUpdated] [datetime] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[EBR_MST.EmailAddress] ON 

INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (1, N'DL-EBR-ABI@atmel.com ', N'DL-EBR-ABI@atmel.com ', N'Admin@atmel.com', CAST(0x0000A5B30170137D AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (2, N'Angela.Gonzales@atmel.com', N'Angela.Gonzales@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B301701B69 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (3, N'Andy.Kovats@atmel.com', N'Andy.Kovats@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B301702432 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (4, N'Anthony.Moss@atmel.com', N'Anthony.Moss@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B301702FBF AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (5, N'Annabelle.Gentil@atmel.com', N'Annabelle.Gentil@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B301703D99 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (6, N'Anne.Bregeon@atmel.com', N'Anne.Bregeon@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B301704715 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (7, N'Art.Mears@atmel.com', N'Art.Mears@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B301704D15 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (8, N'Barry.Raoofi@atmel.com', N'Barry.Raoofi@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B30170540A AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (9, N'Christophe.Coulee@atmel.com', N'Christophe.Coulee@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B301705C0B AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (10, N'Connie.Hughes@atmel.com', N'Connie.Hughes@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B301707400 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (11, N'Carmencita.Ibarra@atmel.com', N'Carmencita.Ibarra@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B301707A6D AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (12, N'Claudie.Vaillant@atmel.com', N'Claudie.Vaillant@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B3017082B0 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (13, N'Chris.Palma@atmel.com', N'Chris.Palma@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B3017088B5 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (14, N'Damien.Louis@atmel.com', N'Damien.Louis@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B301708F70 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (15, N'Daniel.Guardiola@atmel.com', N'Daniel.Guardiola@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B3017095F5 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (16, N'David.Nguyen@atmel.com', N'David.Nguyen@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B301709CC6 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (17, N'Dan.Harfert@atmel.com', N'Dan.Harfert@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B30170A2FF AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (18, N'Didier.Bernardon@atmel.com', N'Didier.Bernardon@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B30170AB96 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (19, N'Emmanuel.Daumain@atmel.com', N'Emmanuel.Daumain@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B30170B422 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (20, N'Eric.Fonteneau@atmel.com', N'Eric.Fonteneau@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B3017100E5 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (21, N'Francoise.Hubert@atmel.com', N'Francoise.Hubert@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B3017108A6 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (22, N'Janis.Burns@atmel.com', N'Janis.Burns@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B301710E42 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (23, N'Jaymee.Harridge@atmel.com', N'Jaymee.Harridge@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B3017115F1 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (24, N'Jaymee.Harridge@atmel.com', N'Jaymee.Harridge@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B3017115FC AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (25, N'Jane.Lambert@atmel.com', N'Jane.Lambert@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B301711D12 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (26, N'Jennifer.Benger@atmel.com', N'Jennifer.Benger@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B3017123CE AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (27, N'karey.klaus@atmel.com', N'karey.klaus@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B3017129B7 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (28, N'laetitia.potard@atmel.com', N'laetitia.potard@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B3017130C4 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (29, N'Laura.Limb@atmel.com', N'Laura.Limb@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B3017137CA AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (30, N'Linda.Lorimor@atmel.com', N'Linda.Lorimor@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B301714224 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (31, N'Mark.Fisher@atmel.com', N'Mark.Fisher@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B3017147F6 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (32, N'Melissa.Webber@atmel.com', N'Melissa.Webber@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B301714EAD AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (33, N'Mike.Flanagan@atmel.com', N'Mike.Flanagan@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B301715554 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (34, N'mickael.martineau@atmel.com', N'mickael.martineau@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B301715B35 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (35, N'Michael.S.Smith@atmel.com', N'Michael.S.Smith@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B301716324 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (36, N'pascal.bachelier@atmel.com', N'pascal.bachelier@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B30171698A AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (37, N'patrick.bizet@atmel.com', N'patrick.bizet@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B30171727D AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (38, N'phil.johnson@atmel.com', N'phil.johnson@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B3017177D3 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (39, N'pierre.valleau@atmel.com', N'pierre.valleau@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B3017180F6 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (40, N'robert.gaumont@atmel.com', N'robert.gaumont@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B30171865D AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (41, N'Romie.Dellomes@atmel.com', N'Romie.Dellomes@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B301718C28 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (42, N'Sam.Ashman@atmel.com', N'Sam.Ashman@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B3017191EB AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (43, N'Sharon.Hall@atmel.com', N'Sharon.Hall@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B3017198BA AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (44, N'stephane.vandepeutte@atmel.com', N'stephane.vandepeutte@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B301719EA2 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (45, N'thierry.saunier@atmel.com', N'thierry.saunier@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B30171A6B0 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (46, N'Veronique.Juille@atmel.com', N'Veronique.Juille@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B30171AD1A AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[EBR_MST.EmailAddress] OFF

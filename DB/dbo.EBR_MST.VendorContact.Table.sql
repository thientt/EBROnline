USE [ACP_REPORTS]
GO
/****** Object:  Table [dbo].[EBR_MST.VendorContact]    Script Date: 9/24/2016 2:45:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EBR_MST.VendorContact](
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
SET IDENTITY_INSERT [dbo].[EBR_MST.VendorContact] ON 

INSERT [dbo].[EBR_MST.VendorContact] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (1, N'eABI-ATP-Mail-List', N'eABI-ATP-Mail-List', N'Admin@atmel.com', CAST(0x0000A5B401627B4E AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorContact] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (2, N'eABI-ASESH-Mail-List', N'eABI-ASESH-Mail-List', N'Admin@atmel.com', CAST(0x0000A5B4016280AE AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorContact] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (3, N'eABI-JCAP-Mail-List', N'eABI-JCAP-Mail-List', N'Admin@atmel.com', CAST(0x0000A5B4016285F7 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorContact] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (4, N'eABI-UTL-Mail-List', N'eABI-UTL-Mail-List', N'Admin@atmel.com', CAST(0x0000A5B401628D48 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorContact] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (5, N'eABI-ASEKH-Mail-List', N'eABI-ASEKH-Mail-List', N'Admin@atmel.com', CAST(0x0000A5B401629229 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorContact] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (6, N'eABI-RAD-Mail-List', N'eABI-RAD-Mail-List', N'Admin@atmel.com', CAST(0x0000A5B401629870 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorContact] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (7, N'DL-AIC-SUPPORT', N'DL-AIC-SUPPORT', N'Admin@atmel.com', CAST(0x0000A5B401629D5D AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorContact] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (8, N'DL-ASECHUNGLI-SUPPORT', N'DL-ASECHUNGLI-SUPPORT', N'Admin@atmel.com', CAST(0x0000A5B40162A251 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorContact] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (9, N'DL-ASEKAOHSIUNG-SUPPORT', N'DL-ASEKAOHSIUNG-SUPPORT', N'Admin@atmel.com', CAST(0x0000A5B40162AA6D AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorContact] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (10, N'DL-ASEKOREA-SUPPORT', N'DL-ASEKOREA-SUPPORT', N'Admin@atmel.com', CAST(0x0000A5B40162B00C AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorContact] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (11, N'DL-ASESHANGHAI-SUPPORT', N'DL-ASESHANGHAI-SUPPORT', N'Admin@atmel.com', CAST(0x0000A5B40162B590 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorContact] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (12, N'DL-ATC3-SUPPORT', N'DL-ATC3-SUPPORT', N'Admin@atmel.com', CAST(0x0000A5B40162BDB7 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorContact] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (13, N'DL-ATK1-SUPPORT', N'DL-ATK1-SUPPORT', N'Admin@atmel.com', CAST(0x0000A5B40162C320 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorContact] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (14, N'DL-ATK4-SUPPORT', N'DL-ATK4-SUPPORT', N'Admin@atmel.com', CAST(0x0000A5B40162C9B4 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorContact] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (15, N'DL-ATP1-SUPPORT', N'DL-ATP1-SUPPORT', N'Admin@atmel.com', CAST(0x0000A5B40162D142 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorContact] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (16, N'DL-ATP3-SUPPORT', N'DL-ATP3-SUPPORT', N'Admin@atmel.com', CAST(0x0000A5B40162D66F AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorContact] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (17, N'DL-LINGSEN-SUPPORT', N'DL-LINGSEN-SUPPORT', N'Admin@atmel.com', CAST(0x0000A5B40162DEC5 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorContact] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (18, N'DL-UTL-SUPPORT', N'DL-UTL-SUPPORT', N'Admin@atmel.com', CAST(0x0000A5B40162E3D8 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorContact] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (19, N'asat@atmel.com', N'asat@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B40162EB8F AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorContact] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (20, N'cpk@atmel.com', N'cpk@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B40162F04D AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorContact] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (21, N'cpm@atmel.com', N'cpm@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B40162F599 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorContact] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (22, N'cps@atmel.com', N'cps@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B401630806 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorContact] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (23, N'fujitsu@atmel.com', N'fujitsu@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B4016310B5 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorContact] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (24, N'greatek@atmel.com', N'greatek@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B4016315EB AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorContact] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (25, N'mitsui@atmel.com', N'mitsui@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B401631B6F AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorContact] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (26, N'CSO-DIE-BANK', N'CSO-DIE-BANK', N'Admin@atmel.com', CAST(0x0000A5B401632078 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorContact] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (27, N'SJO-DIE-BANK', N'SJO-DIE-BANK', N'Admin@atmel.com', CAST(0x0000A5B401632529 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[EBR_MST.VendorContact] OFF

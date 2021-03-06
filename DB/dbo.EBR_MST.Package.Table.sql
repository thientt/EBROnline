USE [ACP_REPORTS]
GO
/****** Object:  Table [dbo].[EBR_MST.Package]    Script Date: 9/24/2016 2:45:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EBR_MST.Package](
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
SET IDENTITY_INSERT [dbo].[EBR_MST.Package] ON 

INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (1, N'SOIC', N'SOIC', N'Admin@atmel.com', CAST(0x0000A5B4015AC026 AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (2, N'UDFN (Sawn)', N'UDFN (Sawn)', N'Admin@atmel.com', CAST(0x0000A5B4015AD182 AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (3, N'TSSOP', N'TSSOP', N'Admin@atmel.com', CAST(0x0000A5B4015AE79A AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (4, N'PDIP', N'PDIP', N'Admin@atmel.com', CAST(0x0000A5B4015AF1C0 AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (5, N'WLCSP', N'WLCSP', N'Admin@atmel.com', CAST(0x0000A5B4015AF9A6 AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (6, N'SIDEBRAZE', N'SIDEBRAZE', N'Admin@atmel.com', CAST(0x0000A5B4015B0066 AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (7, N'VQFN (Sawn)', N'VQFN (Sawn)', N'Admin@atmel.com', CAST(0x0000A5B4015B06C1 AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (8, N'UQFN (Sawn)', N'UQFN (Sawn)', N'Admin@atmel.com', CAST(0x0000A5B4015B0E49 AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (9, N'VQFN (Punched)', N'VQFN (Punched)', N'Admin@atmel.com', CAST(0x0000A5B4015B15FC AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (10, N'XQFN', N'XQFN', N'Admin@atmel.com', CAST(0x0000A5B4015B1FCA AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (11, N'XDFN', N'XDFN', N'Admin@atmel.com', CAST(0x0000A5B4015B2679 AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (12, N'LFBGA', N'LFBGA', N'Admin@atmel.com', CAST(0x0000A5B4015B2CEB AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (13, N'TFBGA', N'TFBGA', N'Admin@atmel.com', CAST(0x0000A5B4015B35A3 AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (14, N'CBGA', N'CBGA', N'Admin@atmel.com', CAST(0x0000A5B4015B404E AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (15, N'CERDIP', N'CERDIP', N'Admin@atmel.com', CAST(0x0000A5B4015B48C8 AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (16, N'DFCard', N'DFCard', N'Admin@atmel.com', CAST(0x0000A5B4015B4F23 AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (17, N'FPACK', N'FPACK', N'Admin@atmel.com', CAST(0x0000A5B4015B56AC AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (18, N'FC', N'FC', N'Admin@atmel.com', CAST(0x0000A5B4015B5D03 AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (19, N'CQUAD', N'CQUAD', N'Admin@atmel.com', CAST(0x0000A5B4015B6CFE AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (20, N'LGA', N'LGA', N'Admin@atmel.com', CAST(0x0000A5B4015B740D AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (21, N'TQFP', N'TQFP', N'Admin@atmel.com', CAST(0x0000A5B4015B7A72 AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (22, N'LCC or LCCP', N'LCC or LCCP', N'Admin@atmel.com', CAST(0x0000A5B4015B8089 AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (23, N'LQFP', N'LQFP', N'Admin@atmel.com', CAST(0x0000A5B4015B8760 AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (24, N'MBGA', N'MBGA', N'Admin@atmel.com', CAST(0x0000A5B4015B8DA8 AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (25, N'MLF', N'MLF', N'Admin@atmel.com', CAST(0x0000A5B4015B93B4 AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (26, N'SSOP', N'SSOP', N'Admin@atmel.com', CAST(0x0000A5B4015B99E4 AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (27, N'PGA', N'PGA', N'Admin@atmel.com', CAST(0x0000A5B4015BA160 AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (28, N'PLCC', N'PLCC', N'Admin@atmel.com', CAST(0x0000A5B4015BA78B AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (29, N'PQFP', N'PQFP', N'Admin@atmel.com', CAST(0x0000A5B4015BAD34 AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (30, N'CASON', N'CASON', N'Admin@atmel.com', CAST(0x0000A5B4015BB327 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[EBR_MST.Package] OFF

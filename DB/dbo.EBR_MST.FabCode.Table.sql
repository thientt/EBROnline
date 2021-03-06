USE [ACP_REPORTS]
GO
/****** Object:  Table [dbo].[EBR_MST.FabCode]    Script Date: 9/24/2016 2:45:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EBR_MST.FabCode](
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
SET IDENTITY_INSERT [dbo].[EBR_MST.FabCode] ON 

INSERT [dbo].[EBR_MST.FabCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (1, N'1-CSO', N'1-CSO', N'Admin@atmel.com', CAST(0x0000A5B301731076 AS DateTime), 0)
INSERT [dbo].[EBR_MST.FabCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (2, N'3-RFO', N'3-RFO', N'Admin@atmel.com', CAST(0x0000A5B301731C2F AS DateTime), 0)
INSERT [dbo].[EBR_MST.FabCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (3, N'4-NTS', N'4-NTS', N'Admin@atmel.com', CAST(0x0000A5B3017321CF AS DateTime), 0)
INSERT [dbo].[EBR_MST.FabCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (4, N'5-XFAB', N'5-XFAB', N'Admin@atmel.com', CAST(0x0000A5B301733166 AS DateTime), 0)
INSERT [dbo].[EBR_MST.FabCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (5, N'6-SMIC', N'6-SMIC', N'Admin@atmel.com', CAST(0x0000A5B301733883 AS DateTime), 0)
INSERT [dbo].[EBR_MST.FabCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (6, N'7-UMC', N'7-UMC', N'Admin@atmel.com', CAST(0x0000A5B301733E4B AS DateTime), 0)
INSERT [dbo].[EBR_MST.FabCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (7, N'8-TSMC', N'8-TSMC', N'Admin@atmel.com', CAST(0x0000A5B301734561 AS DateTime), 0)
INSERT [dbo].[EBR_MST.FabCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (8, N'9-MAC', N'9-MAC', N'Admin@atmel.com', CAST(0x0000A5B301734B77 AS DateTime), 0)
INSERT [dbo].[EBR_MST.FabCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (9, N'11-DHT', N'11-DHT', N'Admin@atmel.com', CAST(0x0000A5B30173545F AS DateTime), 0)
INSERT [dbo].[EBR_MST.FabCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (10, N'12-LFG', N'12-LFG', N'Admin@atmel.com', CAST(0x0000A5B301735AFC AS DateTime), 0)
INSERT [dbo].[EBR_MST.FabCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (11, N'13-VIS', N'13-VIS', N'Admin@atmel.com', CAST(0x0000A5B30173609F AS DateTime), 0)
INSERT [dbo].[EBR_MST.FabCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (12, N'14-Tower Jazz (TPS5)', N'14-Tower Jazz (TPS5)', N'Admin@atmel.com', CAST(0x0000A5B301736A3E AS DateTime), 0)
INSERT [dbo].[EBR_MST.FabCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (13, N'15-KyeC', N'15-KyeC', N'Admin@atmel.com', CAST(0x0000A5B30173728E AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[EBR_MST.FabCode] OFF

USE [ACP_REPORTS]
GO
/****** Object:  Table [dbo].[EBR_MST.MarkingSL]    Script Date: 9/24/2016 2:45:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EBR_MST.MarkingSL](
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
SET IDENTITY_INSERT [dbo].[EBR_MST.MarkingSL] ON 

INSERT [dbo].[EBR_MST.MarkingSL] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (1, N'EEEE (Special Marking)', N'EEEE (Special Marking)', N'Admin@atmel.com', CAST(0x0000A5B301779ECC AS DateTime), 0)
INSERT [dbo].[EBR_MST.MarkingSL] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (2, N'QS', N'QS', N'Admin@atmel.com', CAST(0x0000A5B30177A8B5 AS DateTime), 0)
INSERT [dbo].[EBR_MST.MarkingSL] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (3, N'SL', N'SL', N'Admin@atmel.com', CAST(0x0000A5B30177AF43 AS DateTime), 0)
INSERT [dbo].[EBR_MST.MarkingSL] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (4, N'TA', N'TA', N'Admin@atmel.com', CAST(0x0000A5B30177B68A AS DateTime), 0)
INSERT [dbo].[EBR_MST.MarkingSL] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (5, N'AL', N'AL', N'Admin@atmel.com', CAST(0x0000A5B30177BF6F AS DateTime), 0)
INSERT [dbo].[EBR_MST.MarkingSL] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (6, N'TS', N'TS', N'Admin@atmel.com', CAST(0x0000A5B30177C560 AS DateTime), 0)
INSERT [dbo].[EBR_MST.MarkingSL] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (7, N'Requestor_LOC', N'Requestor_LOC', N'Admin@atmel.com', CAST(0x0000A5B30177CB4F AS DateTime), 1)
INSERT [dbo].[EBR_MST.MarkingSL] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (8, N'CSO', N'CSO', N'Admin@atmel.com', CAST(0x0000A5B30177D3DB AS DateTime), 1)
INSERT [dbo].[EBR_MST.MarkingSL] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (9, N'HNO', N'HNO', N'Admin@atmel.com', CAST(0x0000A5B30177DA0A AS DateTime), 1)
INSERT [dbo].[EBR_MST.MarkingSL] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (10, N'NTO', N'NTO', N'Admin@atmel.com', CAST(0x0000A5B30177E126 AS DateTime), 1)
INSERT [dbo].[EBR_MST.MarkingSL] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (11, N'RFO', N'RFO', N'Admin@atmel.com', CAST(0x0000A5B30177E9A7 AS DateTime), 1)
INSERT [dbo].[EBR_MST.MarkingSL] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (12, N'SJO', N'SJO', N'Admin@atmel.com', CAST(0x0000A5B3017806E8 AS DateTime), 1)
INSERT [dbo].[EBR_MST.MarkingSL] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (13, N'ACP', N'ACP', N'Admin@atmel.com', CAST(0x0000A5B3017810E5 AS DateTime), 1)
INSERT [dbo].[EBR_MST.MarkingSL] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (14, N'ATMEL_HK', N'ATMEL_HK', N'Admin@atmel.com', CAST(0x0000A5B301781882 AS DateTime), 1)
INSERT [dbo].[EBR_MST.MarkingSL] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (15, N'ATMEL_NOR', N'ATMEL_NOR', N'Admin@atmel.com', CAST(0x0000A5B30178236B AS DateTime), 1)
INSERT [dbo].[EBR_MST.MarkingSL] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (16, N'ATMEL_SH', N'ATMEL_SH', N'Admin@atmel.com', CAST(0x0000A5B30178297E AS DateTime), 1)
INSERT [dbo].[EBR_MST.MarkingSL] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (17, N'ATMEL_TAIWAN', N'ATMEL_TAIWAN', N'Admin@atmel.com', CAST(0x0000A5B30178310A AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[EBR_MST.MarkingSL] OFF

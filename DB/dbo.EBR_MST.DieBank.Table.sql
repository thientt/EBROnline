USE [ACP_REPORTS]
GO
/****** Object:  Table [dbo].[EBR_MST.DieBank]    Script Date: 9/24/2016 2:45:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EBR_MST.DieBank](
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
SET IDENTITY_INSERT [dbo].[EBR_MST.DieBank] ON 

INSERT [dbo].[EBR_MST.DieBank] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (1, N'CSO1', N'CSO', N'Admin@atmel.com', CAST(0x0000A5B3016E92C7 AS DateTime), 0)
INSERT [dbo].[EBR_MST.DieBank] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (2, N'NTO', N'NTO', N'Admin@atmel.com', CAST(0x0000A5B3016E1503 AS DateTime), 0)
INSERT [dbo].[EBR_MST.DieBank] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (3, N'SJO', N'SJO', N'Admin@atmel.com', CAST(0x0000A5B3016E1C16 AS DateTime), 0)
INSERT [dbo].[EBR_MST.DieBank] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (4, N'RFO', N'RFO', N'Admin@atmel.com', CAST(0x0000A5B3016E239C AS DateTime), 0)
INSERT [dbo].[EBR_MST.DieBank] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (5, N'ACP5', N'ACP5', N'Admin@atmel.com', CAST(0x0000A5B3016E2D72 AS DateTime), 0)
INSERT [dbo].[EBR_MST.DieBank] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (6, N'KYEC', N'KYEC', N'Admin@atmel.com', CAST(0x0000A5B3016E345F AS DateTime), 0)
INSERT [dbo].[EBR_MST.DieBank] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (7, N'UMC', N'UMC', N'Admin@atmel.com', CAST(0x0000A5B3016E3CED AS DateTime), 0)
INSERT [dbo].[EBR_MST.DieBank] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (8, N'TPS', N'TPS', N'Admin@atmel.com', CAST(0x0000A5B3016E46E7 AS DateTime), 0)
INSERT [dbo].[EBR_MST.DieBank] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (9, N'TSM', N'TSM', N'Admin@atmel.com', CAST(0x0000A5B3016E4DD1 AS DateTime), 0)
INSERT [dbo].[EBR_MST.DieBank] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (10, N'SMIC', N'SMIC', N'Admin@atmel.com', CAST(0x0000A5B3016E56C9 AS DateTime), 0)
INSERT [dbo].[EBR_MST.DieBank] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (11, N'RAD', N'RAD', N'Admin@atmel.com', CAST(0x0000A5B3016E5D98 AS DateTime), 0)
INSERT [dbo].[EBR_MST.DieBank] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (12, N'ASE-SH', N'ASE-SH', N'Admin@atmel.com', CAST(0x0000A5B3016E647F AS DateTime), 0)
INSERT [dbo].[EBR_MST.DieBank] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (13, N'Prod Eng', N'Prod Eng', N'Admin@atmel.com', CAST(0x0000A5B3016E6B47 AS DateTime), 0)
INSERT [dbo].[EBR_MST.DieBank] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (14, N'Test Eng', N'Test Eng', N'Admin@atmel.com', CAST(0x0000A5B3016E722C AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[EBR_MST.DieBank] OFF

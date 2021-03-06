USE [ACP_REPORTS]
GO
/****** Object:  Table [dbo].[EBR_MST.RequesterLocation]    Script Date: 9/24/2016 2:45:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EBR_MST.RequesterLocation](
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
SET IDENTITY_INSERT [dbo].[EBR_MST.RequesterLocation] ON 

INSERT [dbo].[EBR_MST.RequesterLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (1, N'CSO', N'CSO', N'Admin@atmel.com', CAST(0x0000A5B4016059B7 AS DateTime), 0)
INSERT [dbo].[EBR_MST.RequesterLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (2, N'HNO', N'HNO', N'Admin@atmel.com', CAST(0x0000A5B401606169 AS DateTime), 0)
INSERT [dbo].[EBR_MST.RequesterLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (3, N'NTO', N'NTO', N'Admin@atmel.com', CAST(0x0000A5B401606A08 AS DateTime), 0)
INSERT [dbo].[EBR_MST.RequesterLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (4, N'RFO', N'RFO', N'Admin@atmel.com', CAST(0x0000A5B401606F8C AS DateTime), 0)
INSERT [dbo].[EBR_MST.RequesterLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (5, N'SJO', N'SJO', N'Admin@atmel.com', CAST(0x0000A5B401607737 AS DateTime), 0)
INSERT [dbo].[EBR_MST.RequesterLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (6, N'ACP', N'ACP', N'Admin@atmel.com', CAST(0x0000A5B401607CD2 AS DateTime), 0)
INSERT [dbo].[EBR_MST.RequesterLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (7, N'ATMEL_HK', N'ATMEL_HK', N'Admin@atmel.com', CAST(0x0000A5B4016082DD AS DateTime), 0)
INSERT [dbo].[EBR_MST.RequesterLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (8, N'ATMEL_NOR', N'ATMEL_NOR', N'Admin@atmel.com', CAST(0x0000A5B401608885 AS DateTime), 0)
INSERT [dbo].[EBR_MST.RequesterLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (9, N'ATMEL_SH', N'ATMEL_SH', N'Admin@atmel.com', CAST(0x0000A5B401608E57 AS DateTime), 0)
INSERT [dbo].[EBR_MST.RequesterLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (10, N'ATMEL_TAIWAN', N'ATMEL_TAIWAN', N'Admin@atmel.com', CAST(0x0000A5B401609452 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[EBR_MST.RequesterLocation] OFF

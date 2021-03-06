USE [ACP_REPORTS]
GO
/****** Object:  Table [dbo].[EBR_MST.Owner]    Script Date: 9/24/2016 2:45:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EBR_MST.Owner](
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
SET IDENTITY_INSERT [dbo].[EBR_MST.Owner] ON 

INSERT [dbo].[EBR_MST.Owner] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (1, N'QA', N'QA', N'Admin@atmel.com', CAST(0x0000A5B301786F6B AS DateTime), 0)
INSERT [dbo].[EBR_MST.Owner] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (2, N'NSTD', N'NSTD', N'Admin@atmel.com', CAST(0x0000A5B30178762F AS DateTime), 0)
INSERT [dbo].[EBR_MST.Owner] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (3, N'NCR', N'NCR', N'Admin@atmel.com', CAST(0x0000A5B301787C3E AS DateTime), 0)
INSERT [dbo].[EBR_MST.Owner] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (4, N'RISK', N'RISK', N'Admin@atmel.com', CAST(0x0000A5B301788117 AS DateTime), 0)
INSERT [dbo].[EBR_MST.Owner] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (5, N'DEV', N'DEV', N'Admin@atmel.com', CAST(0x0000A5B30178877D AS DateTime), 0)
INSERT [dbo].[EBR_MST.Owner] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (6, N'PROTO', N'PROTO', N'Admin@atmel.com', CAST(0x0000A5B301788CAD AS DateTime), 0)
INSERT [dbo].[EBR_MST.Owner] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (7, N'DESRV', N'DESRV', N'Admin@atmel.com', CAST(0x0000A5B30178916F AS DateTime), 0)
INSERT [dbo].[EBR_MST.Owner] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (8, N'ENG', N'ENG', N'Admin@atmel.com', CAST(0x0000A5B301789748 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[EBR_MST.Owner] OFF

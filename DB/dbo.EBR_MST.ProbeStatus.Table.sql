USE [ACP_REPORTS]
GO
/****** Object:  Table [dbo].[EBR_MST.ProbeStatus]    Script Date: 9/24/2016 2:45:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EBR_MST.ProbeStatus](
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
SET IDENTITY_INSERT [dbo].[EBR_MST.ProbeStatus] ON 

INSERT [dbo].[EBR_MST.ProbeStatus] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (1, N'Blind Build', N'Blind Build', N'Admin@atmel.com', CAST(0x0000A5B4015EBA35 AS DateTime), 0)
INSERT [dbo].[EBR_MST.ProbeStatus] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (2, N'Wafer Map (See Portal)', N'Wafer Map (See Portal)', N'Admin@atmel.com', CAST(0x0000A5B4015EC039 AS DateTime), 0)
INSERT [dbo].[EBR_MST.ProbeStatus] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (3, N'Wafer Map', N'Wafer Map', N'Admin@atmel.com', CAST(0x0000A5B4015ECFA8 AS DateTime), 0)
INSERT [dbo].[EBR_MST.ProbeStatus] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (4, N'Inked Die', N'Inked Die', N'Admin@atmel.com', CAST(0x0000A5B4015ED5F9 AS DateTime), 0)
INSERT [dbo].[EBR_MST.ProbeStatus] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (5, N'Other', N'Other', N'Admin@atmel.com', CAST(0x0000A5B4015EDC93 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[EBR_MST.ProbeStatus] OFF

USE [ACP_REPORTS]
GO
/****** Object:  Table [dbo].[EBR_MST.RevenueLocation]    Script Date: 9/24/2016 2:45:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EBR_MST.RevenueLocation](
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
SET IDENTITY_INSERT [dbo].[EBR_MST.RevenueLocation] ON 

INSERT [dbo].[EBR_MST.RevenueLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (1, N'CSO', N'CSO', N'Admin@atmel.com', CAST(0x0000A5B401610474 AS DateTime), 0)
INSERT [dbo].[EBR_MST.RevenueLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (2, N'SJO', N'SJO', N'Admin@atmel.com', CAST(0x0000A5B401610A33 AS DateTime), 0)
INSERT [dbo].[EBR_MST.RevenueLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (3, N'NTO', N'NTO', N'Admin@atmel.com', CAST(0x0000A5B40161115E AS DateTime), 0)
INSERT [dbo].[EBR_MST.RevenueLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (4, N'RFO', N'RFO', N'Admin@atmel.com', CAST(0x0000A5B401611720 AS DateTime), 0)
INSERT [dbo].[EBR_MST.RevenueLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (5, N'HNO', N'HNO', N'Admin@atmel.com', CAST(0x0000A5B401611DE3 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[EBR_MST.RevenueLocation] OFF

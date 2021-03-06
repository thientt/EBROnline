USE [ACP_REPORTS]
GO
/****** Object:  Table [dbo].[EBR_MST.WireMaterial]    Script Date: 9/24/2016 2:45:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EBR_MST.WireMaterial](
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
SET IDENTITY_INSERT [dbo].[EBR_MST.WireMaterial] ON 

INSERT [dbo].[EBR_MST.WireMaterial] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (1, N'Cu Wire', N'Cu Wire', N'Admin@atmel.com', CAST(0x0000A5B40163BDDB AS DateTime), 0)
INSERT [dbo].[EBR_MST.WireMaterial] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (2, N'Au Wire', N'Au Wire', N'Admin@atmel.com', CAST(0x0000A5B40163C3F4 AS DateTime), 0)
INSERT [dbo].[EBR_MST.WireMaterial] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (3, N'Al Wire', N'Al Wire', N'Admin@atmel.com', CAST(0x0000A5B40163C951 AS DateTime), 0)
INSERT [dbo].[EBR_MST.WireMaterial] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (4, N'N/A', N'N/A', N'Admin@atmel.com', CAST(0x0000A5B40163D312 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[EBR_MST.WireMaterial] OFF

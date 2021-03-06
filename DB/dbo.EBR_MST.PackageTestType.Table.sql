USE [ACP_REPORTS]
GO
/****** Object:  Table [dbo].[EBR_MST.PackageTestType]    Script Date: 9/24/2016 2:45:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EBR_MST.PackageTestType](
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
SET IDENTITY_INSERT [dbo].[EBR_MST.PackageTestType] ON 

INSERT [dbo].[EBR_MST.PackageTestType] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (1, N'Strip Test', N'Strip Test', N'Admin@atmel.com', CAST(0x0000A5B4015C57F5 AS DateTime), 0)
INSERT [dbo].[EBR_MST.PackageTestType] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (2, N'Single Unit Test', N'Single Unit Test', N'Admin@atmel.com', CAST(0x0000A5B4015C63C1 AS DateTime), 0)
INSERT [dbo].[EBR_MST.PackageTestType] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (3, N'No Test', N'No Test', N'Admin@atmel.com', CAST(0x0000A5B4015C6C43 AS DateTime), 0)
INSERT [dbo].[EBR_MST.PackageTestType] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (4, N'Multi Unit Test', N'Multi Unit Test', N'Admin@atmel.com', CAST(0x0000A5B4015C7398 AS DateTime), 0)
INSERT [dbo].[EBR_MST.PackageTestType] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (5, N'Hand Test', N'Hand Test', N'Admin@atmel.com', CAST(0x0000A5B4015C7A53 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[EBR_MST.PackageTestType] OFF

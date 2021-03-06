USE [ACP_REPORTS]
GO
/****** Object:  Table [dbo].[EBR_MST.QualityLevel]    Script Date: 9/24/2016 2:45:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EBR_MST.QualityLevel](
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
SET IDENTITY_INSERT [dbo].[EBR_MST.QualityLevel] ON 

INSERT [dbo].[EBR_MST.QualityLevel] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (1, N'Military', N'Military', N'Admin@atmel.com', CAST(0x0000A5B4015F924C AS DateTime), 0)
INSERT [dbo].[EBR_MST.QualityLevel] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (2, N'Automotive', N'Automotive', N'Admin@atmel.com', CAST(0x0000A5B4015F9D9E AS DateTime), 0)
INSERT [dbo].[EBR_MST.QualityLevel] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (3, N'Commercial', N'Commercial', N'Admin@atmel.com', CAST(0x0000A5B4015FA399 AS DateTime), 0)
INSERT [dbo].[EBR_MST.QualityLevel] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (4, N'Industrial', N'Industrial', N'Admin@atmel.com', CAST(0x0000A5B4015FAC1D AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[EBR_MST.QualityLevel] OFF

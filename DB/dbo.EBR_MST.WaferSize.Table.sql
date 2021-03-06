USE [ACP_REPORTS]
GO
/****** Object:  Table [dbo].[EBR_MST.WaferSize]    Script Date: 9/24/2016 2:45:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EBR_MST.WaferSize](
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
SET IDENTITY_INSERT [dbo].[EBR_MST.WaferSize] ON 

INSERT [dbo].[EBR_MST.WaferSize] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (1, N'6 inch - 150 mm', N'6 inch - 150 mm', N'Admin@atmel.com', CAST(0x0000A5B401634B26 AS DateTime), 0)
INSERT [dbo].[EBR_MST.WaferSize] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (2, N'8 inch - 200 mm', N'8 inch - 200 mm', N'Admin@atmel.com', CAST(0x0000A5B4016356B8 AS DateTime), 0)
INSERT [dbo].[EBR_MST.WaferSize] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (3, N'10 inch - 250 mm', N'10 inch - 250 mm', N'Admin@atmel.com', CAST(0x0000A5B401635ED9 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[EBR_MST.WaferSize] OFF

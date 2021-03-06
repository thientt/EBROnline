USE [ACP_REPORTS]
GO
/****** Object:  Table [dbo].[EBR_MST.PackingType]    Script Date: 9/24/2016 2:45:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EBR_MST.PackingType](
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
SET IDENTITY_INSERT [dbo].[EBR_MST.PackingType] ON 

INSERT [dbo].[EBR_MST.PackingType] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (1, N'Bakeable Tray', N'Bakeable Tray', N'Admin@atmel.com', CAST(0x0000A5B4015CB730 AS DateTime), 0)
INSERT [dbo].[EBR_MST.PackingType] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (2, N'Tube', N'Tube', N'Admin@atmel.com', CAST(0x0000A5B4015CBEE5 AS DateTime), 0)
INSERT [dbo].[EBR_MST.PackingType] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (3, N'Tape and Reel per MP-5001', N'Tape and Reel per MP-5001', N'Admin@atmel.com', CAST(0x0000A5B4015CC4C9 AS DateTime), 0)
INSERT [dbo].[EBR_MST.PackingType] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (4, N'ESD Bag or Canister', N'ESD Bag or Canister', N'Admin@atmel.com', CAST(0x0000A5B4015CCB4A AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[EBR_MST.PackingType] OFF

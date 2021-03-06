USE [ACP_REPORTS]
GO
/****** Object:  Table [dbo].[EBR_MST.BuildReason]    Script Date: 9/24/2016 2:45:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EBR_MST.BuildReason](
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
SET IDENTITY_INSERT [dbo].[EBR_MST.BuildReason] ON 

INSERT [dbo].[EBR_MST.BuildReason] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (1, N'Eng Sample for Customer (Can''t be a Qual)', N'Eng Sample for Customer (Can''t be a Qual)', N'Admin@atmel.com', CAST(0x0000A5B301697B43 AS DateTime), 0)
INSERT [dbo].[EBR_MST.BuildReason] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (2, N'Eng Sample for Eval (Can''t be a Qual)', N'Eng Sample for Eval (Can''t be a Qual)', N'Admin@atmel.com', CAST(0x0000A5B301698546 AS DateTime), 0)
INSERT [dbo].[EBR_MST.BuildReason] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (3, N'New Assy Material/Process Qual', N'New Assy Material/Process Qual', N'Admin@atmel.com', CAST(0x0000A5B301698E9B AS DateTime), 0)
INSERT [dbo].[EBR_MST.BuildReason] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (4, N'New Test Vendor', N'New Test Vendor', N'Admin@atmel.com', CAST(0x0000A5B3016B19FC AS DateTime), 0)
INSERT [dbo].[EBR_MST.BuildReason] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (5, N'Fab Excursion', N'Fab Excursion', N'Admin@atmel.com', CAST(0x0000A5B3016B232F AS DateTime), 0)
INSERT [dbo].[EBR_MST.BuildReason] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (6, N'Fab Process Change', N'Fab Process Change', N'Admin@atmel.com', CAST(0x0000A5B3016B2D2E AS DateTime), 0)
INSERT [dbo].[EBR_MST.BuildReason] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (7, N'Customer Issue', N'Customer Issue', N'Admin@atmel.com', CAST(0x0000A5B3016B3592 AS DateTime), 0)
INSERT [dbo].[EBR_MST.BuildReason] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (8, N'New Device Revision', N'New Device Revision', N'Admin@atmel.com', CAST(0x0000A5B3016B3E0F AS DateTime), 0)
INSERT [dbo].[EBR_MST.BuildReason] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (9, N'DVS Build', N'DVS Build', N'Admin@atmel.com', CAST(0x0000A5B3016B4B5D AS DateTime), 1)
INSERT [dbo].[EBR_MST.BuildReason] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (10, N'NPI =RUN  QUAL LOT', N'NPI =RUN  QUAL LOT', N'Admin@atmel.com', CAST(0x0000A5B3016B531D AS DateTime), 0)
INSERT [dbo].[EBR_MST.BuildReason] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (11, N'NPI =RUN  ENG LOT', N'NPI =RUN  ENG LOT', N'Admin@atmel.com', CAST(0x0000A5B3016B5A51 AS DateTime), 0)
INSERT [dbo].[EBR_MST.BuildReason] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (12, N'NPI =RUN  PROD LOT', N'NPI =RUN  PROD LOT', N'Admin@atmel.com', CAST(0x0000A5B3016B6413 AS DateTime), 0)
INSERT [dbo].[EBR_MST.BuildReason] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (13, N'NPI=RUN Customer Sample', N'NPI=RUN Customer Sample', N'Admin@atmel.com', CAST(0x0000A5B3016B6C52 AS DateTime), 0)
INSERT [dbo].[EBR_MST.BuildReason] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (14, N'New Package Qual', N'New Package Qual', N'Admin@atmel.com', CAST(0x0000A5B3016B7342 AS DateTime), 0)
INSERT [dbo].[EBR_MST.BuildReason] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (15, N'ASM Qual Lot', N'ASM Qual Lot', N'Admin@atmel.com', CAST(0x0000A5B3016B7928 AS DateTime), 0)
INSERT [dbo].[EBR_MST.BuildReason] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (16, N'New Assy Vendor Qual', N'New Assy Vendor Qual', N'Admin@atmel.com', CAST(0x0000A5B3016B80CE AS DateTime), 0)
INSERT [dbo].[EBR_MST.BuildReason] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (17, N'Test Program Qualification', N'Test Program Qualification', N'Admin@atmel.com', CAST(0x0000A5B3016B88A6 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[EBR_MST.BuildReason] OFF

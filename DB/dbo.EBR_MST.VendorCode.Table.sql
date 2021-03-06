USE [ACP_REPORTS]
GO
/****** Object:  Table [dbo].[EBR_MST.VendorCode]    Script Date: 9/24/2016 2:45:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EBR_MST.VendorCode](
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
SET IDENTITY_INSERT [dbo].[EBR_MST.VendorCode] ON 

INSERT [dbo].[EBR_MST.VendorCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (1, N'A', N'A', N'Admin@atmel.com', CAST(0x0000A5B4016187A7 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (2, N'AA', N'AA', N'Admin@atmel.com', CAST(0x0000A5B401618EAD AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (3, N'AB', N'AB', N'Admin@atmel.com', CAST(0x0000A5B401619744 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (4, N'AC', N'AC', N'Admin@atmel.com', CAST(0x0000A5B401619C90 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (5, N'AD', N'AD', N'Admin@atmel.com', CAST(0x0000A5B40161A256 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (6, N'B', N'B', N'Admin@atmel.com', CAST(0x0000A5B40161A905 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (7, N'C', N'C', N'Admin@atmel.com', CAST(0x0000A5B40161AE93 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (8, N'E', N'E', N'Admin@atmel.com', CAST(0x0000A5B40161B2EC AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (9, N'F', N'F', N'Admin@atmel.com', CAST(0x0000A5B40161B957 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (10, N'H', N'H', N'Admin@atmel.com', CAST(0x0000A5B40161BCD1 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (11, N'J', N'J', N'Admin@atmel.com', CAST(0x0000A5B40161C68D AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (12, N'K', N'K', N'Admin@atmel.com', CAST(0x0000A5B40161CA18 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (13, N'L', N'L', N'Admin@atmel.com', CAST(0x0000A5B40161CE70 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (14, N'M', N'M', N'Admin@atmel.com', CAST(0x0000A5B40161D594 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (15, N'N', N'N', N'Admin@atmel.com', CAST(0x0000A5B40161D95C AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (16, N'P', N'P', N'Admin@atmel.com', CAST(0x0000A5B40161DEEF AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (17, N'R', N'R', N'Admin@atmel.com', CAST(0x0000A5B40161E4C6 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (18, N'W', N'W', N'Admin@atmel.com', CAST(0x0000A5B40161EB34 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (19, N'X', N'X', N'Admin@atmel.com', CAST(0x0000A5B40161F21D AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (20, N'Y', N'Y', N'Admin@atmel.com', CAST(0x0000A5B40161F88F AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (21, N'X', N'X', N'Admin@atmel.com', CAST(0x0000A5B40161FC46 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[EBR_MST.VendorCode] OFF

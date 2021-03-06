USE [ACP_REPORTS]
GO
/****** Object:  Table [dbo].[EBR_MST.MarkingInstruction]    Script Date: 9/24/2016 2:45:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EBR_MST.MarkingInstruction](
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
SET IDENTITY_INSERT [dbo].[EBR_MST.MarkingInstruction] ON 

INSERT [dbo].[EBR_MST.MarkingInstruction] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (1, N'As Shown Below', N'As Shown Below', N'Admin@atmel.com', CAST(0x0000A5B30174F29A AS DateTime), 0)
INSERT [dbo].[EBR_MST.MarkingInstruction] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (2, N'Mark per MA-5005 (SJO Only)', N'Mark per MA-5005 (SJO Only)', N'Admin@atmel.com', CAST(0x0000A5B301750A1D AS DateTime), 0)
INSERT [dbo].[EBR_MST.MarkingInstruction] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (3, N'Mark per Attached file', N'Mark per Attached file', N'Admin@atmel.com', CAST(0x0000A5B3017511BD AS DateTime), 0)
INSERT [dbo].[EBR_MST.MarkingInstruction] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (4, N'PER IMS PID (RFO/NTO)', N'PER IMS PID (RFO/NTO)', N'Admin@atmel.com', CAST(0x0000A5B3017517FB AS DateTime), 0)
INSERT [dbo].[EBR_MST.MarkingInstruction] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (5, N'As Shown Below & Serialize', N'As Shown Below & Serialize', N'Admin@atmel.com', CAST(0x0000A5B301751F7D AS DateTime), 0)
INSERT [dbo].[EBR_MST.MarkingInstruction] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (6, N'Standard CSO DV Marking', N'Standard CSO DV Marking', N'Admin@atmel.com', CAST(0x0000A5B3017527AB AS DateTime), 0)
INSERT [dbo].[EBR_MST.MarkingInstruction] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (7, N'Standard CSO DV & Serialize', N'Standard CSO DV & Serialize', N'Admin@atmel.com', CAST(0x0000A5B301752E5F AS DateTime), 0)
INSERT [dbo].[EBR_MST.MarkingInstruction] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (8, N'www.atmel-nantes.fr/topmarks ', N'www.atmel-nantes.fr/topmarks ', N'Admin@atmel.com', CAST(0x0000A5B301753AE0 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[EBR_MST.MarkingInstruction] OFF

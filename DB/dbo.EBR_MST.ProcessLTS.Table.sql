USE [ACP_REPORTS]
GO
/****** Object:  Table [dbo].[EBR_MST.ProcessLTS]    Script Date: 9/24/2016 2:45:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EBR_MST.ProcessLTS](
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
SET IDENTITY_INSERT [dbo].[EBR_MST.ProcessLTS] ON 

INSERT [dbo].[EBR_MST.ProcessLTS] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (1, N'ASM_Only', N'ASM_Only', N'Admin@atmel.com', CAST(0x0000A5B4015F2E9D AS DateTime), 0)
INSERT [dbo].[EBR_MST.ProcessLTS] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (2, N'ASM_TST', N'ASM_TST', N'Admin@atmel.com', CAST(0x0000A5B4015F3672 AS DateTime), 0)
INSERT [dbo].[EBR_MST.ProcessLTS] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (3, N'ASM_TST_TR', N'ASM_TST_TR', N'Admin@atmel.com', CAST(0x0000A5B4015F3E0A AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[EBR_MST.ProcessLTS] OFF

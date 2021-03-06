USE [ACP_REPORTS]
GO
/****** Object:  Table [dbo].[EBR_MST.PriorityOfAssemblyBuild]    Script Date: 9/24/2016 2:45:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EBR_MST.PriorityOfAssemblyBuild](
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
SET IDENTITY_INSERT [dbo].[EBR_MST.PriorityOfAssemblyBuild] ON 

INSERT [dbo].[EBR_MST.PriorityOfAssemblyBuild] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (1, N'FAST TRACK (ASSEMBLY ONLY-NO QUAL LOTS)', N'FAST TRACK (ASSEMBLY ONLY-NO QUAL LOTS)', N'Admin@atmel.com', CAST(0x0000A5B4015E053A AS DateTime), 0)
INSERT [dbo].[EBR_MST.PriorityOfAssemblyBuild] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (2, N'STANDARD CYCLE TIME', N'STANDARD CYCLE TIME', N'Admin@atmel.com', CAST(0x0000A5B4015E0EA0 AS DateTime), 0)
INSERT [dbo].[EBR_MST.PriorityOfAssemblyBuild] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (3, N'FAST TRACK (24 HOURS)(NO QUAL LOTS)', N'FAST TRACK (24 HOURS)(NO QUAL LOTS)', N'Admin@atmel.com', CAST(0x0000A5B4015E14AF AS DateTime), 0)
INSERT [dbo].[EBR_MST.PriorityOfAssemblyBuild] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (4, N'FAST TRACK (3 DAY)(NO QUAL LOTS)', N'FAST TRACK (3 DAY)(NO QUAL LOTS)', N'Admin@atmel.com', CAST(0x0000A5B4015E1AB2 AS DateTime), 0)
INSERT [dbo].[EBR_MST.PriorityOfAssemblyBuild] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (5, N'FAST TRACK (5 DAY) (NO QUAL LOTS)', N'FAST TRACK (5 DAY) (NO QUAL LOTS)', N'Admin@atmel.com', CAST(0x0000A5B4015E20EA AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[EBR_MST.PriorityOfAssemblyBuild] OFF

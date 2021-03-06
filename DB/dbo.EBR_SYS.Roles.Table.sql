USE [ACP_REPORTS]
GO
/****** Object:  Table [dbo].[EBR_SYS.Roles]    Script Date: 9/24/2016 2:45:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EBR_SYS.Roles](
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
SET IDENTITY_INSERT [dbo].[EBR_SYS.Roles] ON 

INSERT [dbo].[EBR_SYS.Roles] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (1, N'Admin', N'Administrators System', N'Admin@atmel.com', CAST(0x0000A5BD01599F24 AS DateTime), 0)
INSERT [dbo].[EBR_SYS.Roles] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (2, N'Planner', N'Planner App EBROnline', N'Admin@atmel.com', CAST(0x0000A5C800952218 AS DateTime), 0)
INSERT [dbo].[EBR_SYS.Roles] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (3, N'User', N'User in system EBROnline', N'Admin@atmel.com', CAST(0x0000A5C800952C30 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[EBR_SYS.Roles] OFF

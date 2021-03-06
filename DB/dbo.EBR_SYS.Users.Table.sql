USE [ACP_REPORTS]
GO
/****** Object:  Table [dbo].[EBR_SYS.Users]    Script Date: 9/24/2016 2:45:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EBR_SYS.Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[PasswordHash] [nvarchar](250) NOT NULL,
	[Salt] [nchar](250) NOT NULL,
	[RegistedDate] [datetime] NOT NULL,
	[IsLocked] [bit] NOT NULL,
	[LastUpdatedBy] [nvarchar](50) NOT NULL,
	[LastUpdate] [datetime] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Lastname] [nvarchar](50) NOT NULL,
	[Firstname] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NULL,
	[LastLoginDate] [datetime] NULL,
	[RoleId] [int] NOT NULL,
	[RecoverPass] [nvarchar](250) NULL,
	[IsComfiredEmail] [bit] NOT NULL,
	[Guid] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[EBR_SYS.Users] ON 

INSERT [dbo].[EBR_SYS.Users] ([Id], [Email], [PasswordHash], [Salt], [RegistedDate], [IsLocked], [LastUpdatedBy], [LastUpdate], [IsDeleted], [Lastname], [Firstname], [Phone], [LastLoginDate], [RoleId], [RecoverPass], [IsComfiredEmail], [Guid]) VALUES (2, N'Admin@atmel.com', N'PfA+hLqBkCgGid0x7pLcIg==', N'My1stC#MVCProject2015                                                                                                                                                                                                                                     ', CAST(0x0000A4F80102F58C AS DateTime), 0, N'MySelf', CAST(0x0000A51500EBF515 AS DateTime), 0, N'Computer', N'Adminstrator', N'0935769463', CAST(0x0000A60901682D03 AS DateTime), 1, NULL, 1, NULL)
INSERT [dbo].[EBR_SYS.Users] ([Id], [Email], [PasswordHash], [Salt], [RegistedDate], [IsLocked], [LastUpdatedBy], [LastUpdate], [IsDeleted], [Lastname], [Firstname], [Phone], [LastLoginDate], [RoleId], [RecoverPass], [IsComfiredEmail], [Guid]) VALUES (4, N'Planner@atmel.com', N'PfA+hLqBkCgGid0x7pLcIg==', N'My1stC#MVCProject2015                                                                                                                                                                                                                                     ', CAST(0x0000A4FB0035C132 AS DateTime), 0, N'MySelf', CAST(0x0000A5BF0149BAF6 AS DateTime), 0, N'Computer', N'Manager', N'009554235', CAST(0x0000A5DE016BBBA6 AS DateTime), 2, NULL, 1, NULL)
INSERT [dbo].[EBR_SYS.Users] ([Id], [Email], [PasswordHash], [Salt], [RegistedDate], [IsLocked], [LastUpdatedBy], [LastUpdate], [IsDeleted], [Lastname], [Firstname], [Phone], [LastLoginDate], [RoleId], [RecoverPass], [IsComfiredEmail], [Guid]) VALUES (13, N'User@atmel.com', N'PfA+hLqBkCgGid0x7pLcIg==', N'My1stC#MVCProject2015                                                                                                                                                                                                                                     ', CAST(0x0000A4FB00000000 AS DateTime), 0, N'MySeft', CAST(0x0000A5BF014A1A12 AS DateTime), 0, N'Computer', N'Requestor', N'0935769463', CAST(0x0000A6090168497A AS DateTime), 3, NULL, 1, NULL)
INSERT [dbo].[EBR_SYS.Users] ([Id], [Email], [PasswordHash], [Salt], [RegistedDate], [IsLocked], [LastUpdatedBy], [LastUpdate], [IsDeleted], [Lastname], [Firstname], [Phone], [LastLoginDate], [RoleId], [RecoverPass], [IsComfiredEmail], [Guid]) VALUES (16, N'tranthiencdsp@gmail.com', N'PfA+hLqBkCgGid0x7pLcIg==', N'My1stC#MVCProject2015                                                                                                                                                                                                                                     ', CAST(0x0000A62B00997431 AS DateTime), 0, N'MySelf', CAST(0x0000A62B00998EAC AS DateTime), 0, N'Tran Thuong', N'Thien', NULL, CAST(0x0000A62B0099E751 AS DateTime), 3, NULL, 1, N'cb5f1b6a-f823-4bdd-b69d-c6b391ae5f28-f153896e-e477-4ece-ba0f-3736a22871fc')
SET IDENTITY_INSERT [dbo].[EBR_SYS.Users] OFF
ALTER TABLE [dbo].[EBR_SYS.Users]  WITH CHECK ADD  CONSTRAINT [FK_SYS.Users_SYS.Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[EBR_SYS.Roles] ([Id])
GO
ALTER TABLE [dbo].[EBR_SYS.Users] CHECK CONSTRAINT [FK_SYS.Users_SYS.Roles]
GO

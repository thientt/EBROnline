USE [ACP_REPORTS]
GO

IF OBJECT_ID(N'[EBR_SYS.Users]', N'U') IS NOT NULL
BEGIN
	DROP TABLE [EBR_SYS.Users];
END

CREATE TABLE [dbo].[EBR_SYS.Users](
	[Id] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL,
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
	[Guid] [nvarchar](255) NULL)

ALTER TABLE [dbo].[EBR_SYS.Users]  WITH CHECK ADD  CONSTRAINT [FK_SYS.Users_SYS.Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[EBR_SYS.Roles] ([Id])
GO

ALTER TABLE [dbo].[EBR_SYS.Users] CHECK CONSTRAINT [FK_SYS.Users_SYS.Roles]
GO


USE [ACP_REPORTS]
GO

IF OBJECT_ID(N'EBR_MST.RevenueLocation', N'U') IS NOT NULL
BEGIN
	DROP TABLE [EBR_MST.RevenueLocation];
END

CREATE TABLE [dbo].[EBR_MST.RevenueLocation](
	[Id] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[LastUpdatedBy] [nvarchar](50) NOT NULL,
	[LastUpdate] [datetime] NOT NULL,
	[IsDeleted] [bit] NOT NULL)
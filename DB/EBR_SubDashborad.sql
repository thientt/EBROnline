USE [ACP_REPORTS]
GO

IF OBJECT_ID(N'EBR_SubDashboard', N'U') IS NOT NULL
BEGIN
	DROP TABLE [EBR_SubDashboard];
END

CREATE TABLE [dbo].[EBR_SubDashboard](
	[Id] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[DashBoardId] [int] NOT NULL,
	[MES_Lot_Number] [varchar](50) NOT NULL,
	[SAP_Batch_Lot_Number] [varchar](50) NOT NULL,
	[WaferQty] [float] NOT NULL,
	[BuildQty] [float] NOT NULL,
	[Comment] [varchar](255) )
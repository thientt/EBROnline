USE [ACP_REPORTS]
GO
/****** Object:  Table [dbo].[EBR_SubDashboard]    Script Date: 9/24/2016 2:45:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EBR_SubDashboard](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DashBoardId] [int] NOT NULL,
	[MES_Lot_Number] [varchar](50) NOT NULL,
	[SAP_Batch_Lot_Number] [varchar](50) NOT NULL,
	[WaferQty] [float] NOT NULL,
	[BuildQty] [float] NOT NULL,
	[Comment] [varchar](255) NULL,
	[StackDieId] [nvarchar](50) NULL,
	[StackDiePMPN] [nvarchar](50) NULL,
	[StackDieQty] [float] NOT NULL,
	[StackDieWaferNumbers] [nvarchar](50) NULL,
 CONSTRAINT [PK__EBR_SubD__3214EC0748892B7F] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[EBR_SubDashboard] ON 

INSERT [dbo].[EBR_SubDashboard] ([Id], [DashBoardId], [MES_Lot_Number], [SAP_Batch_Lot_Number], [WaferQty], [BuildQty], [Comment], [StackDieId], [StackDiePMPN], [StackDieQty], [StackDieWaferNumbers]) VALUES (2, 2, N'13', N'q', 242, 234, N'w53535', NULL, NULL, 0, NULL)
INSERT [dbo].[EBR_SubDashboard] ([Id], [DashBoardId], [MES_Lot_Number], [SAP_Batch_Lot_Number], [WaferQty], [BuildQty], [Comment], [StackDieId], [StackDiePMPN], [StackDieQty], [StackDieWaferNumbers]) VALUES (3, 2, N'24', N'et', 234, 24, N'y8e t', NULL, NULL, 0, NULL)
INSERT [dbo].[EBR_SubDashboard] ([Id], [DashBoardId], [MES_Lot_Number], [SAP_Batch_Lot_Number], [WaferQty], [BuildQty], [Comment], [StackDieId], [StackDiePMPN], [StackDieQty], [StackDieWaferNumbers]) VALUES (4, 4, N'232', N'qe', 234, 24, N'242424', NULL, NULL, 0, NULL)
INSERT [dbo].[EBR_SubDashboard] ([Id], [DashBoardId], [MES_Lot_Number], [SAP_Batch_Lot_Number], [WaferQty], [BuildQty], [Comment], [StackDieId], [StackDiePMPN], [StackDieQty], [StackDieWaferNumbers]) VALUES (5, 5, N'123', N'123', 123, 123, N'123', NULL, NULL, 0, NULL)
INSERT [dbo].[EBR_SubDashboard] ([Id], [DashBoardId], [MES_Lot_Number], [SAP_Batch_Lot_Number], [WaferQty], [BuildQty], [Comment], [StackDieId], [StackDiePMPN], [StackDieQty], [StackDieWaferNumbers]) VALUES (6, 5, N'124', N'124', 124, 124, N'124', NULL, NULL, 0, NULL)
INSERT [dbo].[EBR_SubDashboard] ([Id], [DashBoardId], [MES_Lot_Number], [SAP_Batch_Lot_Number], [WaferQty], [BuildQty], [Comment], [StackDieId], [StackDiePMPN], [StackDieQty], [StackDieWaferNumbers]) VALUES (7, 5, N'125', N'125', 125, 125, N'125', NULL, NULL, 0, NULL)
INSERT [dbo].[EBR_SubDashboard] ([Id], [DashBoardId], [MES_Lot_Number], [SAP_Batch_Lot_Number], [WaferQty], [BuildQty], [Comment], [StackDieId], [StackDiePMPN], [StackDieQty], [StackDieWaferNumbers]) VALUES (8, 6, N'MES Lot Number', N'SAP Batch Lot Number', 23, 23, N'comment 1', N'Stack Die ID', N'Stack Die PMPN', 24, N'Stack Die Wafer Numbers')
INSERT [dbo].[EBR_SubDashboard] ([Id], [DashBoardId], [MES_Lot_Number], [SAP_Batch_Lot_Number], [WaferQty], [BuildQty], [Comment], [StackDieId], [StackDiePMPN], [StackDieQty], [StackDieWaferNumbers]) VALUES (9, 6, N'23', N'23', 23, 23, N'comment 2', N'Stack Die ID 01', N'Stack Die PMPN 01', 23, N'Stack Die Wafer Numbers 01')
SET IDENTITY_INSERT [dbo].[EBR_SubDashboard] OFF
ALTER TABLE [dbo].[EBR_SubDashboard]  WITH CHECK ADD  CONSTRAINT [FK_EBR_SubDashboard_EBR_Dashboard] FOREIGN KEY([DashBoardId])
REFERENCES [dbo].[EBR_Dashboard] ([Id])
GO
ALTER TABLE [dbo].[EBR_SubDashboard] CHECK CONSTRAINT [FK_EBR_SubDashboard_EBR_Dashboard]
GO

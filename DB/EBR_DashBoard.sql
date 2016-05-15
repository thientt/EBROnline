USE [ACP_REPORTS]
GO

IF OBJECT_ID(N'EBR_Dashboard', N'U') IS NOT NULL
BEGIN
	DROP TABLE [EBR_Dashboard]
END

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[EBR_Dashboard](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Device] [varchar](50) NOT NULL,
	[Rev] [varchar](50) NOT NULL,
	[FABDieRevision] [varchar](50) NULL,
	[PMPN] [varchar](50) NULL,
	[AMPN] [varchar](50) NOT NULL,
	[TMPN] [varchar](50) NOT NULL,
	[FMPN] [varchar](50) NOT NULL,
	[CPN_SAP_Material] [varchar](1) NOT NULL,
	[PackageId] [int] NOT NULL,
	[PackageSize] [varchar](50) NOT NULL,
	[Leads] [varchar](50) NOT NULL,
	[Speed] [varchar](50) NOT NULL,
	[EABI_EBR_Revision] [varchar](50) NOT NULL,
	[WaferSizeId] [int] NOT NULL,
	[CurrentWaferThichness] [varchar](50) NOT NULL,
	[InternalDevice] [varchar](50) NOT NULL,
	[FabCodeId] [int] NOT NULL,
	[Power_Voltage] [varchar](50) NOT NULL,
	[DieBlankId] [int] NOT NULL,
	[AssemblyLocationnId] [int] NOT NULL,
	[FGLocationId] [int] NOT NULL,
	[AssemblyFlow] [varchar](1) NULL,
	[PackageTypeId] [int] NOT NULL,
	[TopSideMarkingId] [int] NOT NULL,
	[MRL] [varchar](50) NOT NULL,
	[NameOfMarkingFile] [varchar](255) NULL,
	[RequiresSepecialMark] [bit] NULL,
	[RequiresAssEngrInput] [bit] NULL,
	[MarkingCodeId] [int] NOT NULL,
	[Pin1Marking] [varchar](1) NOT NULL,
	[TopLine] [varchar](50) NOT NULL,
	[2ndLine] [varchar](50) NOT NULL,
	[3rdLine] [varchar](50) NOT NULL,
	[4thLine] [varchar](50) NOT NULL,
	[5thLine] [varchar](50) NOT NULL,
	[6thLine] [varchar](50) NOT NULL,
	[ShipFinishedProductToId] [int] NOT NULL,
	[AttentionFinished] [varchar](50) NOT NULL,
	[ShipRejectedPartToId] [int] NOT NULL,
	[AttentionRejected] [varchar](50) NOT NULL,
	[ReturnWaferToId] [int] NULL,
	[VendorContactId] [int] NOT NULL,
	[VendorCodeId] [int] NOT NULL,
	[PurposeOfBuildId] [int] NOT NULL,
	[LotOwnerId] [int] NOT NULL,
	[RequestCycleTimeId] [int] NOT NULL,
	[PKGProcessId] [int] NOT NULL,
	[QualityLevelId] [int] NOT NULL,
	[RevenueLocationId] [int] NOT NULL,
	[BondDiagramAttached] [bit] NULL,
	[ScrapExcessDie_Wafer] [bit] NULL,
	[UV_Erase] [bit] NULL,
	[DieCoat] [bit] NULL,
	[WireMaterialId] [int] NOT NULL,
	[ProcessLTSID] [int] NOT NULL,
	[ForecastMaterial] [bit] NULL,
	[BondDiagram] [varchar](50) NULL,
	[BondDiagramRev] [varchar](50) NOT NULL,
	[EngineerTeam] [varchar](1024) NOT NULL,
	[TestLocationId] [int] NOT NULL,
	[ProbeStatusId] [int] NOT NULL,
	[PackageTestTypeId] [int] NULL,
	[TestProgram] [varchar](1) NOT NULL,
	[TestProgamAvailable] [bit] NULL,
	[CommentAvaliable] [varchar](50) NULL,
	[Test_Sepecial_Instruction] [varchar](1024) NOT NULL,
	[RequestedBy] [varchar](50) NOT NULL,
	[EmailAddressId] [int] NOT NULL,
	[Phone] [varchar](1) NOT NULL,
	[RequesterLocationId] [int] NOT NULL,
	[BusinessUnit] [varchar](1) NOT NULL,
	[ApprovingManager] [varchar](50) NOT NULL,
	[ManagerEmailId] [int] NOT NULL,
	[TotalCost] [decimal](18, 0) NOT NULL,
	[RequestedShipDate] [datetime] NOT NULL,
	[RequiresTestPgmApproval] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[EBR_Dashboard] ADD  DEFAULT ((0)) FOR [RequiresSepecialMark]
GO

ALTER TABLE [dbo].[EBR_Dashboard] ADD  DEFAULT ((0)) FOR [RequiresAssEngrInput]
GO

ALTER TABLE [dbo].[EBR_Dashboard] ADD  DEFAULT ((0)) FOR [BondDiagramAttached]
GO

ALTER TABLE [dbo].[EBR_Dashboard] ADD  DEFAULT ((0)) FOR [ScrapExcessDie_Wafer]
GO

ALTER TABLE [dbo].[EBR_Dashboard] ADD  DEFAULT ((0)) FOR [UV_Erase]
GO

ALTER TABLE [dbo].[EBR_Dashboard] ADD  DEFAULT ((0)) FOR [DieCoat]
GO

ALTER TABLE [dbo].[EBR_Dashboard] ADD  DEFAULT ((0)) FOR [ForecastMaterial]
GO

ALTER TABLE [dbo].[EBR_Dashboard] ADD  DEFAULT ((0)) FOR [TestProgamAvailable]
GO

ALTER TABLE [dbo].[EBR_Dashboard] ADD  DEFAULT ((0)) FOR [RequiresTestPgmApproval]
GO

ALTER TABLE [dbo].[EBR_Dashboard]  WITH CHECK ADD  CONSTRAINT [FK_EBR_Dashboard_EBR_MST.AssemblyLocation] FOREIGN KEY([AssemblyLocationnId])
REFERENCES [dbo].[EBR_MST.AssemblyLocation] ([Id])
GO

ALTER TABLE [dbo].[EBR_Dashboard] CHECK CONSTRAINT [FK_EBR_Dashboard_EBR_MST.AssemblyLocation]
GO

ALTER TABLE [dbo].[EBR_Dashboard]  WITH CHECK ADD  CONSTRAINT [FK_EBR_Dashboard_EBR_MST.BuildReason] FOREIGN KEY([PurposeOfBuildId])
REFERENCES [dbo].[EBR_MST.BuildReason] ([Id])
GO

ALTER TABLE [dbo].[EBR_Dashboard] CHECK CONSTRAINT [FK_EBR_Dashboard_EBR_MST.BuildReason]
GO

ALTER TABLE [dbo].[EBR_Dashboard]  WITH CHECK ADD  CONSTRAINT [FK_EBR_Dashboard_EBR_MST.DieBank] FOREIGN KEY([DieBlankId])
REFERENCES [dbo].[EBR_MST.DieBank] ([Id])
GO

ALTER TABLE [dbo].[EBR_Dashboard] CHECK CONSTRAINT [FK_EBR_Dashboard_EBR_MST.DieBank]
GO

ALTER TABLE [dbo].[EBR_Dashboard]  WITH CHECK ADD  CONSTRAINT [FK_EBR_Dashboard_EBR_MST.EmailAddress] FOREIGN KEY([EmailAddressId])
REFERENCES [dbo].[EBR_MST.EmailAddress] ([Id])
GO

ALTER TABLE [dbo].[EBR_Dashboard] CHECK CONSTRAINT [FK_EBR_Dashboard_EBR_MST.EmailAddress]
GO

ALTER TABLE [dbo].[EBR_Dashboard]  WITH CHECK ADD  CONSTRAINT [FK_EBR_Dashboard_EBR_MST.EmailAddress1] FOREIGN KEY([ManagerEmailId])
REFERENCES [dbo].[EBR_MST.EmailAddress] ([Id])
GO

ALTER TABLE [dbo].[EBR_Dashboard] CHECK CONSTRAINT [FK_EBR_Dashboard_EBR_MST.EmailAddress1]
GO

ALTER TABLE [dbo].[EBR_Dashboard]  WITH CHECK ADD  CONSTRAINT [FK_EBR_Dashboard_EBR_MST.FabCode] FOREIGN KEY([FabCodeId])
REFERENCES [dbo].[EBR_MST.FabCode] ([Id])
GO

ALTER TABLE [dbo].[EBR_Dashboard] CHECK CONSTRAINT [FK_EBR_Dashboard_EBR_MST.FabCode]
GO

ALTER TABLE [dbo].[EBR_Dashboard]  WITH CHECK ADD  CONSTRAINT [FK_EBR_Dashboard_EBR_MST.FGLocation] FOREIGN KEY([ShipRejectedPartToId])
REFERENCES [dbo].[EBR_MST.FGLocation] ([Id])
GO

ALTER TABLE [dbo].[EBR_Dashboard] CHECK CONSTRAINT [FK_EBR_Dashboard_EBR_MST.FGLocation]
GO

ALTER TABLE [dbo].[EBR_Dashboard]  WITH CHECK ADD  CONSTRAINT [FK_EBR_Dashboard_EBR_MST.FGLocation1] FOREIGN KEY([FGLocationId])
REFERENCES [dbo].[EBR_MST.FGLocation] ([Id])
GO

ALTER TABLE [dbo].[EBR_Dashboard] CHECK CONSTRAINT [FK_EBR_Dashboard_EBR_MST.FGLocation1]
GO

ALTER TABLE [dbo].[EBR_Dashboard]  WITH CHECK ADD  CONSTRAINT [FK_EBR_Dashboard_EBR_MST.FGLocation2] FOREIGN KEY([ShipFinishedProductToId])
REFERENCES [dbo].[EBR_MST.FGLocation] ([Id])
GO

ALTER TABLE [dbo].[EBR_Dashboard] CHECK CONSTRAINT [FK_EBR_Dashboard_EBR_MST.FGLocation2]
GO

ALTER TABLE [dbo].[EBR_Dashboard]  WITH CHECK ADD  CONSTRAINT [FK_EBR_Dashboard_EBR_MST.FGLocation3] FOREIGN KEY([ReturnWaferToId])
REFERENCES [dbo].[EBR_MST.FGLocation] ([Id])
GO

ALTER TABLE [dbo].[EBR_Dashboard] CHECK CONSTRAINT [FK_EBR_Dashboard_EBR_MST.FGLocation3]
GO

ALTER TABLE [dbo].[EBR_Dashboard]  WITH CHECK ADD  CONSTRAINT [FK_EBR_Dashboard_EBR_MST.FGLocation4] FOREIGN KEY([TestLocationId])
REFERENCES [dbo].[EBR_MST.FGLocation] ([Id])
GO

ALTER TABLE [dbo].[EBR_Dashboard] CHECK CONSTRAINT [FK_EBR_Dashboard_EBR_MST.FGLocation4]
GO

ALTER TABLE [dbo].[EBR_Dashboard]  WITH CHECK ADD  CONSTRAINT [FK_EBR_Dashboard_EBR_MST.MarkingInstruction] FOREIGN KEY([TopSideMarkingId])
REFERENCES [dbo].[EBR_MST.MarkingInstruction] ([Id])
GO

ALTER TABLE [dbo].[EBR_Dashboard] CHECK CONSTRAINT [FK_EBR_Dashboard_EBR_MST.MarkingInstruction]
GO

ALTER TABLE [dbo].[EBR_Dashboard]  WITH CHECK ADD  CONSTRAINT [FK_EBR_Dashboard_EBR_MST.MarkingSL] FOREIGN KEY([MarkingCodeId])
REFERENCES [dbo].[EBR_MST.MarkingSL] ([Id])
GO

ALTER TABLE [dbo].[EBR_Dashboard] CHECK CONSTRAINT [FK_EBR_Dashboard_EBR_MST.MarkingSL]
GO

ALTER TABLE [dbo].[EBR_Dashboard]  WITH CHECK ADD  CONSTRAINT [FK_EBR_Dashboard_EBR_MST.Owner] FOREIGN KEY([LotOwnerId])
REFERENCES [dbo].[EBR_MST.Owner] ([Id])
GO

ALTER TABLE [dbo].[EBR_Dashboard] CHECK CONSTRAINT [FK_EBR_Dashboard_EBR_MST.Owner]
GO

ALTER TABLE [dbo].[EBR_Dashboard]  WITH CHECK ADD  CONSTRAINT [FK_EBR_Dashboard_EBR_MST.Package] FOREIGN KEY([PackageId])
REFERENCES [dbo].[EBR_MST.Package] ([Id])
GO

ALTER TABLE [dbo].[EBR_Dashboard] CHECK CONSTRAINT [FK_EBR_Dashboard_EBR_MST.Package]
GO

ALTER TABLE [dbo].[EBR_Dashboard]  WITH CHECK ADD  CONSTRAINT [FK_EBR_Dashboard_EBR_MST.PackageTestType] FOREIGN KEY([PackageTestTypeId])
REFERENCES [dbo].[EBR_MST.PackageTestType] ([Id])
GO

ALTER TABLE [dbo].[EBR_Dashboard] CHECK CONSTRAINT [FK_EBR_Dashboard_EBR_MST.PackageTestType]
GO

ALTER TABLE [dbo].[EBR_Dashboard]  WITH CHECK ADD  CONSTRAINT [FK_EBR_Dashboard_EBR_MST.PackingType] FOREIGN KEY([PackageTypeId])
REFERENCES [dbo].[EBR_MST.PackingType] ([Id])
GO

ALTER TABLE [dbo].[EBR_Dashboard] CHECK CONSTRAINT [FK_EBR_Dashboard_EBR_MST.PackingType]
GO

ALTER TABLE [dbo].[EBR_Dashboard]  WITH CHECK ADD  CONSTRAINT [FK_EBR_Dashboard_EBR_MST.PKGProcessType] FOREIGN KEY([PKGProcessId])
REFERENCES [dbo].[EBR_MST.PKGProcessType] ([Id])
GO

ALTER TABLE [dbo].[EBR_Dashboard] CHECK CONSTRAINT [FK_EBR_Dashboard_EBR_MST.PKGProcessType]
GO

ALTER TABLE [dbo].[EBR_Dashboard]  WITH CHECK ADD  CONSTRAINT [FK_EBR_Dashboard_EBR_MST.PriorityOfAssemblyBuild] FOREIGN KEY([RequestCycleTimeId])
REFERENCES [dbo].[EBR_MST.PriorityOfAssemblyBuild] ([Id])
GO

ALTER TABLE [dbo].[EBR_Dashboard] CHECK CONSTRAINT [FK_EBR_Dashboard_EBR_MST.PriorityOfAssemblyBuild]
GO

ALTER TABLE [dbo].[EBR_Dashboard]  WITH CHECK ADD  CONSTRAINT [FK_EBR_Dashboard_EBR_MST.ProbeStatus] FOREIGN KEY([ProbeStatusId])
REFERENCES [dbo].[EBR_MST.ProbeStatus] ([Id])
GO

ALTER TABLE [dbo].[EBR_Dashboard] CHECK CONSTRAINT [FK_EBR_Dashboard_EBR_MST.ProbeStatus]
GO

ALTER TABLE [dbo].[EBR_Dashboard]  WITH CHECK ADD  CONSTRAINT [FK_EBR_Dashboard_EBR_MST.ProcessLTS] FOREIGN KEY([ProcessLTSID])
REFERENCES [dbo].[EBR_MST.ProcessLTS] ([Id])
GO

ALTER TABLE [dbo].[EBR_Dashboard] CHECK CONSTRAINT [FK_EBR_Dashboard_EBR_MST.ProcessLTS]
GO

ALTER TABLE [dbo].[EBR_Dashboard]  WITH CHECK ADD  CONSTRAINT [FK_EBR_Dashboard_EBR_MST.QualityLevel] FOREIGN KEY([QualityLevelId])
REFERENCES [dbo].[EBR_MST.QualityLevel] ([Id])
GO

ALTER TABLE [dbo].[EBR_Dashboard] CHECK CONSTRAINT [FK_EBR_Dashboard_EBR_MST.QualityLevel]
GO

ALTER TABLE [dbo].[EBR_Dashboard]  WITH CHECK ADD  CONSTRAINT [FK_EBR_Dashboard_EBR_MST.RequesterLocation] FOREIGN KEY([RequesterLocationId])
REFERENCES [dbo].[EBR_MST.RequesterLocation] ([Id])
GO

ALTER TABLE [dbo].[EBR_Dashboard] CHECK CONSTRAINT [FK_EBR_Dashboard_EBR_MST.RequesterLocation]
GO

ALTER TABLE [dbo].[EBR_Dashboard]  WITH CHECK ADD  CONSTRAINT [FK_EBR_Dashboard_EBR_MST.RevenueLocation] FOREIGN KEY([RevenueLocationId])
REFERENCES [dbo].[EBR_MST.RevenueLocation] ([Id])
GO

ALTER TABLE [dbo].[EBR_Dashboard] CHECK CONSTRAINT [FK_EBR_Dashboard_EBR_MST.RevenueLocation]
GO

ALTER TABLE [dbo].[EBR_Dashboard]  WITH CHECK ADD  CONSTRAINT [FK_EBR_Dashboard_EBR_MST.VendorCode] FOREIGN KEY([VendorCodeId])
REFERENCES [dbo].[EBR_MST.VendorCode] ([Id])
GO

ALTER TABLE [dbo].[EBR_Dashboard] CHECK CONSTRAINT [FK_EBR_Dashboard_EBR_MST.VendorCode]
GO

ALTER TABLE [dbo].[EBR_Dashboard]  WITH CHECK ADD  CONSTRAINT [FK_EBR_Dashboard_EBR_MST.VendorContact] FOREIGN KEY([VendorContactId])
REFERENCES [dbo].[EBR_MST.VendorContact] ([Id])
GO

ALTER TABLE [dbo].[EBR_Dashboard] CHECK CONSTRAINT [FK_EBR_Dashboard_EBR_MST.VendorContact]
GO

ALTER TABLE [dbo].[EBR_Dashboard]  WITH CHECK ADD  CONSTRAINT [FK_EBR_Dashboard_EBR_MST.WaferSize] FOREIGN KEY([WaferSizeId])
REFERENCES [dbo].[EBR_MST.WaferSize] ([Id])
GO

ALTER TABLE [dbo].[EBR_Dashboard] CHECK CONSTRAINT [FK_EBR_Dashboard_EBR_MST.WaferSize]
GO

ALTER TABLE [dbo].[EBR_Dashboard]  WITH CHECK ADD  CONSTRAINT [FK_EBR_Dashboard_EBR_MST.WireMaterial] FOREIGN KEY([WireMaterialId])
REFERENCES [dbo].[EBR_MST.WireMaterial] ([Id])
GO

ALTER TABLE [dbo].[EBR_Dashboard] CHECK CONSTRAINT [FK_EBR_Dashboard_EBR_MST.WireMaterial]
GO


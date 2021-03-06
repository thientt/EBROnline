USE [ACP_REPORTS]
GO
/****** Object:  Table [dbo].[EBR_Dashboard]    Script Date: 9/24/2016 2:45:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EBR_Dashboard](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Device] [varchar](50) NULL,
	[Rev] [varchar](50) NULL,
	[FABDieRevision] [varchar](50) NULL,
	[PMPN] [varchar](50) NULL,
	[AMPN] [varchar](50) NULL,
	[TMPN] [varchar](50) NULL,
	[FMPN] [varchar](50) NULL,
	[CPN_SAP_Material] [varchar](50) NULL,
	[PackageId] [int] NULL,
	[PackageSize] [varchar](50) NULL,
	[Leads] [varchar](50) NULL,
	[Speed] [varchar](50) NULL,
	[EABI_EBR_Revision] [varchar](50) NULL,
	[WaferSizeId] [int] NULL,
	[CurrentWaferThichness] [varchar](50) NULL,
	[InternalDevice] [varchar](50) NULL,
	[FabCodeId] [int] NULL,
	[Power_Voltage] [varchar](50) NULL,
	[DieBlankId] [int] NULL,
	[AssemblyLocationnId] [int] NULL,
	[FGLocationId] [int] NULL,
	[AssemblyFlow] [varchar](50) NULL,
	[PackageTypeId] [int] NULL,
	[TopSideMarkingId] [int] NULL,
	[MRL] [varchar](50) NULL,
	[NameOfMarkingFile] [varchar](255) NULL,
	[RequiresSepecialMark] [bit] NULL,
	[RequiresAssEngrInput] [bit] NULL,
	[MarkingCodeId] [int] NULL,
	[Pin1Marking] [varchar](50) NULL,
	[TopLine] [varchar](50) NULL,
	[2ndLine] [varchar](50) NULL,
	[3rdLine] [varchar](50) NULL,
	[4thLine] [varchar](50) NULL,
	[5thLine] [varchar](50) NULL,
	[6thLine] [varchar](50) NULL,
	[ShipFinishedProductToId] [int] NULL,
	[AttentionFinished] [varchar](50) NULL,
	[ShipRejectedPartToId] [int] NULL,
	[AttentionRejected] [varchar](50) NULL,
	[ReturnWaferToId] [int] NULL,
	[VendorContactId] [int] NULL,
	[VendorCodeId] [int] NULL,
	[PurposeOfBuildId] [int] NULL,
	[LotOwnerId] [int] NULL,
	[RequestCycleTimeId] [int] NULL,
	[PKGProcessId] [int] NULL,
	[QualityLevelId] [int] NULL,
	[RevenueLocationId] [int] NULL,
	[BondDiagramAttached] [bit] NULL,
	[ScrapExcessDie_Wafer] [bit] NULL,
	[UV_Erase] [bit] NULL,
	[DieCoat] [bit] NULL,
	[WireMaterialId] [int] NULL,
	[ProcessLTSID] [int] NULL,
	[ForecastMaterial] [bit] NULL,
	[BondDiagram] [varchar](50) NULL,
	[BondDiagramRev] [varchar](50) NULL,
	[EngineerTeam] [varchar](1024) NULL,
	[TestLocationId] [int] NULL,
	[ProbeStatusId] [int] NULL,
	[PackageTestTypeId] [int] NULL,
	[TestProgram] [varchar](50) NULL,
	[TestProgamAvailable] [bit] NULL,
	[CommentAvaliable] [varchar](50) NULL,
	[Test_Sepecial_Instruction] [varchar](1024) NULL,
	[RequestedBy] [varchar](50) NULL,
	[EmailAddressId] [int] NULL,
	[Phone] [varchar](50) NULL,
	[RequesterLocationId] [int] NULL,
	[BusinessUnit] [varchar](50) NULL,
	[ApprovingManager] [varchar](50) NULL,
	[ManagerEmailId] [int] NULL,
	[TotalCost] [decimal](18, 0) NULL,
	[RequestedShipDate] [datetime] NULL,
	[RequiresTestPgmApproval] [bit] NULL,
	[IsDeleted] [bit] NOT NULL,
	[LastUpdatedBy] [varchar](50) NOT NULL,
	[LastUpdated] [datetime] NOT NULL,
	[StatusType] [tinyint] NOT NULL,
	[NPILot] [bit] NULL,
	[IsCompleted] [bit] NULL,
 CONSTRAINT [PK__EBR_Dash__3214EC071389C3A5] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[EBR_Dashboard] ON 

INSERT [dbo].[EBR_Dashboard] ([Id], [Device], [Rev], [FABDieRevision], [PMPN], [AMPN], [TMPN], [FMPN], [CPN_SAP_Material], [PackageId], [PackageSize], [Leads], [Speed], [EABI_EBR_Revision], [WaferSizeId], [CurrentWaferThichness], [InternalDevice], [FabCodeId], [Power_Voltage], [DieBlankId], [AssemblyLocationnId], [FGLocationId], [AssemblyFlow], [PackageTypeId], [TopSideMarkingId], [MRL], [NameOfMarkingFile], [RequiresSepecialMark], [RequiresAssEngrInput], [MarkingCodeId], [Pin1Marking], [TopLine], [2ndLine], [3rdLine], [4thLine], [5thLine], [6thLine], [ShipFinishedProductToId], [AttentionFinished], [ShipRejectedPartToId], [AttentionRejected], [ReturnWaferToId], [VendorContactId], [VendorCodeId], [PurposeOfBuildId], [LotOwnerId], [RequestCycleTimeId], [PKGProcessId], [QualityLevelId], [RevenueLocationId], [BondDiagramAttached], [ScrapExcessDie_Wafer], [UV_Erase], [DieCoat], [WireMaterialId], [ProcessLTSID], [ForecastMaterial], [BondDiagram], [BondDiagramRev], [EngineerTeam], [TestLocationId], [ProbeStatusId], [PackageTestTypeId], [TestProgram], [TestProgamAvailable], [CommentAvaliable], [Test_Sepecial_Instruction], [RequestedBy], [EmailAddressId], [Phone], [RequesterLocationId], [BusinessUnit], [ApprovingManager], [ManagerEmailId], [TotalCost], [RequestedShipDate], [RequiresTestPgmApproval], [IsDeleted], [LastUpdatedBy], [LastUpdated], [StatusType], [NPILot], [IsCompleted]) VALUES (2, N'Device01', N'Rev 02', N'Revision01', N'Test1', N'Test1', N'Test1', N'Test1', N'Test1', 3, N'Test1', N'Test1', N'Test1', N'Test1', 2, N'Test1', N'Test1', 2, N'Test1', 4, 5, 6, N'Test1', 1, 2, N'Test1', N'Test1', 1, 1, 3, N'Test1', N'Test1', N'Test1', N'Test1', N'Test1', N'Test1', N'Test1', 3, N'Test1', 17, N'Test1', 5, 4, 4, 4, 2, 3, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, N'Test1', N'Test1', N'Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1Test1', 2, 2, 4, N'Test1', 0, N'Test1', N'sdgjhsuifgsTest1Test1Test1Test1Test1', N'User@atmel.com', 4, N'0935769463', 2, N'Test1', N'Test1', 4, CAST(10 AS Decimal(18, 0)), CAST(0x0000A5BC00000000 AS DateTime), 0, 1, N'Planner@atmel.com', CAST(0x0000A5C801040EBC AS DateTime), 5, 1, 1)
INSERT [dbo].[EBR_Dashboard] ([Id], [Device], [Rev], [FABDieRevision], [PMPN], [AMPN], [TMPN], [FMPN], [CPN_SAP_Material], [PackageId], [PackageSize], [Leads], [Speed], [EABI_EBR_Revision], [WaferSizeId], [CurrentWaferThichness], [InternalDevice], [FabCodeId], [Power_Voltage], [DieBlankId], [AssemblyLocationnId], [FGLocationId], [AssemblyFlow], [PackageTypeId], [TopSideMarkingId], [MRL], [NameOfMarkingFile], [RequiresSepecialMark], [RequiresAssEngrInput], [MarkingCodeId], [Pin1Marking], [TopLine], [2ndLine], [3rdLine], [4thLine], [5thLine], [6thLine], [ShipFinishedProductToId], [AttentionFinished], [ShipRejectedPartToId], [AttentionRejected], [ReturnWaferToId], [VendorContactId], [VendorCodeId], [PurposeOfBuildId], [LotOwnerId], [RequestCycleTimeId], [PKGProcessId], [QualityLevelId], [RevenueLocationId], [BondDiagramAttached], [ScrapExcessDie_Wafer], [UV_Erase], [DieCoat], [WireMaterialId], [ProcessLTSID], [ForecastMaterial], [BondDiagram], [BondDiagramRev], [EngineerTeam], [TestLocationId], [ProbeStatusId], [PackageTestTypeId], [TestProgram], [TestProgamAvailable], [CommentAvaliable], [Test_Sepecial_Instruction], [RequestedBy], [EmailAddressId], [Phone], [RequesterLocationId], [BusinessUnit], [ApprovingManager], [ManagerEmailId], [TotalCost], [RequestedShipDate], [RequiresTestPgmApproval], [IsDeleted], [LastUpdatedBy], [LastUpdated], [StatusType], [NPILot], [IsCompleted]) VALUES (3, N'Test1', N'Rev02', N'Test1', N'Test1', N'Test1', N'Test1', N'Test1', N'Test1', 4, N'Test1', N'Test1', N'Test1', N'Test1', 1, N'Test1', N'Test1', 3, N'Test1', 3, 4, 2, N'Test1', 3, 2, N'Test1', N'Test1', 1, 1, 2, N'Test1', N'Test1', N'Test1', N'Test1', N'Test1', N'Test1', N'Test1', 3, N'Test1', 4, N'Test1', 16, 13, 13, 3, 4, 3, 6, 3, 2, 1, 0, 1, 1, 1, 3, 0, N'Test1', N'Test1', NULL, 3, 4, 2, N'Test1', 1, N'Test1', NULL, N'User@atmel.com', 15, N'Test1', 4, N'Test1', N'Test1', 15, CAST(12 AS Decimal(18, 0)), CAST(0x0000A5C300000000 AS DateTime), 1, 0, N'User@atmel.com', CAST(0x0000A5C9016B51BD AS DateTime), 2, 1, 1)
INSERT [dbo].[EBR_Dashboard] ([Id], [Device], [Rev], [FABDieRevision], [PMPN], [AMPN], [TMPN], [FMPN], [CPN_SAP_Material], [PackageId], [PackageSize], [Leads], [Speed], [EABI_EBR_Revision], [WaferSizeId], [CurrentWaferThichness], [InternalDevice], [FabCodeId], [Power_Voltage], [DieBlankId], [AssemblyLocationnId], [FGLocationId], [AssemblyFlow], [PackageTypeId], [TopSideMarkingId], [MRL], [NameOfMarkingFile], [RequiresSepecialMark], [RequiresAssEngrInput], [MarkingCodeId], [Pin1Marking], [TopLine], [2ndLine], [3rdLine], [4thLine], [5thLine], [6thLine], [ShipFinishedProductToId], [AttentionFinished], [ShipRejectedPartToId], [AttentionRejected], [ReturnWaferToId], [VendorContactId], [VendorCodeId], [PurposeOfBuildId], [LotOwnerId], [RequestCycleTimeId], [PKGProcessId], [QualityLevelId], [RevenueLocationId], [BondDiagramAttached], [ScrapExcessDie_Wafer], [UV_Erase], [DieCoat], [WireMaterialId], [ProcessLTSID], [ForecastMaterial], [BondDiagram], [BondDiagramRev], [EngineerTeam], [TestLocationId], [ProbeStatusId], [PackageTestTypeId], [TestProgram], [TestProgamAvailable], [CommentAvaliable], [Test_Sepecial_Instruction], [RequestedBy], [EmailAddressId], [Phone], [RequesterLocationId], [BusinessUnit], [ApprovingManager], [ManagerEmailId], [TotalCost], [RequestedShipDate], [RequiresTestPgmApproval], [IsDeleted], [LastUpdatedBy], [LastUpdated], [StatusType], [NPILot], [IsCompleted]) VALUES (4, N'Test1', N'Rev01', N'Test1', N'Test1', N'Test1', N'Test1', N'Test1', N'Test1', 2, N'Test1', N'Test1', N'Test1', N'Test1', 3, N'Test1', N'Test1', 2, N'Test1', 2, 2, 2, N'Test1', 2, 4, N'Test1', N'Test1', 1, 0, 3, N'Test1', N'Test1', N'Test1', N'Test1', N'Test1', N'Test1', N'Test1', 3, N'Test1', 2, N'Test1', 2, 3, 2, 3, 2, 2, 2, 1, 2, 1, 0, 1, 1, 2, 2, 0, N'Test1', N'Test1', NULL, 3, 3, 1, N'Test1', 0, N'Test1', NULL, N'User@atmel.com', 2, N'Test1', 1, N'Test1', N'Test1', 3, CAST(0 AS Decimal(18, 0)), CAST(0x0000A5C300000000 AS DateTime), 0, 0, N'Planner@atmel.com', CAST(0x0000A5C90178F2AD AS DateTime), 1, 1, 1)
INSERT [dbo].[EBR_Dashboard] ([Id], [Device], [Rev], [FABDieRevision], [PMPN], [AMPN], [TMPN], [FMPN], [CPN_SAP_Material], [PackageId], [PackageSize], [Leads], [Speed], [EABI_EBR_Revision], [WaferSizeId], [CurrentWaferThichness], [InternalDevice], [FabCodeId], [Power_Voltage], [DieBlankId], [AssemblyLocationnId], [FGLocationId], [AssemblyFlow], [PackageTypeId], [TopSideMarkingId], [MRL], [NameOfMarkingFile], [RequiresSepecialMark], [RequiresAssEngrInput], [MarkingCodeId], [Pin1Marking], [TopLine], [2ndLine], [3rdLine], [4thLine], [5thLine], [6thLine], [ShipFinishedProductToId], [AttentionFinished], [ShipRejectedPartToId], [AttentionRejected], [ReturnWaferToId], [VendorContactId], [VendorCodeId], [PurposeOfBuildId], [LotOwnerId], [RequestCycleTimeId], [PKGProcessId], [QualityLevelId], [RevenueLocationId], [BondDiagramAttached], [ScrapExcessDie_Wafer], [UV_Erase], [DieCoat], [WireMaterialId], [ProcessLTSID], [ForecastMaterial], [BondDiagram], [BondDiagramRev], [EngineerTeam], [TestLocationId], [ProbeStatusId], [PackageTestTypeId], [TestProgram], [TestProgamAvailable], [CommentAvaliable], [Test_Sepecial_Instruction], [RequestedBy], [EmailAddressId], [Phone], [RequesterLocationId], [BusinessUnit], [ApprovingManager], [ManagerEmailId], [TotalCost], [RequestedShipDate], [RequiresTestPgmApproval], [IsDeleted], [LastUpdatedBy], [LastUpdated], [StatusType], [NPILot], [IsCompleted]) VALUES (5, N'Test1', N'Rev01', N'Test1', N'Test1', N'Test1', N'Test1', N'Test1', N'Test1', 6, N'Test1', N'Test1', N'Test1', N'Test1', 2, N'Test1', N'Test1', 3, N'Test1', 2, 2, 2, N'Test1', 2, 4, N'Test1', N'Test1', 0, 1, 2, N'Test1', N'Test1', N'Test1', N'Test1', N'Test1', N'Test1', N'Test1', 2, N'Test1', 2, N'Test1', 16, 16, 14, 2, 2, 2, 1, 1, 2, 1, 1, 1, 1, 2, 1, 1, N'Test1', N'Test1', NULL, 3, 1, 1, N'Test1', 0, N'Test1', NULL, N'User@atmel.com', 16, N'Test1', 3, N'Test1', N'Test1', 17, CAST(23 AS Decimal(18, 0)), CAST(0x0000A5C300000000 AS DateTime), 0, 0, N'Planner@atmel.com', CAST(0x0000A5C9017A74C4 AS DateTime), 1, 1, 1)
INSERT [dbo].[EBR_Dashboard] ([Id], [Device], [Rev], [FABDieRevision], [PMPN], [AMPN], [TMPN], [FMPN], [CPN_SAP_Material], [PackageId], [PackageSize], [Leads], [Speed], [EABI_EBR_Revision], [WaferSizeId], [CurrentWaferThichness], [InternalDevice], [FabCodeId], [Power_Voltage], [DieBlankId], [AssemblyLocationnId], [FGLocationId], [AssemblyFlow], [PackageTypeId], [TopSideMarkingId], [MRL], [NameOfMarkingFile], [RequiresSepecialMark], [RequiresAssEngrInput], [MarkingCodeId], [Pin1Marking], [TopLine], [2ndLine], [3rdLine], [4thLine], [5thLine], [6thLine], [ShipFinishedProductToId], [AttentionFinished], [ShipRejectedPartToId], [AttentionRejected], [ReturnWaferToId], [VendorContactId], [VendorCodeId], [PurposeOfBuildId], [LotOwnerId], [RequestCycleTimeId], [PKGProcessId], [QualityLevelId], [RevenueLocationId], [BondDiagramAttached], [ScrapExcessDie_Wafer], [UV_Erase], [DieCoat], [WireMaterialId], [ProcessLTSID], [ForecastMaterial], [BondDiagram], [BondDiagramRev], [EngineerTeam], [TestLocationId], [ProbeStatusId], [PackageTestTypeId], [TestProgram], [TestProgamAvailable], [CommentAvaliable], [Test_Sepecial_Instruction], [RequestedBy], [EmailAddressId], [Phone], [RequesterLocationId], [BusinessUnit], [ApprovingManager], [ManagerEmailId], [TotalCost], [RequestedShipDate], [RequiresTestPgmApproval], [IsDeleted], [LastUpdatedBy], [LastUpdated], [StatusType], [NPILot], [IsCompleted]) VALUES (6, N'Device02', N'Rev 01', N'Revision01', N'pmnp', N'ampn', N'tmpn', N'fmpn', N'm', 1, N'size', N'leads', N'23', N'wwre', 1, N'rerw', N'werw', 2, N'wrew', 2, 16, 16, N'wer', 2, 3, N'wer', N'wer', 0, 0, 2, N'wer', N'wer', N'wer', N'wre', N'wer', N'wer', N'wer', 16, N'wre', 3, N'werw', 4, 15, 14, 3, 2, 2, 3, 2, 1, 1, 0, 1, 1, 1, 2, 1, N'dggdg', N'werwr', N'wrewrewrewrgwrguwrfwiuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuueyyyyyyyyyyyyyyyyyyyyyyyyywuooooooooooooooooooooooooooooooooooooooooooooooooooooooooooorewrewr', 14, 1, 3, N'wrewr', 1, N'wrewr', N'wrwerewrwrwrweruwytrwurtwortw8rywrwrwrwrwr', N'User@atmel.com', 17, N'0935769463', 4, N'IT', N'Planner@atmel.com', 15, CAST(23 AS Decimal(18, 0)), CAST(0x0000A5C500000000 AS DateTime), 0, 0, N'User@atmel.com', CAST(0x0000A5CA015C2FF1 AS DateTime), 3, 1, 1)
INSERT [dbo].[EBR_Dashboard] ([Id], [Device], [Rev], [FABDieRevision], [PMPN], [AMPN], [TMPN], [FMPN], [CPN_SAP_Material], [PackageId], [PackageSize], [Leads], [Speed], [EABI_EBR_Revision], [WaferSizeId], [CurrentWaferThichness], [InternalDevice], [FabCodeId], [Power_Voltage], [DieBlankId], [AssemblyLocationnId], [FGLocationId], [AssemblyFlow], [PackageTypeId], [TopSideMarkingId], [MRL], [NameOfMarkingFile], [RequiresSepecialMark], [RequiresAssEngrInput], [MarkingCodeId], [Pin1Marking], [TopLine], [2ndLine], [3rdLine], [4thLine], [5thLine], [6thLine], [ShipFinishedProductToId], [AttentionFinished], [ShipRejectedPartToId], [AttentionRejected], [ReturnWaferToId], [VendorContactId], [VendorCodeId], [PurposeOfBuildId], [LotOwnerId], [RequestCycleTimeId], [PKGProcessId], [QualityLevelId], [RevenueLocationId], [BondDiagramAttached], [ScrapExcessDie_Wafer], [UV_Erase], [DieCoat], [WireMaterialId], [ProcessLTSID], [ForecastMaterial], [BondDiagram], [BondDiagramRev], [EngineerTeam], [TestLocationId], [ProbeStatusId], [PackageTestTypeId], [TestProgram], [TestProgamAvailable], [CommentAvaliable], [Test_Sepecial_Instruction], [RequestedBy], [EmailAddressId], [Phone], [RequesterLocationId], [BusinessUnit], [ApprovingManager], [ManagerEmailId], [TotalCost], [RequestedShipDate], [RequiresTestPgmApproval], [IsDeleted], [LastUpdatedBy], [LastUpdated], [StatusType], [NPILot], [IsCompleted]) VALUES (7, NULL, N'Rev 01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'User@atmel.com', 5, NULL, 3, NULL, NULL, NULL, CAST(0 AS Decimal(18, 0)), NULL, NULL, 0, N'User@atmel.com', CAST(0x0000A5CA016A8795 AS DateTime), 0, 0, 0)
INSERT [dbo].[EBR_Dashboard] ([Id], [Device], [Rev], [FABDieRevision], [PMPN], [AMPN], [TMPN], [FMPN], [CPN_SAP_Material], [PackageId], [PackageSize], [Leads], [Speed], [EABI_EBR_Revision], [WaferSizeId], [CurrentWaferThichness], [InternalDevice], [FabCodeId], [Power_Voltage], [DieBlankId], [AssemblyLocationnId], [FGLocationId], [AssemblyFlow], [PackageTypeId], [TopSideMarkingId], [MRL], [NameOfMarkingFile], [RequiresSepecialMark], [RequiresAssEngrInput], [MarkingCodeId], [Pin1Marking], [TopLine], [2ndLine], [3rdLine], [4thLine], [5thLine], [6thLine], [ShipFinishedProductToId], [AttentionFinished], [ShipRejectedPartToId], [AttentionRejected], [ReturnWaferToId], [VendorContactId], [VendorCodeId], [PurposeOfBuildId], [LotOwnerId], [RequestCycleTimeId], [PKGProcessId], [QualityLevelId], [RevenueLocationId], [BondDiagramAttached], [ScrapExcessDie_Wafer], [UV_Erase], [DieCoat], [WireMaterialId], [ProcessLTSID], [ForecastMaterial], [BondDiagram], [BondDiagramRev], [EngineerTeam], [TestLocationId], [ProbeStatusId], [PackageTestTypeId], [TestProgram], [TestProgamAvailable], [CommentAvaliable], [Test_Sepecial_Instruction], [RequestedBy], [EmailAddressId], [Phone], [RequesterLocationId], [BusinessUnit], [ApprovingManager], [ManagerEmailId], [TotalCost], [RequestedShipDate], [RequiresTestPgmApproval], [IsDeleted], [LastUpdatedBy], [LastUpdated], [StatusType], [NPILot], [IsCompleted]) VALUES (8, NULL, N'Rev 01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'User@atmel.com', 5, NULL, 3, NULL, NULL, NULL, CAST(0 AS Decimal(18, 0)), NULL, NULL, 0, N'User@atmel.com', CAST(0x0000A5CA016ACFCC AS DateTime), 0, 0, 0)
INSERT [dbo].[EBR_Dashboard] ([Id], [Device], [Rev], [FABDieRevision], [PMPN], [AMPN], [TMPN], [FMPN], [CPN_SAP_Material], [PackageId], [PackageSize], [Leads], [Speed], [EABI_EBR_Revision], [WaferSizeId], [CurrentWaferThichness], [InternalDevice], [FabCodeId], [Power_Voltage], [DieBlankId], [AssemblyLocationnId], [FGLocationId], [AssemblyFlow], [PackageTypeId], [TopSideMarkingId], [MRL], [NameOfMarkingFile], [RequiresSepecialMark], [RequiresAssEngrInput], [MarkingCodeId], [Pin1Marking], [TopLine], [2ndLine], [3rdLine], [4thLine], [5thLine], [6thLine], [ShipFinishedProductToId], [AttentionFinished], [ShipRejectedPartToId], [AttentionRejected], [ReturnWaferToId], [VendorContactId], [VendorCodeId], [PurposeOfBuildId], [LotOwnerId], [RequestCycleTimeId], [PKGProcessId], [QualityLevelId], [RevenueLocationId], [BondDiagramAttached], [ScrapExcessDie_Wafer], [UV_Erase], [DieCoat], [WireMaterialId], [ProcessLTSID], [ForecastMaterial], [BondDiagram], [BondDiagramRev], [EngineerTeam], [TestLocationId], [ProbeStatusId], [PackageTestTypeId], [TestProgram], [TestProgamAvailable], [CommentAvaliable], [Test_Sepecial_Instruction], [RequestedBy], [EmailAddressId], [Phone], [RequesterLocationId], [BusinessUnit], [ApprovingManager], [ManagerEmailId], [TotalCost], [RequestedShipDate], [RequiresTestPgmApproval], [IsDeleted], [LastUpdatedBy], [LastUpdated], [StatusType], [NPILot], [IsCompleted]) VALUES (9, NULL, N'Rev 01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'User@atmel.com', NULL, NULL, 3, NULL, NULL, NULL, CAST(0 AS Decimal(18, 0)), NULL, NULL, 0, N'User@atmel.com', CAST(0x0000A5CA017097AC AS DateTime), 0, 0, 0)
INSERT [dbo].[EBR_Dashboard] ([Id], [Device], [Rev], [FABDieRevision], [PMPN], [AMPN], [TMPN], [FMPN], [CPN_SAP_Material], [PackageId], [PackageSize], [Leads], [Speed], [EABI_EBR_Revision], [WaferSizeId], [CurrentWaferThichness], [InternalDevice], [FabCodeId], [Power_Voltage], [DieBlankId], [AssemblyLocationnId], [FGLocationId], [AssemblyFlow], [PackageTypeId], [TopSideMarkingId], [MRL], [NameOfMarkingFile], [RequiresSepecialMark], [RequiresAssEngrInput], [MarkingCodeId], [Pin1Marking], [TopLine], [2ndLine], [3rdLine], [4thLine], [5thLine], [6thLine], [ShipFinishedProductToId], [AttentionFinished], [ShipRejectedPartToId], [AttentionRejected], [ReturnWaferToId], [VendorContactId], [VendorCodeId], [PurposeOfBuildId], [LotOwnerId], [RequestCycleTimeId], [PKGProcessId], [QualityLevelId], [RevenueLocationId], [BondDiagramAttached], [ScrapExcessDie_Wafer], [UV_Erase], [DieCoat], [WireMaterialId], [ProcessLTSID], [ForecastMaterial], [BondDiagram], [BondDiagramRev], [EngineerTeam], [TestLocationId], [ProbeStatusId], [PackageTestTypeId], [TestProgram], [TestProgamAvailable], [CommentAvaliable], [Test_Sepecial_Instruction], [RequestedBy], [EmailAddressId], [Phone], [RequesterLocationId], [BusinessUnit], [ApprovingManager], [ManagerEmailId], [TotalCost], [RequestedShipDate], [RequiresTestPgmApproval], [IsDeleted], [LastUpdatedBy], [LastUpdated], [StatusType], [NPILot], [IsCompleted]) VALUES (10, NULL, N'Rev 01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'User@atmel.com', NULL, NULL, NULL, NULL, NULL, NULL, CAST(0 AS Decimal(18, 0)), NULL, 0, 0, N'User@atmel.com', CAST(0x0000A5CA0170F9E3 AS DateTime), 0, 0, 0)
INSERT [dbo].[EBR_Dashboard] ([Id], [Device], [Rev], [FABDieRevision], [PMPN], [AMPN], [TMPN], [FMPN], [CPN_SAP_Material], [PackageId], [PackageSize], [Leads], [Speed], [EABI_EBR_Revision], [WaferSizeId], [CurrentWaferThichness], [InternalDevice], [FabCodeId], [Power_Voltage], [DieBlankId], [AssemblyLocationnId], [FGLocationId], [AssemblyFlow], [PackageTypeId], [TopSideMarkingId], [MRL], [NameOfMarkingFile], [RequiresSepecialMark], [RequiresAssEngrInput], [MarkingCodeId], [Pin1Marking], [TopLine], [2ndLine], [3rdLine], [4thLine], [5thLine], [6thLine], [ShipFinishedProductToId], [AttentionFinished], [ShipRejectedPartToId], [AttentionRejected], [ReturnWaferToId], [VendorContactId], [VendorCodeId], [PurposeOfBuildId], [LotOwnerId], [RequestCycleTimeId], [PKGProcessId], [QualityLevelId], [RevenueLocationId], [BondDiagramAttached], [ScrapExcessDie_Wafer], [UV_Erase], [DieCoat], [WireMaterialId], [ProcessLTSID], [ForecastMaterial], [BondDiagram], [BondDiagramRev], [EngineerTeam], [TestLocationId], [ProbeStatusId], [PackageTestTypeId], [TestProgram], [TestProgamAvailable], [CommentAvaliable], [Test_Sepecial_Instruction], [RequestedBy], [EmailAddressId], [Phone], [RequesterLocationId], [BusinessUnit], [ApprovingManager], [ManagerEmailId], [TotalCost], [RequestedShipDate], [RequiresTestPgmApproval], [IsDeleted], [LastUpdatedBy], [LastUpdated], [StatusType], [NPILot], [IsCompleted]) VALUES (11, NULL, N'Rev 01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'User@atmel.com', NULL, NULL, NULL, NULL, NULL, NULL, CAST(0 AS Decimal(18, 0)), NULL, 0, 0, N'User@atmel.com', CAST(0x0000A5CA0171CB4C AS DateTime), 0, 0, 0)
INSERT [dbo].[EBR_Dashboard] ([Id], [Device], [Rev], [FABDieRevision], [PMPN], [AMPN], [TMPN], [FMPN], [CPN_SAP_Material], [PackageId], [PackageSize], [Leads], [Speed], [EABI_EBR_Revision], [WaferSizeId], [CurrentWaferThichness], [InternalDevice], [FabCodeId], [Power_Voltage], [DieBlankId], [AssemblyLocationnId], [FGLocationId], [AssemblyFlow], [PackageTypeId], [TopSideMarkingId], [MRL], [NameOfMarkingFile], [RequiresSepecialMark], [RequiresAssEngrInput], [MarkingCodeId], [Pin1Marking], [TopLine], [2ndLine], [3rdLine], [4thLine], [5thLine], [6thLine], [ShipFinishedProductToId], [AttentionFinished], [ShipRejectedPartToId], [AttentionRejected], [ReturnWaferToId], [VendorContactId], [VendorCodeId], [PurposeOfBuildId], [LotOwnerId], [RequestCycleTimeId], [PKGProcessId], [QualityLevelId], [RevenueLocationId], [BondDiagramAttached], [ScrapExcessDie_Wafer], [UV_Erase], [DieCoat], [WireMaterialId], [ProcessLTSID], [ForecastMaterial], [BondDiagram], [BondDiagramRev], [EngineerTeam], [TestLocationId], [ProbeStatusId], [PackageTestTypeId], [TestProgram], [TestProgamAvailable], [CommentAvaliable], [Test_Sepecial_Instruction], [RequestedBy], [EmailAddressId], [Phone], [RequesterLocationId], [BusinessUnit], [ApprovingManager], [ManagerEmailId], [TotalCost], [RequestedShipDate], [RequiresTestPgmApproval], [IsDeleted], [LastUpdatedBy], [LastUpdated], [StatusType], [NPILot], [IsCompleted]) VALUES (12, NULL, N'Rev 01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'User@atmel.com', NULL, NULL, NULL, NULL, NULL, NULL, CAST(0 AS Decimal(18, 0)), NULL, 1, 0, N'User@atmel.com', CAST(0x0000A5CA01723A23 AS DateTime), 0, 0, 0)
INSERT [dbo].[EBR_Dashboard] ([Id], [Device], [Rev], [FABDieRevision], [PMPN], [AMPN], [TMPN], [FMPN], [CPN_SAP_Material], [PackageId], [PackageSize], [Leads], [Speed], [EABI_EBR_Revision], [WaferSizeId], [CurrentWaferThichness], [InternalDevice], [FabCodeId], [Power_Voltage], [DieBlankId], [AssemblyLocationnId], [FGLocationId], [AssemblyFlow], [PackageTypeId], [TopSideMarkingId], [MRL], [NameOfMarkingFile], [RequiresSepecialMark], [RequiresAssEngrInput], [MarkingCodeId], [Pin1Marking], [TopLine], [2ndLine], [3rdLine], [4thLine], [5thLine], [6thLine], [ShipFinishedProductToId], [AttentionFinished], [ShipRejectedPartToId], [AttentionRejected], [ReturnWaferToId], [VendorContactId], [VendorCodeId], [PurposeOfBuildId], [LotOwnerId], [RequestCycleTimeId], [PKGProcessId], [QualityLevelId], [RevenueLocationId], [BondDiagramAttached], [ScrapExcessDie_Wafer], [UV_Erase], [DieCoat], [WireMaterialId], [ProcessLTSID], [ForecastMaterial], [BondDiagram], [BondDiagramRev], [EngineerTeam], [TestLocationId], [ProbeStatusId], [PackageTestTypeId], [TestProgram], [TestProgamAvailable], [CommentAvaliable], [Test_Sepecial_Instruction], [RequestedBy], [EmailAddressId], [Phone], [RequesterLocationId], [BusinessUnit], [ApprovingManager], [ManagerEmailId], [TotalCost], [RequestedShipDate], [RequiresTestPgmApproval], [IsDeleted], [LastUpdatedBy], [LastUpdated], [StatusType], [NPILot], [IsCompleted]) VALUES (13, NULL, N'Rev 01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'User@atmel.com', NULL, NULL, NULL, NULL, NULL, NULL, CAST(0 AS Decimal(18, 0)), NULL, 1, 0, N'User@atmel.com', CAST(0x0000A5CA0172DC80 AS DateTime), 0, 0, 0)
INSERT [dbo].[EBR_Dashboard] ([Id], [Device], [Rev], [FABDieRevision], [PMPN], [AMPN], [TMPN], [FMPN], [CPN_SAP_Material], [PackageId], [PackageSize], [Leads], [Speed], [EABI_EBR_Revision], [WaferSizeId], [CurrentWaferThichness], [InternalDevice], [FabCodeId], [Power_Voltage], [DieBlankId], [AssemblyLocationnId], [FGLocationId], [AssemblyFlow], [PackageTypeId], [TopSideMarkingId], [MRL], [NameOfMarkingFile], [RequiresSepecialMark], [RequiresAssEngrInput], [MarkingCodeId], [Pin1Marking], [TopLine], [2ndLine], [3rdLine], [4thLine], [5thLine], [6thLine], [ShipFinishedProductToId], [AttentionFinished], [ShipRejectedPartToId], [AttentionRejected], [ReturnWaferToId], [VendorContactId], [VendorCodeId], [PurposeOfBuildId], [LotOwnerId], [RequestCycleTimeId], [PKGProcessId], [QualityLevelId], [RevenueLocationId], [BondDiagramAttached], [ScrapExcessDie_Wafer], [UV_Erase], [DieCoat], [WireMaterialId], [ProcessLTSID], [ForecastMaterial], [BondDiagram], [BondDiagramRev], [EngineerTeam], [TestLocationId], [ProbeStatusId], [PackageTestTypeId], [TestProgram], [TestProgamAvailable], [CommentAvaliable], [Test_Sepecial_Instruction], [RequestedBy], [EmailAddressId], [Phone], [RequesterLocationId], [BusinessUnit], [ApprovingManager], [ManagerEmailId], [TotalCost], [RequestedShipDate], [RequiresTestPgmApproval], [IsDeleted], [LastUpdatedBy], [LastUpdated], [StatusType], [NPILot], [IsCompleted]) VALUES (14, NULL, N'Rev 01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'User@atmel.com', NULL, NULL, NULL, NULL, NULL, 2, CAST(23 AS Decimal(18, 0)), NULL, NULL, 0, N'User@atmel.com', CAST(0x0000A5CA01733BC3 AS DateTime), 0, 0, 0)
INSERT [dbo].[EBR_Dashboard] ([Id], [Device], [Rev], [FABDieRevision], [PMPN], [AMPN], [TMPN], [FMPN], [CPN_SAP_Material], [PackageId], [PackageSize], [Leads], [Speed], [EABI_EBR_Revision], [WaferSizeId], [CurrentWaferThichness], [InternalDevice], [FabCodeId], [Power_Voltage], [DieBlankId], [AssemblyLocationnId], [FGLocationId], [AssemblyFlow], [PackageTypeId], [TopSideMarkingId], [MRL], [NameOfMarkingFile], [RequiresSepecialMark], [RequiresAssEngrInput], [MarkingCodeId], [Pin1Marking], [TopLine], [2ndLine], [3rdLine], [4thLine], [5thLine], [6thLine], [ShipFinishedProductToId], [AttentionFinished], [ShipRejectedPartToId], [AttentionRejected], [ReturnWaferToId], [VendorContactId], [VendorCodeId], [PurposeOfBuildId], [LotOwnerId], [RequestCycleTimeId], [PKGProcessId], [QualityLevelId], [RevenueLocationId], [BondDiagramAttached], [ScrapExcessDie_Wafer], [UV_Erase], [DieCoat], [WireMaterialId], [ProcessLTSID], [ForecastMaterial], [BondDiagram], [BondDiagramRev], [EngineerTeam], [TestLocationId], [ProbeStatusId], [PackageTestTypeId], [TestProgram], [TestProgamAvailable], [CommentAvaliable], [Test_Sepecial_Instruction], [RequestedBy], [EmailAddressId], [Phone], [RequesterLocationId], [BusinessUnit], [ApprovingManager], [ManagerEmailId], [TotalCost], [RequestedShipDate], [RequiresTestPgmApproval], [IsDeleted], [LastUpdatedBy], [LastUpdated], [StatusType], [NPILot], [IsCompleted]) VALUES (15, NULL, N'Rev 01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'User@atmel.com', NULL, NULL, NULL, NULL, NULL, NULL, CAST(0 AS Decimal(18, 0)), NULL, NULL, 0, N'User@atmel.com', CAST(0x0000A5CA017370AA AS DateTime), 0, 0, 0)
INSERT [dbo].[EBR_Dashboard] ([Id], [Device], [Rev], [FABDieRevision], [PMPN], [AMPN], [TMPN], [FMPN], [CPN_SAP_Material], [PackageId], [PackageSize], [Leads], [Speed], [EABI_EBR_Revision], [WaferSizeId], [CurrentWaferThichness], [InternalDevice], [FabCodeId], [Power_Voltage], [DieBlankId], [AssemblyLocationnId], [FGLocationId], [AssemblyFlow], [PackageTypeId], [TopSideMarkingId], [MRL], [NameOfMarkingFile], [RequiresSepecialMark], [RequiresAssEngrInput], [MarkingCodeId], [Pin1Marking], [TopLine], [2ndLine], [3rdLine], [4thLine], [5thLine], [6thLine], [ShipFinishedProductToId], [AttentionFinished], [ShipRejectedPartToId], [AttentionRejected], [ReturnWaferToId], [VendorContactId], [VendorCodeId], [PurposeOfBuildId], [LotOwnerId], [RequestCycleTimeId], [PKGProcessId], [QualityLevelId], [RevenueLocationId], [BondDiagramAttached], [ScrapExcessDie_Wafer], [UV_Erase], [DieCoat], [WireMaterialId], [ProcessLTSID], [ForecastMaterial], [BondDiagram], [BondDiagramRev], [EngineerTeam], [TestLocationId], [ProbeStatusId], [PackageTestTypeId], [TestProgram], [TestProgamAvailable], [CommentAvaliable], [Test_Sepecial_Instruction], [RequestedBy], [EmailAddressId], [Phone], [RequesterLocationId], [BusinessUnit], [ApprovingManager], [ManagerEmailId], [TotalCost], [RequestedShipDate], [RequiresTestPgmApproval], [IsDeleted], [LastUpdatedBy], [LastUpdated], [StatusType], [NPILot], [IsCompleted]) VALUES (16, NULL, N'Rev 01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'User@atmel.com', NULL, NULL, NULL, NULL, NULL, NULL, CAST(0 AS Decimal(18, 0)), NULL, NULL, 0, N'User@atmel.com', CAST(0x0000A5CA0173C78E AS DateTime), 0, 0, 0)
INSERT [dbo].[EBR_Dashboard] ([Id], [Device], [Rev], [FABDieRevision], [PMPN], [AMPN], [TMPN], [FMPN], [CPN_SAP_Material], [PackageId], [PackageSize], [Leads], [Speed], [EABI_EBR_Revision], [WaferSizeId], [CurrentWaferThichness], [InternalDevice], [FabCodeId], [Power_Voltage], [DieBlankId], [AssemblyLocationnId], [FGLocationId], [AssemblyFlow], [PackageTypeId], [TopSideMarkingId], [MRL], [NameOfMarkingFile], [RequiresSepecialMark], [RequiresAssEngrInput], [MarkingCodeId], [Pin1Marking], [TopLine], [2ndLine], [3rdLine], [4thLine], [5thLine], [6thLine], [ShipFinishedProductToId], [AttentionFinished], [ShipRejectedPartToId], [AttentionRejected], [ReturnWaferToId], [VendorContactId], [VendorCodeId], [PurposeOfBuildId], [LotOwnerId], [RequestCycleTimeId], [PKGProcessId], [QualityLevelId], [RevenueLocationId], [BondDiagramAttached], [ScrapExcessDie_Wafer], [UV_Erase], [DieCoat], [WireMaterialId], [ProcessLTSID], [ForecastMaterial], [BondDiagram], [BondDiagramRev], [EngineerTeam], [TestLocationId], [ProbeStatusId], [PackageTestTypeId], [TestProgram], [TestProgamAvailable], [CommentAvaliable], [Test_Sepecial_Instruction], [RequestedBy], [EmailAddressId], [Phone], [RequesterLocationId], [BusinessUnit], [ApprovingManager], [ManagerEmailId], [TotalCost], [RequestedShipDate], [RequiresTestPgmApproval], [IsDeleted], [LastUpdatedBy], [LastUpdated], [StatusType], [NPILot], [IsCompleted]) VALUES (17, NULL, N'Rev 01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'User@atmel.com', NULL, NULL, NULL, NULL, NULL, NULL, CAST(0 AS Decimal(18, 0)), NULL, NULL, 0, N'User@atmel.com', CAST(0x0000A5CA017405B2 AS DateTime), 0, 0, 0)
INSERT [dbo].[EBR_Dashboard] ([Id], [Device], [Rev], [FABDieRevision], [PMPN], [AMPN], [TMPN], [FMPN], [CPN_SAP_Material], [PackageId], [PackageSize], [Leads], [Speed], [EABI_EBR_Revision], [WaferSizeId], [CurrentWaferThichness], [InternalDevice], [FabCodeId], [Power_Voltage], [DieBlankId], [AssemblyLocationnId], [FGLocationId], [AssemblyFlow], [PackageTypeId], [TopSideMarkingId], [MRL], [NameOfMarkingFile], [RequiresSepecialMark], [RequiresAssEngrInput], [MarkingCodeId], [Pin1Marking], [TopLine], [2ndLine], [3rdLine], [4thLine], [5thLine], [6thLine], [ShipFinishedProductToId], [AttentionFinished], [ShipRejectedPartToId], [AttentionRejected], [ReturnWaferToId], [VendorContactId], [VendorCodeId], [PurposeOfBuildId], [LotOwnerId], [RequestCycleTimeId], [PKGProcessId], [QualityLevelId], [RevenueLocationId], [BondDiagramAttached], [ScrapExcessDie_Wafer], [UV_Erase], [DieCoat], [WireMaterialId], [ProcessLTSID], [ForecastMaterial], [BondDiagram], [BondDiagramRev], [EngineerTeam], [TestLocationId], [ProbeStatusId], [PackageTestTypeId], [TestProgram], [TestProgamAvailable], [CommentAvaliable], [Test_Sepecial_Instruction], [RequestedBy], [EmailAddressId], [Phone], [RequesterLocationId], [BusinessUnit], [ApprovingManager], [ManagerEmailId], [TotalCost], [RequestedShipDate], [RequiresTestPgmApproval], [IsDeleted], [LastUpdatedBy], [LastUpdated], [StatusType], [NPILot], [IsCompleted]) VALUES (18, NULL, N'Rev 01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'User@atmel.com', NULL, NULL, NULL, NULL, NULL, NULL, CAST(0 AS Decimal(18, 0)), NULL, NULL, 0, N'User@atmel.com', CAST(0x0000A5CA01746CD9 AS DateTime), 0, 0, 0)
INSERT [dbo].[EBR_Dashboard] ([Id], [Device], [Rev], [FABDieRevision], [PMPN], [AMPN], [TMPN], [FMPN], [CPN_SAP_Material], [PackageId], [PackageSize], [Leads], [Speed], [EABI_EBR_Revision], [WaferSizeId], [CurrentWaferThichness], [InternalDevice], [FabCodeId], [Power_Voltage], [DieBlankId], [AssemblyLocationnId], [FGLocationId], [AssemblyFlow], [PackageTypeId], [TopSideMarkingId], [MRL], [NameOfMarkingFile], [RequiresSepecialMark], [RequiresAssEngrInput], [MarkingCodeId], [Pin1Marking], [TopLine], [2ndLine], [3rdLine], [4thLine], [5thLine], [6thLine], [ShipFinishedProductToId], [AttentionFinished], [ShipRejectedPartToId], [AttentionRejected], [ReturnWaferToId], [VendorContactId], [VendorCodeId], [PurposeOfBuildId], [LotOwnerId], [RequestCycleTimeId], [PKGProcessId], [QualityLevelId], [RevenueLocationId], [BondDiagramAttached], [ScrapExcessDie_Wafer], [UV_Erase], [DieCoat], [WireMaterialId], [ProcessLTSID], [ForecastMaterial], [BondDiagram], [BondDiagramRev], [EngineerTeam], [TestLocationId], [ProbeStatusId], [PackageTestTypeId], [TestProgram], [TestProgamAvailable], [CommentAvaliable], [Test_Sepecial_Instruction], [RequestedBy], [EmailAddressId], [Phone], [RequesterLocationId], [BusinessUnit], [ApprovingManager], [ManagerEmailId], [TotalCost], [RequestedShipDate], [RequiresTestPgmApproval], [IsDeleted], [LastUpdatedBy], [LastUpdated], [StatusType], [NPILot], [IsCompleted]) VALUES (19, NULL, N'Rev 01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'User@atmel.com', NULL, NULL, NULL, NULL, NULL, NULL, CAST(0 AS Decimal(18, 0)), NULL, NULL, 0, N'User@atmel.com', CAST(0x0000A5CA017511EE AS DateTime), 0, 0, 0)
SET IDENTITY_INSERT [dbo].[EBR_Dashboard] OFF
ALTER TABLE [dbo].[EBR_Dashboard] ADD  CONSTRAINT [DF__EBR_Dashb__Requi__1A69E950]  DEFAULT ((0)) FOR [RequiresSepecialMark]
GO
ALTER TABLE [dbo].[EBR_Dashboard] ADD  CONSTRAINT [DF__EBR_Dashb__Requi__1B5E0D89]  DEFAULT ((0)) FOR [RequiresAssEngrInput]
GO
ALTER TABLE [dbo].[EBR_Dashboard] ADD  CONSTRAINT [DF__EBR_Dashb__BondD__1C5231C2]  DEFAULT ((0)) FOR [BondDiagramAttached]
GO
ALTER TABLE [dbo].[EBR_Dashboard] ADD  CONSTRAINT [DF__EBR_Dashb__Scrap__1D4655FB]  DEFAULT ((0)) FOR [ScrapExcessDie_Wafer]
GO
ALTER TABLE [dbo].[EBR_Dashboard] ADD  CONSTRAINT [DF__EBR_Dashb__UV_Er__1E3A7A34]  DEFAULT ((0)) FOR [UV_Erase]
GO
ALTER TABLE [dbo].[EBR_Dashboard] ADD  CONSTRAINT [DF__EBR_Dashb__DieCo__1F2E9E6D]  DEFAULT ((0)) FOR [DieCoat]
GO
ALTER TABLE [dbo].[EBR_Dashboard] ADD  CONSTRAINT [DF__EBR_Dashb__Forec__2022C2A6]  DEFAULT ((0)) FOR [ForecastMaterial]
GO
ALTER TABLE [dbo].[EBR_Dashboard] ADD  CONSTRAINT [DF__EBR_Dashb__TestP__2116E6DF]  DEFAULT ((0)) FOR [TestProgamAvailable]
GO
ALTER TABLE [dbo].[EBR_Dashboard] ADD  CONSTRAINT [DF__EBR_Dashb__Requi__220B0B18]  DEFAULT ((0)) FOR [RequiresTestPgmApproval]
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0: Draft, 1: Submit' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EBR_Dashboard', @level2type=N'COLUMN',@level2name=N'StatusType'
GO

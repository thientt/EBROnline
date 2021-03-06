USE [ACP_REPORTS]
GO
/****** Object:  Table [dbo].[EBR_Dashboard]    Script Date: 2/24/2016 11:37:26 PM ******/
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
	[TestProgram] [varchar](50) NULL,
	[TestProgamAvailable] [bit] NULL,
	[CommentAvaliable] [varchar](50) NULL,
	[Test_Sepecial_Instruction] [varchar](1024) NOT NULL,
	[RequestedBy] [varchar](50) NOT NULL,
	[EmailAddressId] [int] NOT NULL,
	[Phone] [varchar](50) NULL,
	[RequesterLocationId] [int] NOT NULL,
	[BusinessUnit] [varchar](50) NULL,
	[ApprovingManager] [varchar](50) NOT NULL,
	[ManagerEmailId] [int] NOT NULL,
	[TotalCost] [decimal](18, 0) NOT NULL,
	[RequestedShipDate] [datetime] NOT NULL,
	[RequiresTestPgmApproval] [bit] NULL,
	[IsDeleted] [bit] NOT NULL,
	[LastUpdatedBy] [varchar](50) NOT NULL,
	[LastUpdated] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EBR_MST.AssemblyLocation]    Script Date: 2/24/2016 11:37:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EBR_MST.AssemblyLocation](
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
/****** Object:  Table [dbo].[EBR_MST.BuildReason]    Script Date: 2/24/2016 11:37:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EBR_MST.BuildReason](
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
/****** Object:  Table [dbo].[EBR_MST.DieBank]    Script Date: 2/24/2016 11:37:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EBR_MST.DieBank](
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
/****** Object:  Table [dbo].[EBR_MST.EmailAddress]    Script Date: 2/24/2016 11:37:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EBR_MST.EmailAddress](
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
/****** Object:  Table [dbo].[EBR_MST.FabCode]    Script Date: 2/24/2016 11:37:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EBR_MST.FabCode](
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
/****** Object:  Table [dbo].[EBR_MST.FGLocation]    Script Date: 2/24/2016 11:37:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EBR_MST.FGLocation](
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
/****** Object:  Table [dbo].[EBR_MST.MarkingInstruction]    Script Date: 2/24/2016 11:37:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EBR_MST.MarkingInstruction](
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
/****** Object:  Table [dbo].[EBR_MST.MarkingSL]    Script Date: 2/24/2016 11:37:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EBR_MST.MarkingSL](
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
/****** Object:  Table [dbo].[EBR_MST.Owner]    Script Date: 2/24/2016 11:37:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EBR_MST.Owner](
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
/****** Object:  Table [dbo].[EBR_MST.Package]    Script Date: 2/24/2016 11:37:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EBR_MST.Package](
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
/****** Object:  Table [dbo].[EBR_MST.PackageTestType]    Script Date: 2/24/2016 11:37:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EBR_MST.PackageTestType](
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
/****** Object:  Table [dbo].[EBR_MST.PackingType]    Script Date: 2/24/2016 11:37:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EBR_MST.PackingType](
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
/****** Object:  Table [dbo].[EBR_MST.PKGProcessType]    Script Date: 2/24/2016 11:37:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EBR_MST.PKGProcessType](
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
/****** Object:  Table [dbo].[EBR_MST.PriorityOfAssemblyBuild]    Script Date: 2/24/2016 11:37:26 PM ******/
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
/****** Object:  Table [dbo].[EBR_MST.ProbeStatus]    Script Date: 2/24/2016 11:37:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EBR_MST.ProbeStatus](
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
/****** Object:  Table [dbo].[EBR_MST.ProcessLTS]    Script Date: 2/24/2016 11:37:26 PM ******/
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
/****** Object:  Table [dbo].[EBR_MST.QualityLevel]    Script Date: 2/24/2016 11:37:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EBR_MST.QualityLevel](
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
/****** Object:  Table [dbo].[EBR_MST.RequesterLocation]    Script Date: 2/24/2016 11:37:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EBR_MST.RequesterLocation](
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
/****** Object:  Table [dbo].[EBR_MST.RevenueLocation]    Script Date: 2/24/2016 11:37:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EBR_MST.RevenueLocation](
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
/****** Object:  Table [dbo].[EBR_MST.VendorCode]    Script Date: 2/24/2016 11:37:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EBR_MST.VendorCode](
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
/****** Object:  Table [dbo].[EBR_MST.VendorContact]    Script Date: 2/24/2016 11:37:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EBR_MST.VendorContact](
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
/****** Object:  Table [dbo].[EBR_MST.WaferSize]    Script Date: 2/24/2016 11:37:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EBR_MST.WaferSize](
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
/****** Object:  Table [dbo].[EBR_MST.WireMaterial]    Script Date: 2/24/2016 11:37:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EBR_MST.WireMaterial](
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
/****** Object:  Table [dbo].[EBR_SubDashboard]    Script Date: 2/24/2016 11:37:26 PM ******/
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
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EBR_SYS.Roles]    Script Date: 2/24/2016 11:37:26 PM ******/
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
/****** Object:  Table [dbo].[EBR_SYS.Users]    Script Date: 2/24/2016 11:37:26 PM ******/
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
SET IDENTITY_INSERT [dbo].[EBR_MST.AssemblyLocation] ON 

INSERT [dbo].[EBR_MST.AssemblyLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (1, N'ASE6 - ASE KAOHSIUNG', N'ASE6 - ASE KAOHSIUNG', N'Admin@atmel.com', CAST(0x0000A5B3011D9275 AS DateTime), 0)
INSERT [dbo].[EBR_MST.AssemblyLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (2, N'ASE8 - ASE SHANGHAI', N'ASE8 - ASE SHANGHAI', N'Admin@atmel.com', CAST(0x0000A5B300BCBF2F AS DateTime), 0)
INSERT [dbo].[EBR_MST.AssemblyLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (3, N'ATC5 - AMKOR SHANGHAI', N'ATC5 - AMKOR SHANGHAI', N'Admin@atmel.com', CAST(0x0000A5B3011C1403 AS DateTime), 0)
INSERT [dbo].[EBR_MST.AssemblyLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (4, N'ATK5 - ATK K1 SEOUL KOREA', N'ATK5 - ATK K1 SEOUL KOREA', N'Admin@atmel.com', CAST(0x0000A5B3011DC1F3 AS DateTime), 0)
INSERT [dbo].[EBR_MST.AssemblyLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (5, N'ATK6 - ATK K3 INCHEON KOREA', N'ATK6 - ATK K3 INCHEON KOREA', N'Admin@atmel.com', CAST(0x0000A5B300C03301 AS DateTime), 0)
INSERT [dbo].[EBR_MST.AssemblyLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (6, N'ATK7 - ATK K4 KWANGIU KOREA', N'ATK7 - ATK K4 KWANGIU KOREA', N'Admin@atmel.com', CAST(0x0000A5B300C1C397 AS DateTime), 0)
INSERT [dbo].[EBR_MST.AssemblyLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (7, N'ATP6 - ATP P1 PHILIPPINES', N'ATP6 - ATP P1 PHILIPPINES', N'Admin@atmel.com', CAST(0x0000A5B300C21139 AS DateTime), 0)
INSERT [dbo].[EBR_MST.AssemblyLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (8, N'ATP7 - ATP P3 PHILIPPINES', N'ATP7 - ATP P3 PHILIPPINES', N'Admin@atmel.com', CAST(0x0000A5B300C33F0A AS DateTime), 0)
INSERT [dbo].[EBR_MST.AssemblyLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (9, N'ATP8 - ATP P4 PHILIPPINES', N'ATP8 - ATP P4 PHILIPPINES', N'Admin@atmel.com', CAST(0x0000A5B300C41139 AS DateTime), 0)
INSERT [dbo].[EBR_MST.AssemblyLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (10, N'ATT5 - ATT TAIWAN', N'ATT5 - ATT TAIWAN', N'Admin@atmel.com', CAST(0x0000A5B300C5B1F0 AS DateTime), 0)
INSERT [dbo].[EBR_MST.AssemblyLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (11, N'CBT5 - CHIPBOND', N'CBT5 - CHIPBOND', N'Admin@atmel.com', CAST(0x0000A5B300C88232 AS DateTime), 0)
INSERT [dbo].[EBR_MST.AssemblyLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (12, N'CBT5 - CHIPBOND', N'CBT5 - CHIPBOND', N'Admin@atmel.com', CAST(0x0000A5B300C904DA AS DateTime), 0)
INSERT [dbo].[EBR_MST.AssemblyLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (13, N'CPC5 - STATS ChipPAC CHINA', N'CPC5 - STATS ChipPAC CHINA', N'Admin@atmel.com', CAST(0x0000A5B300C93D3E AS DateTime), 0)
INSERT [dbo].[EBR_MST.AssemblyLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (14, N'CPK5 - STATS ChipPAC KOREA', N'CPK5 - STATS ChipPAC KOREA', N'Admin@atmel.com', CAST(0x0000A5B300C9C804 AS DateTime), 0)
INSERT [dbo].[EBR_MST.AssemblyLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (15, N'CPM5 - STATS ChipPAC MALAYSIA', N'CPM5 - STATS ChipPAC MALAYSIA', N'Admin@atmel.com', CAST(0x0000A5B300C9FA71 AS DateTime), 0)
INSERT [dbo].[EBR_MST.AssemblyLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (16, N'CPS5 - STATS ChipPAC SINGAPORE', N'CPS5 - STATS ChipPAC SINGAPORE', N'Admin@atmel.com', CAST(0x0000A5B300CA9253 AS DateTime), 0)
INSERT [dbo].[EBR_MST.AssemblyLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (17, N'DEC5 - DECA TECHNOLOGIES', N'DEC5 - DECA TECHNOLOGIES', N'Admin@atmel.com', CAST(0x0000A5B300CDFA6C AS DateTime), 0)
INSERT [dbo].[EBR_MST.AssemblyLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (18, N'FLP6 - FLIPCHIP TECHNOLOGIES', N'FLP6 - FLIPCHIP TECHNOLOGIES', N'Admin@atmel.com', CAST(0x0000A5B300CE6BB4 AS DateTime), 0)
INSERT [dbo].[EBR_MST.AssemblyLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (19, N'FUJ5 - FUJITSU MICRO', N'FUJ5 - FUJITSU MICRO', N'Admin@atmel.com', CAST(0x0000A5B300CED0D0 AS DateTime), 0)
INSERT [dbo].[EBR_MST.AssemblyLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (20, N'GDS5 - GDSI', N'GDS5 - GDSI', N'Admin@atmel.com', CAST(0x0000A5B300CF5381 AS DateTime), 0)
INSERT [dbo].[EBR_MST.AssemblyLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (21, N'GOLD - GOLDEN ALTOS USA', N'GOLD - GOLDEN ALTOS USA', N'Admin@atmel.com', CAST(0x0000A5B300EE1CF9 AS DateTime), 0)
INSERT [dbo].[EBR_MST.AssemblyLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (22, N'GRT5 - GREATEK', N'GRT5 - GREATEK', N'Admin@atmel.com', CAST(0x0000A5B300EEA2C1 AS DateTime), 0)
INSERT [dbo].[EBR_MST.AssemblyLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (23, N'HAN5 - HANA', N'HAN5 - HANA', N'Admin@atmel.com', CAST(0x0000A5B300EF5280 AS DateTime), 0)
INSERT [dbo].[EBR_MST.AssemblyLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (24, N'JCA5 - JCAP CHINA', N'JCA5 - JCAP CHINA', N'Admin@atmel.com', CAST(0x0000A5B300EFFEBC AS DateTime), 0)
INSERT [dbo].[EBR_MST.AssemblyLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (25, N'JCE5 - JCET', N'JCE5 - JCET', N'Admin@atmel.com', CAST(0x0000A5B300F043AB AS DateTime), 0)
INSERT [dbo].[EBR_MST.AssemblyLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (26, N'KYE5 - KING YUAL ELECTRONICS', N'KYE5 - KING YUAL ELECTRONICS', N'Admin@atmel.com', CAST(0x0000A5B300F08915 AS DateTime), 0)
INSERT [dbo].[EBR_MST.AssemblyLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (27, N'LBL5 - LIBERTY LAB', N'LBL5 - LIBERTY LAB', N'Admin@atmel.com', CAST(0x0000A5B300F116A7 AS DateTime), 0)
INSERT [dbo].[EBR_MST.AssemblyLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (28, N'LNG5 - LINGSEN TAIWAN', N'LNG5 - LINGSEN TAIWAN', N'Admin@atmel.com', CAST(0x0000A5B300F16B19 AS DateTime), 0)
INSERT [dbo].[EBR_MST.AssemblyLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (29, N'MNO5 - TSPIC CORPORATION', N'MNO5 - TSPIC CORPORATION', N'Admin@atmel.com', CAST(0x0000A5B300F1DB78 AS DateTime), 0)
INSERT [dbo].[EBR_MST.AssemblyLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (30, N'NDC5 - NEDCARD', N'NDC5 - NEDCARD', N'Admin@atmel.com', CAST(0x0000A5B300F21DB7 AS DateTime), 0)
INSERT [dbo].[EBR_MST.AssemblyLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (31, N'RAD - RAD USA', N'RAD - RAD USA', N'Admin@atmel.com', CAST(0x0000A5B300F289BD AS DateTime), 0)
INSERT [dbo].[EBR_MST.AssemblyLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (32, N'SGT5 - SIGNETICS', N'SGT5 - SIGNETICS', N'Admin@atmel.com', CAST(0x0000A5B300F5457F AS DateTime), 0)
INSERT [dbo].[EBR_MST.AssemblyLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (33, N'SMC5 - SMIC', N'SMC5 - SMIC', N'Admin@atmel.com', CAST(0x0000A5B300F569A4 AS DateTime), 0)
INSERT [dbo].[EBR_MST.AssemblyLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (34, N'STS5 - STS Semiconductors', N'STS5 - STS Semiconductors', N'Admin@atmel.com', CAST(0x0000A5B300F5BCA8 AS DateTime), 0)
INSERT [dbo].[EBR_MST.AssemblyLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (35, N'TRB5 - TERAPROBE', N'TRB5 - TERAPROBE', N'Admin@atmel.com', CAST(0x0000A5B300F641B9 AS DateTime), 0)
INSERT [dbo].[EBR_MST.AssemblyLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (36, N'TSM5 - TAIWAN SEMICONDUCTOR', N'TSM5 - TAIWAN SEMICONDUCTOR', N'Admin@atmel.com', CAST(0x0000A5B300F710EE AS DateTime), 0)
INSERT [dbo].[EBR_MST.AssemblyLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (37, N'UTC5 - UTAC THAILAND', N'UTC5 - UTAC THAILAND', N'Admin@atmel.com', CAST(0x0000A5B300F7D998 AS DateTime), 0)
INSERT [dbo].[EBR_MST.AssemblyLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (38, N'UTC6 - UTAC DONGGUAN', N'UTC6 - UTAC DONGGUAN', N'Admin@atmel.com', CAST(0x0000A5B300F836F8 AS DateTime), 0)
INSERT [dbo].[EBR_MST.AssemblyLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (39, N'UTC7 - UTAC SINGAPORE', N'UTC7 - UTAC SINGAPORE', N'Admin@atmel.com', CAST(0x0000A5B300F977E0 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[EBR_MST.AssemblyLocation] OFF
SET IDENTITY_INSERT [dbo].[EBR_MST.BuildReason] ON 

INSERT [dbo].[EBR_MST.BuildReason] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (1, N'Eng Sample for Customer (Can''t be a Qual)', N'Eng Sample for Customer (Can''t be a Qual)', N'Admin@atmel.com', CAST(0x0000A5B301697B43 AS DateTime), 0)
INSERT [dbo].[EBR_MST.BuildReason] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (2, N'Eng Sample for Eval (Can''t be a Qual)', N'Eng Sample for Eval (Can''t be a Qual)', N'Admin@atmel.com', CAST(0x0000A5B301698546 AS DateTime), 0)
INSERT [dbo].[EBR_MST.BuildReason] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (3, N'New Assy Material/Process Qual', N'New Assy Material/Process Qual', N'Admin@atmel.com', CAST(0x0000A5B301698E9B AS DateTime), 0)
INSERT [dbo].[EBR_MST.BuildReason] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (4, N'New Test Vendor', N'New Test Vendor', N'Admin@atmel.com', CAST(0x0000A5B3016B19FC AS DateTime), 0)
INSERT [dbo].[EBR_MST.BuildReason] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (5, N'Fab Excursion', N'Fab Excursion', N'Admin@atmel.com', CAST(0x0000A5B3016B232F AS DateTime), 0)
INSERT [dbo].[EBR_MST.BuildReason] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (6, N'Fab Process Change', N'Fab Process Change', N'Admin@atmel.com', CAST(0x0000A5B3016B2D2E AS DateTime), 0)
INSERT [dbo].[EBR_MST.BuildReason] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (7, N'Customer Issue', N'Customer Issue', N'Admin@atmel.com', CAST(0x0000A5B3016B3592 AS DateTime), 0)
INSERT [dbo].[EBR_MST.BuildReason] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (8, N'New Device Revision', N'New Device Revision', N'Admin@atmel.com', CAST(0x0000A5B3016B3E0F AS DateTime), 0)
INSERT [dbo].[EBR_MST.BuildReason] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (9, N'DVS Build', N'DVS Build', N'Admin@atmel.com', CAST(0x0000A5B3016B4B5D AS DateTime), 0)
INSERT [dbo].[EBR_MST.BuildReason] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (10, N'NPI =RUN  QUAL LOT', N'NPI =RUN  QUAL LOT', N'Admin@atmel.com', CAST(0x0000A5B3016B531D AS DateTime), 0)
INSERT [dbo].[EBR_MST.BuildReason] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (11, N'NPI =RUN  ENG LOT', N'NPI =RUN  ENG LOT', N'Admin@atmel.com', CAST(0x0000A5B3016B5A51 AS DateTime), 0)
INSERT [dbo].[EBR_MST.BuildReason] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (12, N'NPI =RUN  PROD LOT', N'NPI =RUN  PROD LOT', N'Admin@atmel.com', CAST(0x0000A5B3016B6413 AS DateTime), 0)
INSERT [dbo].[EBR_MST.BuildReason] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (13, N'NPI=RUN Customer Sample', N'NPI=RUN Customer Sample', N'Admin@atmel.com', CAST(0x0000A5B3016B6C52 AS DateTime), 0)
INSERT [dbo].[EBR_MST.BuildReason] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (14, N'New Package Qual', N'New Package Qual', N'Admin@atmel.com', CAST(0x0000A5B3016B7342 AS DateTime), 0)
INSERT [dbo].[EBR_MST.BuildReason] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (15, N'ASM Qual Lot', N'ASM Qual Lot', N'Admin@atmel.com', CAST(0x0000A5B3016B7928 AS DateTime), 0)
INSERT [dbo].[EBR_MST.BuildReason] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (16, N'New Assy Vendor Qual', N'New Assy Vendor Qual', N'Admin@atmel.com', CAST(0x0000A5B3016B80CE AS DateTime), 0)
INSERT [dbo].[EBR_MST.BuildReason] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (17, N'Test Program Qualification', N'Test Program Qualification', N'Admin@atmel.com', CAST(0x0000A5B3016B88A6 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[EBR_MST.BuildReason] OFF
SET IDENTITY_INSERT [dbo].[EBR_MST.DieBank] ON 

INSERT [dbo].[EBR_MST.DieBank] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (1, N'CSO1', N'CSO', N'Admin@atmel.com', CAST(0x0000A5B3016E92C7 AS DateTime), 0)
INSERT [dbo].[EBR_MST.DieBank] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (2, N'NTO', N'NTO', N'Admin@atmel.com', CAST(0x0000A5B3016E1503 AS DateTime), 0)
INSERT [dbo].[EBR_MST.DieBank] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (3, N'SJO', N'SJO', N'Admin@atmel.com', CAST(0x0000A5B3016E1C16 AS DateTime), 0)
INSERT [dbo].[EBR_MST.DieBank] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (4, N'RFO', N'RFO', N'Admin@atmel.com', CAST(0x0000A5B3016E239C AS DateTime), 0)
INSERT [dbo].[EBR_MST.DieBank] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (5, N'ACP5', N'ACP5', N'Admin@atmel.com', CAST(0x0000A5B3016E2D72 AS DateTime), 0)
INSERT [dbo].[EBR_MST.DieBank] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (6, N'KYEC', N'KYEC', N'Admin@atmel.com', CAST(0x0000A5B3016E345F AS DateTime), 0)
INSERT [dbo].[EBR_MST.DieBank] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (7, N'UMC', N'UMC', N'Admin@atmel.com', CAST(0x0000A5B3016E3CED AS DateTime), 0)
INSERT [dbo].[EBR_MST.DieBank] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (8, N'TPS', N'TPS', N'Admin@atmel.com', CAST(0x0000A5B3016E46E7 AS DateTime), 0)
INSERT [dbo].[EBR_MST.DieBank] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (9, N'TSM', N'TSM', N'Admin@atmel.com', CAST(0x0000A5B3016E4DD1 AS DateTime), 0)
INSERT [dbo].[EBR_MST.DieBank] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (10, N'SMIC', N'SMIC', N'Admin@atmel.com', CAST(0x0000A5B3016E56C9 AS DateTime), 0)
INSERT [dbo].[EBR_MST.DieBank] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (11, N'RAD', N'RAD', N'Admin@atmel.com', CAST(0x0000A5B3016E5D98 AS DateTime), 0)
INSERT [dbo].[EBR_MST.DieBank] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (12, N'ASE-SH', N'ASE-SH', N'Admin@atmel.com', CAST(0x0000A5B3016E647F AS DateTime), 0)
INSERT [dbo].[EBR_MST.DieBank] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (13, N'Prod Eng', N'Prod Eng', N'Admin@atmel.com', CAST(0x0000A5B3016E6B47 AS DateTime), 0)
INSERT [dbo].[EBR_MST.DieBank] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (14, N'Test Eng', N'Test Eng', N'Admin@atmel.com', CAST(0x0000A5B3016E722C AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[EBR_MST.DieBank] OFF
SET IDENTITY_INSERT [dbo].[EBR_MST.EmailAddress] ON 

INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (1, N'DL-EBR-ABI@atmel.com ', N'DL-EBR-ABI@atmel.com ', N'Admin@atmel.com', CAST(0x0000A5B30170137D AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (2, N'Angela.Gonzales@atmel.com', N'Angela.Gonzales@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B301701B69 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (3, N'Andy.Kovats@atmel.com', N'Andy.Kovats@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B301702432 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (4, N'Anthony.Moss@atmel.com', N'Anthony.Moss@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B301702FBF AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (5, N'Annabelle.Gentil@atmel.com', N'Annabelle.Gentil@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B301703D99 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (6, N'Anne.Bregeon@atmel.com', N'Anne.Bregeon@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B301704715 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (7, N'Art.Mears@atmel.com', N'Art.Mears@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B301704D15 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (8, N'Barry.Raoofi@atmel.com', N'Barry.Raoofi@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B30170540A AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (9, N'Christophe.Coulee@atmel.com', N'Christophe.Coulee@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B301705C0B AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (10, N'Connie.Hughes@atmel.com', N'Connie.Hughes@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B301707400 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (11, N'Carmencita.Ibarra@atmel.com', N'Carmencita.Ibarra@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B301707A6D AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (12, N'Claudie.Vaillant@atmel.com', N'Claudie.Vaillant@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B3017082B0 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (13, N'Chris.Palma@atmel.com', N'Chris.Palma@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B3017088B5 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (14, N'Damien.Louis@atmel.com', N'Damien.Louis@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B301708F70 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (15, N'Daniel.Guardiola@atmel.com', N'Daniel.Guardiola@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B3017095F5 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (16, N'David.Nguyen@atmel.com', N'David.Nguyen@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B301709CC6 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (17, N'Dan.Harfert@atmel.com', N'Dan.Harfert@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B30170A2FF AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (18, N'Didier.Bernardon@atmel.com', N'Didier.Bernardon@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B30170AB96 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (19, N'Emmanuel.Daumain@atmel.com', N'Emmanuel.Daumain@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B30170B422 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (20, N'Eric.Fonteneau@atmel.com', N'Eric.Fonteneau@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B3017100E5 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (21, N'Francoise.Hubert@atmel.com', N'Francoise.Hubert@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B3017108A6 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (22, N'Janis.Burns@atmel.com', N'Janis.Burns@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B301710E42 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (23, N'Jaymee.Harridge@atmel.com', N'Jaymee.Harridge@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B3017115F1 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (24, N'Jaymee.Harridge@atmel.com', N'Jaymee.Harridge@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B3017115FC AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (25, N'Jane.Lambert@atmel.com', N'Jane.Lambert@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B301711D12 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (26, N'Jennifer.Benger@atmel.com', N'Jennifer.Benger@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B3017123CE AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (27, N'karey.klaus@atmel.com', N'karey.klaus@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B3017129B7 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (28, N'laetitia.potard@atmel.com', N'laetitia.potard@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B3017130C4 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (29, N'Laura.Limb@atmel.com', N'Laura.Limb@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B3017137CA AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (30, N'Linda.Lorimor@atmel.com', N'Linda.Lorimor@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B301714224 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (31, N'Mark.Fisher@atmel.com', N'Mark.Fisher@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B3017147F6 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (32, N'Melissa.Webber@atmel.com', N'Melissa.Webber@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B301714EAD AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (33, N'Mike.Flanagan@atmel.com', N'Mike.Flanagan@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B301715554 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (34, N'mickael.martineau@atmel.com', N'mickael.martineau@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B301715B35 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (35, N'Michael.S.Smith@atmel.com', N'Michael.S.Smith@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B301716324 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (36, N'pascal.bachelier@atmel.com', N'pascal.bachelier@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B30171698A AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (37, N'patrick.bizet@atmel.com', N'patrick.bizet@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B30171727D AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (38, N'phil.johnson@atmel.com', N'phil.johnson@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B3017177D3 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (39, N'pierre.valleau@atmel.com', N'pierre.valleau@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B3017180F6 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (40, N'robert.gaumont@atmel.com', N'robert.gaumont@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B30171865D AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (41, N'Romie.Dellomes@atmel.com', N'Romie.Dellomes@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B301718C28 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (42, N'Sam.Ashman@atmel.com', N'Sam.Ashman@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B3017191EB AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (43, N'Sharon.Hall@atmel.com', N'Sharon.Hall@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B3017198BA AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (44, N'stephane.vandepeutte@atmel.com', N'stephane.vandepeutte@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B301719EA2 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (45, N'thierry.saunier@atmel.com', N'thierry.saunier@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B30171A6B0 AS DateTime), 0)
INSERT [dbo].[EBR_MST.EmailAddress] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (46, N'Veronique.Juille@atmel.com', N'Veronique.Juille@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B30171AD1A AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[EBR_MST.EmailAddress] OFF
SET IDENTITY_INSERT [dbo].[EBR_MST.FabCode] ON 

INSERT [dbo].[EBR_MST.FabCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (1, N'1-CSO', N'1-CSO', N'Admin@atmel.com', CAST(0x0000A5B301731076 AS DateTime), 0)
INSERT [dbo].[EBR_MST.FabCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (2, N'3-RFO', N'3-RFO', N'Admin@atmel.com', CAST(0x0000A5B301731C2F AS DateTime), 0)
INSERT [dbo].[EBR_MST.FabCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (3, N'4-NTS', N'4-NTS', N'Admin@atmel.com', CAST(0x0000A5B3017321CF AS DateTime), 0)
INSERT [dbo].[EBR_MST.FabCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (4, N'5-XFAB', N'5-XFAB', N'Admin@atmel.com', CAST(0x0000A5B301733166 AS DateTime), 0)
INSERT [dbo].[EBR_MST.FabCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (5, N'6-SMIC', N'6-SMIC', N'Admin@atmel.com', CAST(0x0000A5B301733883 AS DateTime), 0)
INSERT [dbo].[EBR_MST.FabCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (6, N'7-UMC', N'7-UMC', N'Admin@atmel.com', CAST(0x0000A5B301733E4B AS DateTime), 0)
INSERT [dbo].[EBR_MST.FabCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (7, N'8-TSMC', N'8-TSMC', N'Admin@atmel.com', CAST(0x0000A5B301734561 AS DateTime), 0)
INSERT [dbo].[EBR_MST.FabCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (8, N'9-MAC', N'9-MAC', N'Admin@atmel.com', CAST(0x0000A5B301734B77 AS DateTime), 0)
INSERT [dbo].[EBR_MST.FabCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (9, N'11-DHT', N'11-DHT', N'Admin@atmel.com', CAST(0x0000A5B30173545F AS DateTime), 0)
INSERT [dbo].[EBR_MST.FabCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (10, N'12-LFG', N'12-LFG', N'Admin@atmel.com', CAST(0x0000A5B301735AFC AS DateTime), 0)
INSERT [dbo].[EBR_MST.FabCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (11, N'13-VIS', N'13-VIS', N'Admin@atmel.com', CAST(0x0000A5B30173609F AS DateTime), 0)
INSERT [dbo].[EBR_MST.FabCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (12, N'14-Tower Jazz (TPS5)', N'14-Tower Jazz (TPS5)', N'Admin@atmel.com', CAST(0x0000A5B301736A3E AS DateTime), 0)
INSERT [dbo].[EBR_MST.FabCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (13, N'15-KyeC', N'15-KyeC', N'Admin@atmel.com', CAST(0x0000A5B30173728E AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[EBR_MST.FabCode] OFF
SET IDENTITY_INSERT [dbo].[EBR_MST.FGLocation] ON 

INSERT [dbo].[EBR_MST.FGLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (1, N'ATMEL HONG KONG', N'ATMEL HONG KONG', N'Admin@atmel.com', CAST(0x0000A5B3015A5CD5 AS DateTime), 0)
INSERT [dbo].[EBR_MST.FGLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (2, N'ATMEL NORWAY', N'ATMEL NORWAY', N'Admin@atmel.com', CAST(0x0000A5B3010A9966 AS DateTime), 0)
INSERT [dbo].[EBR_MST.FGLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (3, N'ATMEL SHANGHAI', N'ATMEL SHANGHAI', N'Admin@atmel.com', CAST(0x0000A5B3010AABC3 AS DateTime), 0)
INSERT [dbo].[EBR_MST.FGLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (4, N'ATMEL TAIWAN', N'ATMEL TAIWAN', N'Admin@atmel.com', CAST(0x0000A5B3010AB81D AS DateTime), 0)
INSERT [dbo].[EBR_MST.FGLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (5, N'CSO1 - ATMEL CSO', N'CSO1 - ATMEL CSO', N'Admin@atmel.com', CAST(0x0000A5B3010B2A92 AS DateTime), 0)
INSERT [dbo].[EBR_MST.FGLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (6, N'HNO5 - ATMEL HNO', N'HNO5 - ATMEL HNO', N'Admin@atmel.com', CAST(0x0000A5B3010B3997 AS DateTime), 0)
INSERT [dbo].[EBR_MST.FGLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (7, N'NTO5 - ATMEL NTO', N'NTO5 - ATMEL NTO', N'Admin@atmel.com', CAST(0x0000A5B3010B66B0 AS DateTime), 0)
INSERT [dbo].[EBR_MST.FGLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (8, N'RFO5 - ATMEL RFO', N'RFO5 - ATMEL RFO', N'Admin@atmel.com', CAST(0x0000A5B3010B8311 AS DateTime), 0)
INSERT [dbo].[EBR_MST.FGLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (9, N'SJO1 - ATMEL SJO', N'SJO1 - ATMEL SJO', N'Admin@atmel.com', CAST(0x0000A5B3010BCFF3 AS DateTime), 0)
INSERT [dbo].[EBR_MST.FGLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (10, N'ACP5 - ACP Test Company', N'ACP5 - ACP Test Company', N'Admin@atmel.com', CAST(0x0000A5B3010BE474 AS DateTime), 0)
INSERT [dbo].[EBR_MST.FGLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (11, N'AIC5 - AIC MALAYSIA', N'AIC5 - AIC MALAYSIA', N'Admin@atmel.com', CAST(0x0000A5B3010C1332 AS DateTime), 0)
INSERT [dbo].[EBR_MST.FGLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (12, N'ASE5 - ASE CHUNG-LI TAIWAN', N'ASE5 - ASE CHUNG-LI TAIWAN', N'Admin@atmel.com', CAST(0x0000A5B3010C1F05 AS DateTime), 0)
INSERT [dbo].[EBR_MST.FGLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (13, N'ASE6 - ASE KAOHSIUNG TAIWAN', N'ASE6 - ASE KAOHSIUNG TAIWAN', N'Admin@atmel.com', CAST(0x0000A5B3010CB32C AS DateTime), 0)
INSERT [dbo].[EBR_MST.FGLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (14, N'ASE7 - ASE MALAYSIA', N'ASE7 - ASE MALAYSIA', N'Admin@atmel.com', CAST(0x0000A5B3010CBE90 AS DateTime), 0)
INSERT [dbo].[EBR_MST.FGLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (15, N'ASE8 - ASE SHANGHAI (GAPT)', N'ASE8 - ASE SHANGHAI (GAPT)', N'Admin@atmel.com', CAST(0x0000A5B3010D0D3A AS DateTime), 0)
INSERT [dbo].[EBR_MST.FGLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (16, N'ASE9 - ASE TAIWAN', N'ASE9 - ASE TAIWAN', N'Admin@atmel.com', CAST(0x0000A5B3010D18A3 AS DateTime), 0)
INSERT [dbo].[EBR_MST.FGLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (17, N'ATC5 - AMKOR ASSY&TEST (Shanghai)', N'ATC5 - AMKOR ASSY&TEST (Shanghai)', N'Admin@atmel.com', CAST(0x0000A5B3015B1A0D AS DateTime), 0)
INSERT [dbo].[EBR_MST.FGLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (18, N'ATK5 - ATK K1 SEOUL KOREA', N'ATK5 - ATK K1 SEOUL KOREA', N'Admin@atmel.com', CAST(0x0000A5B3015BB0FF AS DateTime), 0)
INSERT [dbo].[EBR_MST.FGLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (19, N'ATK6 - ATK K3 INCHEON KOREA', N'ATK6 - ATK K3 INCHEON KOREA', N'Admin@atmel.com', CAST(0x0000A5B3015C9D48 AS DateTime), 0)
INSERT [dbo].[EBR_MST.FGLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (20, N'ATK7 - ATK K4 KWANGIU KOREA', N'ATK7 - ATK K4 KWANGIU KOREA', N'Admin@atmel.com', CAST(0x0000A5B3015CA4F8 AS DateTime), 0)
INSERT [dbo].[EBR_MST.FGLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (21, N'ATP6 - ATP P1 PHILIPPINES', N'ATP6 - ATP P1 PHILIPPINES', N'Admin@atmel.com', CAST(0x0000A5B3015CAD47 AS DateTime), 0)
INSERT [dbo].[EBR_MST.FGLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (22, N'ATP7 - ATP P3 PHILIPPINES', N'ATP7 - ATP P3 PHILIPPINES', N'Admin@atmel.com', CAST(0x0000A5B3015CB444 AS DateTime), 0)
INSERT [dbo].[EBR_MST.FGLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (23, N'ATP8 - AMKOR TECHNOLOGY PHILIP. P4', N'ATP8 - AMKOR TECHNOLOGY PHILIP. P4', N'Admin@atmel.com', CAST(0x0000A5B3015CBDFD AS DateTime), 0)
INSERT [dbo].[EBR_MST.FGLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (24, N'ATT5 - AMKOR TECHNOLOGY TAIWAN T3', N'ATT5 - AMKOR TECHNOLOGY TAIWAN T3', N'Admin@atmel.com', CAST(0x0000A5B3015CC4D3 AS DateTime), 0)
INSERT [dbo].[EBR_MST.FGLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (25, N'CPC5 - STATS ChipPAC CHINA', N'CPC5 - STATS ChipPAC CHINA', N'Admin@atmel.com', CAST(0x0000A5B3015CCC9E AS DateTime), 0)
INSERT [dbo].[EBR_MST.FGLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (26, N'CPK5 - STATS ChipPAC KOREA', N'CPK5 - STATS ChipPAC KOREA', N'Admin@atmel.com', CAST(0x0000A5B3015CD3FC AS DateTime), 0)
INSERT [dbo].[EBR_MST.FGLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (27, N'CPM5 - STATS ChipPAC MALAYSIA', N'CPM5 - STATS ChipPAC MALAYSIA', N'Admin@atmel.com', CAST(0x0000A5B3015CDB0C AS DateTime), 0)
INSERT [dbo].[EBR_MST.FGLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (28, N'FUJ5 - Fujitsu Micro', N'FUJ5 - Fujitsu Micro', N'Admin@atmel.com', CAST(0x0000A5B3015CE1F8 AS DateTime), 0)
INSERT [dbo].[EBR_MST.FGLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (29, N'GRT5 - Greatek Electronics Inc.', N'GRT5 - Greatek Electronics Inc.', N'Admin@atmel.com', CAST(0x0000A5B3015CEEDF AS DateTime), 0)
INSERT [dbo].[EBR_MST.FGLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (30, N'JCA5 - JCAP CHINA', N'JCA5 - JCAP CHINA', N'Admin@atmel.com', CAST(0x0000A5B3015CFD01 AS DateTime), 0)
INSERT [dbo].[EBR_MST.FGLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (31, N'JCE5 - JCET', N'JCE5 - JCET', N'Admin@atmel.com', CAST(0x0000A5B3015D03D2 AS DateTime), 0)
INSERT [dbo].[EBR_MST.FGLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (32, N'LNG5 - LINGSEN TAIWAN', N'LNG5 - LINGSEN TAIWAN', N'Admin@atmel.com', CAST(0x0000A5B3015D0AEC AS DateTime), 0)
INSERT [dbo].[EBR_MST.FGLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (33, N'UTC5 - UTAC Thai Limited', N'UTC5 - UTAC Thai Limited', N'Admin@atmel.com', CAST(0x0000A5B3015D1171 AS DateTime), 0)
INSERT [dbo].[EBR_MST.FGLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (34, N'NO TEST', N'NO TEST', N'Admin@atmel.com', CAST(0x0000A5B3015D1886 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[EBR_MST.FGLocation] OFF
SET IDENTITY_INSERT [dbo].[EBR_MST.MarkingInstruction] ON 

INSERT [dbo].[EBR_MST.MarkingInstruction] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (1, N'As Shown Below', N'As Shown Below', N'Admin@atmel.com', CAST(0x0000A5B30174F29A AS DateTime), 0)
INSERT [dbo].[EBR_MST.MarkingInstruction] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (2, N'Mark per MA-5005 (SJO Only)', N'Mark per MA-5005 (SJO Only)', N'Admin@atmel.com', CAST(0x0000A5B301750A1D AS DateTime), 0)
INSERT [dbo].[EBR_MST.MarkingInstruction] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (3, N'Mark per Attached file', N'Mark per Attached file', N'Admin@atmel.com', CAST(0x0000A5B3017511BD AS DateTime), 0)
INSERT [dbo].[EBR_MST.MarkingInstruction] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (4, N'PER IMS PID (RFO/NTO)', N'PER IMS PID (RFO/NTO)', N'Admin@atmel.com', CAST(0x0000A5B3017517FB AS DateTime), 0)
INSERT [dbo].[EBR_MST.MarkingInstruction] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (5, N'As Shown Below & Serialize', N'As Shown Below & Serialize', N'Admin@atmel.com', CAST(0x0000A5B301751F7D AS DateTime), 0)
INSERT [dbo].[EBR_MST.MarkingInstruction] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (6, N'Standard CSO DV Marking', N'Standard CSO DV Marking', N'Admin@atmel.com', CAST(0x0000A5B3017527AB AS DateTime), 0)
INSERT [dbo].[EBR_MST.MarkingInstruction] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (7, N'Standard CSO DV & Serialize', N'Standard CSO DV & Serialize', N'Admin@atmel.com', CAST(0x0000A5B301752E5F AS DateTime), 0)
INSERT [dbo].[EBR_MST.MarkingInstruction] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (8, N'www.atmel-nantes.fr/topmarks ', N'www.atmel-nantes.fr/topmarks ', N'Admin@atmel.com', CAST(0x0000A5B301753AE0 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[EBR_MST.MarkingInstruction] OFF
SET IDENTITY_INSERT [dbo].[EBR_MST.MarkingSL] ON 

INSERT [dbo].[EBR_MST.MarkingSL] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (1, N'EEEE (Special Marking)', N'EEEE (Special Marking)', N'Admin@atmel.com', CAST(0x0000A5B301779ECC AS DateTime), 0)
INSERT [dbo].[EBR_MST.MarkingSL] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (2, N'QS', N'QS', N'Admin@atmel.com', CAST(0x0000A5B30177A8B5 AS DateTime), 0)
INSERT [dbo].[EBR_MST.MarkingSL] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (3, N'SL', N'SL', N'Admin@atmel.com', CAST(0x0000A5B30177AF43 AS DateTime), 0)
INSERT [dbo].[EBR_MST.MarkingSL] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (4, N'TA', N'TA', N'Admin@atmel.com', CAST(0x0000A5B30177B68A AS DateTime), 0)
INSERT [dbo].[EBR_MST.MarkingSL] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (5, N'AL', N'AL', N'Admin@atmel.com', CAST(0x0000A5B30177BF6F AS DateTime), 0)
INSERT [dbo].[EBR_MST.MarkingSL] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (6, N'TS', N'TS', N'Admin@atmel.com', CAST(0x0000A5B30177C560 AS DateTime), 0)
INSERT [dbo].[EBR_MST.MarkingSL] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (7, N'Requestor_LOC', N'Requestor_LOC', N'Admin@atmel.com', CAST(0x0000A5B30177CB4F AS DateTime), 1)
INSERT [dbo].[EBR_MST.MarkingSL] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (8, N'CSO', N'CSO', N'Admin@atmel.com', CAST(0x0000A5B30177D3DB AS DateTime), 1)
INSERT [dbo].[EBR_MST.MarkingSL] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (9, N'HNO', N'HNO', N'Admin@atmel.com', CAST(0x0000A5B30177DA0A AS DateTime), 1)
INSERT [dbo].[EBR_MST.MarkingSL] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (10, N'NTO', N'NTO', N'Admin@atmel.com', CAST(0x0000A5B30177E126 AS DateTime), 1)
INSERT [dbo].[EBR_MST.MarkingSL] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (11, N'RFO', N'RFO', N'Admin@atmel.com', CAST(0x0000A5B30177E9A7 AS DateTime), 1)
INSERT [dbo].[EBR_MST.MarkingSL] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (12, N'SJO', N'SJO', N'Admin@atmel.com', CAST(0x0000A5B3017806E8 AS DateTime), 1)
INSERT [dbo].[EBR_MST.MarkingSL] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (13, N'ACP', N'ACP', N'Admin@atmel.com', CAST(0x0000A5B3017810E5 AS DateTime), 1)
INSERT [dbo].[EBR_MST.MarkingSL] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (14, N'ATMEL_HK', N'ATMEL_HK', N'Admin@atmel.com', CAST(0x0000A5B301781882 AS DateTime), 1)
INSERT [dbo].[EBR_MST.MarkingSL] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (15, N'ATMEL_NOR', N'ATMEL_NOR', N'Admin@atmel.com', CAST(0x0000A5B30178236B AS DateTime), 1)
INSERT [dbo].[EBR_MST.MarkingSL] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (16, N'ATMEL_SH', N'ATMEL_SH', N'Admin@atmel.com', CAST(0x0000A5B30178297E AS DateTime), 1)
INSERT [dbo].[EBR_MST.MarkingSL] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (17, N'ATMEL_TAIWAN', N'ATMEL_TAIWAN', N'Admin@atmel.com', CAST(0x0000A5B30178310A AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[EBR_MST.MarkingSL] OFF
SET IDENTITY_INSERT [dbo].[EBR_MST.Owner] ON 

INSERT [dbo].[EBR_MST.Owner] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (1, N'QA', N'QA', N'Admin@atmel.com', CAST(0x0000A5B301786F6B AS DateTime), 0)
INSERT [dbo].[EBR_MST.Owner] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (2, N'NSTD', N'NSTD', N'Admin@atmel.com', CAST(0x0000A5B30178762F AS DateTime), 0)
INSERT [dbo].[EBR_MST.Owner] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (3, N'NCR', N'NCR', N'Admin@atmel.com', CAST(0x0000A5B301787C3E AS DateTime), 0)
INSERT [dbo].[EBR_MST.Owner] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (4, N'RISK', N'RISK', N'Admin@atmel.com', CAST(0x0000A5B301788117 AS DateTime), 0)
INSERT [dbo].[EBR_MST.Owner] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (5, N'DEV', N'DEV', N'Admin@atmel.com', CAST(0x0000A5B30178877D AS DateTime), 0)
INSERT [dbo].[EBR_MST.Owner] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (6, N'PROTO', N'PROTO', N'Admin@atmel.com', CAST(0x0000A5B301788CAD AS DateTime), 0)
INSERT [dbo].[EBR_MST.Owner] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (7, N'DESRV', N'DESRV', N'Admin@atmel.com', CAST(0x0000A5B30178916F AS DateTime), 0)
INSERT [dbo].[EBR_MST.Owner] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (8, N'ENG', N'ENG', N'Admin@atmel.com', CAST(0x0000A5B301789748 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[EBR_MST.Owner] OFF
SET IDENTITY_INSERT [dbo].[EBR_MST.Package] ON 

INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (1, N'SOIC', N'SOIC', N'Admin@atmel.com', CAST(0x0000A5B4015AC026 AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (2, N'UDFN (Sawn)', N'UDFN (Sawn)', N'Admin@atmel.com', CAST(0x0000A5B4015AD182 AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (3, N'TSSOP', N'TSSOP', N'Admin@atmel.com', CAST(0x0000A5B4015AE79A AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (4, N'PDIP', N'PDIP', N'Admin@atmel.com', CAST(0x0000A5B4015AF1C0 AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (5, N'WLCSP', N'WLCSP', N'Admin@atmel.com', CAST(0x0000A5B4015AF9A6 AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (6, N'SIDEBRAZE', N'SIDEBRAZE', N'Admin@atmel.com', CAST(0x0000A5B4015B0066 AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (7, N'VQFN (Sawn)', N'VQFN (Sawn)', N'Admin@atmel.com', CAST(0x0000A5B4015B06C1 AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (8, N'UQFN (Sawn)', N'UQFN (Sawn)', N'Admin@atmel.com', CAST(0x0000A5B4015B0E49 AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (9, N'VQFN (Punched)', N'VQFN (Punched)', N'Admin@atmel.com', CAST(0x0000A5B4015B15FC AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (10, N'XQFN', N'XQFN', N'Admin@atmel.com', CAST(0x0000A5B4015B1FCA AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (11, N'XDFN', N'XDFN', N'Admin@atmel.com', CAST(0x0000A5B4015B2679 AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (12, N'LFBGA', N'LFBGA', N'Admin@atmel.com', CAST(0x0000A5B4015B2CEB AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (13, N'TFBGA', N'TFBGA', N'Admin@atmel.com', CAST(0x0000A5B4015B35A3 AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (14, N'CBGA', N'CBGA', N'Admin@atmel.com', CAST(0x0000A5B4015B404E AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (15, N'CERDIP', N'CERDIP', N'Admin@atmel.com', CAST(0x0000A5B4015B48C8 AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (16, N'DFCard', N'DFCard', N'Admin@atmel.com', CAST(0x0000A5B4015B4F23 AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (17, N'FPACK', N'FPACK', N'Admin@atmel.com', CAST(0x0000A5B4015B56AC AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (18, N'FC', N'FC', N'Admin@atmel.com', CAST(0x0000A5B4015B5D03 AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (19, N'CQUAD', N'CQUAD', N'Admin@atmel.com', CAST(0x0000A5B4015B6CFE AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (20, N'LGA', N'LGA', N'Admin@atmel.com', CAST(0x0000A5B4015B740D AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (21, N'TQFP', N'TQFP', N'Admin@atmel.com', CAST(0x0000A5B4015B7A72 AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (22, N'LCC or LCCP', N'LCC or LCCP', N'Admin@atmel.com', CAST(0x0000A5B4015B8089 AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (23, N'LQFP', N'LQFP', N'Admin@atmel.com', CAST(0x0000A5B4015B8760 AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (24, N'MBGA', N'MBGA', N'Admin@atmel.com', CAST(0x0000A5B4015B8DA8 AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (25, N'MLF', N'MLF', N'Admin@atmel.com', CAST(0x0000A5B4015B93B4 AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (26, N'SSOP', N'SSOP', N'Admin@atmel.com', CAST(0x0000A5B4015B99E4 AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (27, N'PGA', N'PGA', N'Admin@atmel.com', CAST(0x0000A5B4015BA160 AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (28, N'PLCC', N'PLCC', N'Admin@atmel.com', CAST(0x0000A5B4015BA78B AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (29, N'PQFP', N'PQFP', N'Admin@atmel.com', CAST(0x0000A5B4015BAD34 AS DateTime), 0)
INSERT [dbo].[EBR_MST.Package] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (30, N'CASON', N'CASON', N'Admin@atmel.com', CAST(0x0000A5B4015BB327 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[EBR_MST.Package] OFF
SET IDENTITY_INSERT [dbo].[EBR_MST.PackageTestType] ON 

INSERT [dbo].[EBR_MST.PackageTestType] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (1, N'Strip Test', N'Strip Test', N'Admin@atmel.com', CAST(0x0000A5B4015C57F5 AS DateTime), 0)
INSERT [dbo].[EBR_MST.PackageTestType] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (2, N'Single Unit Test', N'Single Unit Test', N'Admin@atmel.com', CAST(0x0000A5B4015C63C1 AS DateTime), 0)
INSERT [dbo].[EBR_MST.PackageTestType] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (3, N'No Test', N'No Test', N'Admin@atmel.com', CAST(0x0000A5B4015C6C43 AS DateTime), 0)
INSERT [dbo].[EBR_MST.PackageTestType] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (4, N'Multi Unit Test', N'Multi Unit Test', N'Admin@atmel.com', CAST(0x0000A5B4015C7398 AS DateTime), 0)
INSERT [dbo].[EBR_MST.PackageTestType] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (5, N'Hand Test', N'Hand Test', N'Admin@atmel.com', CAST(0x0000A5B4015C7A53 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[EBR_MST.PackageTestType] OFF
SET IDENTITY_INSERT [dbo].[EBR_MST.PackingType] ON 

INSERT [dbo].[EBR_MST.PackingType] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (1, N'Bakeable Tray', N'Bakeable Tray', N'Admin@atmel.com', CAST(0x0000A5B4015CB730 AS DateTime), 0)
INSERT [dbo].[EBR_MST.PackingType] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (2, N'Tube', N'Tube', N'Admin@atmel.com', CAST(0x0000A5B4015CBEE5 AS DateTime), 0)
INSERT [dbo].[EBR_MST.PackingType] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (3, N'Tape and Reel per MP-5001', N'Tape and Reel per MP-5001', N'Admin@atmel.com', CAST(0x0000A5B4015CC4C9 AS DateTime), 0)
INSERT [dbo].[EBR_MST.PackingType] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (4, N'ESD Bag or Canister', N'ESD Bag or Canister', N'Admin@atmel.com', CAST(0x0000A5B4015CCB4A AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[EBR_MST.PackingType] OFF
SET IDENTITY_INSERT [dbo].[EBR_MST.PKGProcessType] ON 

INSERT [dbo].[EBR_MST.PKGProcessType] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (1, N'A - Aut(1)-40to125C-Std Pltg w/Pb', N'A - Aut(1)-40to125C-Std Pltg w/Pb', N'Admin@atmel.com', CAST(0x0000A5B401792CFA AS DateTime), 0)
INSERT [dbo].[EBR_MST.PKGProcessType] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (2, N'B - Aut(2)-40to105C-Grn(MatSn/SnA)', N'B - Aut(2)-40to105C-Grn(MatSn/SnA)', N'Admin@atmel.com', CAST(0x0000A5B401793411 AS DateTime), 0)
INSERT [dbo].[EBR_MST.PKGProcessType] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (3, N'C - Comm 0to70C-Std Plating', N'C - Comm 0to70C-Std Plating', N'Admin@atmel.com', CAST(0x0000A5B401793974 AS DateTime), 0)
INSERT [dbo].[EBR_MST.PKGProcessType] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (4, N'D - Aut(0)-40to150C-Grn(MatSn/SnA)', N'D - Aut(0)-40to150C-Grn(MatSn/SnA)', N'Admin@atmel.com', CAST(0x0000A5B401793F39 AS DateTime), 0)
INSERT [dbo].[EBR_MST.PKGProcessType] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (5, N'E -EHGr -40to125C-Std Plating w/Pb', N'E -EHGr -40to125C-Std Plating w/Pb', N'Admin@atmel.com', CAST(0x0000A5B40179453F AS DateTime), 0)
INSERT [dbo].[EBR_MST.PKGProcessType] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (6, N'F - Ind(C)-40to125C-Green/MatSn', N'F - Ind(C)-40to125C-Green/MatSn', N'Admin@atmel.com', CAST(0x0000A5B401794C40 AS DateTime), 0)
INSERT [dbo].[EBR_MST.PKGProcessType] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (7, N'G - Comm 0to70C-Green(NiPdAu/AA)', N'G - Comm 0to70C-Green(NiPdAu/AA)', N'Admin@atmel.com', CAST(0x0000A5B4017951C5 AS DateTime), 0)
INSERT [dbo].[EBR_MST.PKGProcessType] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (8, N'H - Ind(A)-40to85C-Grn(NiPdAu/AA)', N'H - Ind(A)-40to85C-Grn(NiPdAu/AA)', N'Admin@atmel.com', CAST(0x0000A5B40179582B AS DateTime), 0)
INSERT [dbo].[EBR_MST.PKGProcessType] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (9, N'I - Ind(A)-40to85C-Std Pltg w/Pb', N'I - Ind(A)-40to85C-Std Pltg w/Pb', N'Admin@atmel.com', CAST(0x0000A5B401795DFC AS DateTime), 0)
INSERT [dbo].[EBR_MST.PKGProcessType] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (10, N'J - Aut(0)-40to150C-Grn(NiPdAu)+GF', N'J - Aut(0)-40to150C-Grn(NiPdAu)+GF', N'Admin@atmel.com', CAST(0x0000A5B4017963CC AS DateTime), 0)
INSERT [dbo].[EBR_MST.PKGProcessType] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (11, N'K - Aut(2)-40to105C-Grn(NiPdAu/AA)', N'K - Aut(2)-40to105C-Grn(NiPdAu/AA)', N'Admin@atmel.com', CAST(0x0000A5B40179698D AS DateTime), 0)
INSERT [dbo].[EBR_MST.PKGProcessType] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (12, N'L - Comm-RoHS compliant/SnAlloy', N'L - Comm-RoHS compliant/SnAlloy', N'Admin@atmel.com', CAST(0x0000A5B401796EE5 AS DateTime), 0)
INSERT [dbo].[EBR_MST.PKGProcessType] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (13, N'M - Military-Std Plating w Pb', N'M - Military-Std Plating w Pb', N'Admin@atmel.com', CAST(0x0000A5B4017976DE AS DateTime), 0)
INSERT [dbo].[EBR_MST.PKGProcessType] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (14, N'N - Ind(B)-40to105C-Green/MatSn', N'N - Ind(B)-40to105C-Green/MatSn', N'Admin@atmel.com', CAST(0x0000A5B401797D0E AS DateTime), 0)
INSERT [dbo].[EBR_MST.PKGProcessType] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (15, N'P - HGr-40to105C-Green(NiPdAu/AA)', N'P - HGr-40to105C-Green(NiPdAu/AA)', N'Admin@atmel.com', CAST(0x0000A5B401798302 AS DateTime), 0)
INSERT [dbo].[EBR_MST.PKGProcessType] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (16, N'Q - HGr-40to105C-Green(MatSn/SnA)', N'Q - HGr-40to105C-Green(MatSn/SnA)', N'Admin@atmel.com', CAST(0x0000A5B40179887F AS DateTime), 0)
INSERT [dbo].[EBR_MST.PKGProcessType] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (17, N'R - Aut(1)-40to125C-Grn(NiPdAu/AA)', N'R - Aut(1)-40to125C-Grn(NiPdAu/AA)', N'Admin@atmel.com', CAST(0x0000A5B401798D52 AS DateTime), 0)
INSERT [dbo].[EBR_MST.PKGProcessType] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (18, N'S - Space-Std Plating w/ Pb', N'S - Space-Std Plating w/ Pb', N'Admin@atmel.com', CAST(0x0000A5B4017991B4 AS DateTime), 0)
INSERT [dbo].[EBR_MST.PKGProcessType] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (19, N'T - Aut(3)-40to85C-Grn(MatSn/SnA)', N'T - Aut(3)-40to85C-Grn(MatSn/SnA)', N'Admin@atmel.com', CAST(0x0000A5B401799637 AS DateTime), 0)
INSERT [dbo].[EBR_MST.PKGProcessType] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (20, N'U - Ind(A)-40to85C-Grn(MatSn/SnA)', N'U - Ind(A)-40to85C-Grn(MatSn/SnA)', N'Admin@atmel.com', CAST(0x0000A5B401799ABC AS DateTime), 0)
INSERT [dbo].[EBR_MST.PKGProcessType] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (21, N'V - No Temp Grade-Std Plating w/Pb', N'V - No Temp Grade-Std Plating w/Pb', N'Admin@atmel.com', CAST(0x0000A5B40179A196 AS DateTime), 0)
INSERT [dbo].[EBR_MST.PKGProcessType] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (22, N'W - No Temp Grade-Green(MatSn/SnA)', N'W - No Temp Grade-Green(MatSn/SnA)', N'Admin@atmel.com', CAST(0x0000A5B40179A673 AS DateTime), 0)
INSERT [dbo].[EBR_MST.PKGProcessType] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (23, N'X - Comm 0to70C-Green(MatSn/SnA)', N'X - Comm 0to70C-Green(MatSn/SnA)', N'Admin@atmel.com', CAST(0x0000A5B40179AD3A AS DateTime), 0)
INSERT [dbo].[EBR_MST.PKGProcessType] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (24, N'Y - No Temp Grade-RoHS compliant', N'Y - No Temp Grade-RoHS compliant', N'Admin@atmel.com', CAST(0x0000A5B40179B164 AS DateTime), 0)
INSERT [dbo].[EBR_MST.PKGProcessType] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (25, N'Z - Aut(1)-40to125C-Grn(MatSn/SnA)', N'Z - Aut(1)-40to125C-Grn(MatSn/SnA)', N'Admin@atmel.com', CAST(0x0000A5B40179B5CB AS DateTime), 0)
INSERT [dbo].[EBR_MST.PKGProcessType] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (26, N'2 - Ind(D)-25to85C-Green/NiPdAu', N'2 - Ind(D)-25to85C-Green/NiPdAu', N'Admin@atmel.com', CAST(0x0000A5B40179BBC6 AS DateTime), 0)
INSERT [dbo].[EBR_MST.PKGProcessType] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (27, N'3 - Ind(D)-25to85C-Green/MatSn', N'3 - Ind(D)-25to85C-Green/MatSn', N'Admin@atmel.com', CAST(0x0000A5B40179C065 AS DateTime), 0)
INSERT [dbo].[EBR_MST.PKGProcessType] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (28, N'4 - Specific Temp-Std Plating w/Pb', N'4 - Specific Temp-Std Plating w/Pb', N'Admin@atmel.com', CAST(0x0000A5B40179C4F6 AS DateTime), 0)
INSERT [dbo].[EBR_MST.PKGProcessType] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (29, N'5 - Specific Temp-Green/NiPdAu', N'5 - Specific Temp-Green/NiPdAu', N'Admin@atmel.com', CAST(0x0000A5B40179C980 AS DateTime), 0)
INSERT [dbo].[EBR_MST.PKGProcessType] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (30, N'6 - Specific Temp-Green/MatSn', N'6 - Specific Temp-Green/MatSn', N'Admin@atmel.com', CAST(0x0000A5B40179D219 AS DateTime), 0)
INSERT [dbo].[EBR_MST.PKGProcessType] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (31, N'7 - Ind(B)-40to105C-Green/NiPdAu', N'7 - Ind(B)-40to105C-Green/NiPdAu', N'Admin@atmel.com', CAST(0x0000A5B40179D732 AS DateTime), 0)
INSERT [dbo].[EBR_MST.PKGProcessType] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (32, N'8 - Ind(C)-40to125C-Green/NiPdAu', N'8 - Ind(C)-40to125C-Green/NiPdAu', N'Admin@atmel.com', CAST(0x0000A5B40179DB78 AS DateTime), 0)
INSERT [dbo].[EBR_MST.PKGProcessType] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (33, N'9 - Aut(3)-40to85C-Green/NiPdAu', N'9 - Aut(3)-40to85C-Green/NiPdAu', N'Admin@atmel.com', CAST(0x0000A5B40179E0BE AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[EBR_MST.PKGProcessType] OFF
SET IDENTITY_INSERT [dbo].[EBR_MST.PriorityOfAssemblyBuild] ON 

INSERT [dbo].[EBR_MST.PriorityOfAssemblyBuild] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (1, N'FAST TRACK (ASSEMBLY ONLY-NO QUAL LOTS)', N'FAST TRACK (ASSEMBLY ONLY-NO QUAL LOTS)', N'Admin@atmel.com', CAST(0x0000A5B4015E053A AS DateTime), 0)
INSERT [dbo].[EBR_MST.PriorityOfAssemblyBuild] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (2, N'STANDARD CYCLE TIME', N'STANDARD CYCLE TIME', N'Admin@atmel.com', CAST(0x0000A5B4015E0EA0 AS DateTime), 0)
INSERT [dbo].[EBR_MST.PriorityOfAssemblyBuild] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (3, N'FAST TRACK (24 HOURS)(NO QUAL LOTS)', N'FAST TRACK (24 HOURS)(NO QUAL LOTS)', N'Admin@atmel.com', CAST(0x0000A5B4015E14AF AS DateTime), 0)
INSERT [dbo].[EBR_MST.PriorityOfAssemblyBuild] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (4, N'FAST TRACK (3 DAY)(NO QUAL LOTS)', N'FAST TRACK (3 DAY)(NO QUAL LOTS)', N'Admin@atmel.com', CAST(0x0000A5B4015E1AB2 AS DateTime), 0)
INSERT [dbo].[EBR_MST.PriorityOfAssemblyBuild] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (5, N'FAST TRACK (5 DAY) (NO QUAL LOTS)', N'FAST TRACK (5 DAY) (NO QUAL LOTS)', N'Admin@atmel.com', CAST(0x0000A5B4015E20EA AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[EBR_MST.PriorityOfAssemblyBuild] OFF
SET IDENTITY_INSERT [dbo].[EBR_MST.ProbeStatus] ON 

INSERT [dbo].[EBR_MST.ProbeStatus] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (1, N'Blind Build', N'Blind Build', N'Admin@atmel.com', CAST(0x0000A5B4015EBA35 AS DateTime), 0)
INSERT [dbo].[EBR_MST.ProbeStatus] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (2, N'Wafer Map (See Portal)', N'Wafer Map (See Portal)', N'Admin@atmel.com', CAST(0x0000A5B4015EC039 AS DateTime), 0)
INSERT [dbo].[EBR_MST.ProbeStatus] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (3, N'Wafer Map', N'Wafer Map', N'Admin@atmel.com', CAST(0x0000A5B4015ECFA8 AS DateTime), 0)
INSERT [dbo].[EBR_MST.ProbeStatus] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (4, N'Inked Die', N'Inked Die', N'Admin@atmel.com', CAST(0x0000A5B4015ED5F9 AS DateTime), 0)
INSERT [dbo].[EBR_MST.ProbeStatus] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (5, N'Other', N'Other', N'Admin@atmel.com', CAST(0x0000A5B4015EDC93 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[EBR_MST.ProbeStatus] OFF
SET IDENTITY_INSERT [dbo].[EBR_MST.ProcessLTS] ON 

INSERT [dbo].[EBR_MST.ProcessLTS] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (1, N'ASM_Only', N'ASM_Only', N'Admin@atmel.com', CAST(0x0000A5B4015F2E9D AS DateTime), 0)
INSERT [dbo].[EBR_MST.ProcessLTS] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (2, N'ASM_TST', N'ASM_TST', N'Admin@atmel.com', CAST(0x0000A5B4015F3672 AS DateTime), 0)
INSERT [dbo].[EBR_MST.ProcessLTS] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (3, N'ASM_TST_TR', N'ASM_TST_TR', N'Admin@atmel.com', CAST(0x0000A5B4015F3E0A AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[EBR_MST.ProcessLTS] OFF
SET IDENTITY_INSERT [dbo].[EBR_MST.QualityLevel] ON 

INSERT [dbo].[EBR_MST.QualityLevel] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (1, N'Military', N'Military', N'Admin@atmel.com', CAST(0x0000A5B4015F924C AS DateTime), 0)
INSERT [dbo].[EBR_MST.QualityLevel] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (2, N'Automotive', N'Automotive', N'Admin@atmel.com', CAST(0x0000A5B4015F9D9E AS DateTime), 0)
INSERT [dbo].[EBR_MST.QualityLevel] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (3, N'Commercial', N'Commercial', N'Admin@atmel.com', CAST(0x0000A5B4015FA399 AS DateTime), 0)
INSERT [dbo].[EBR_MST.QualityLevel] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (4, N'Industrial', N'Industrial', N'Admin@atmel.com', CAST(0x0000A5B4015FAC1D AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[EBR_MST.QualityLevel] OFF
SET IDENTITY_INSERT [dbo].[EBR_MST.RequesterLocation] ON 

INSERT [dbo].[EBR_MST.RequesterLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (1, N'CSO', N'CSO', N'Admin@atmel.com', CAST(0x0000A5B4016059B7 AS DateTime), 0)
INSERT [dbo].[EBR_MST.RequesterLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (2, N'HNO', N'HNO', N'Admin@atmel.com', CAST(0x0000A5B401606169 AS DateTime), 0)
INSERT [dbo].[EBR_MST.RequesterLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (3, N'NTO', N'NTO', N'Admin@atmel.com', CAST(0x0000A5B401606A08 AS DateTime), 0)
INSERT [dbo].[EBR_MST.RequesterLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (4, N'RFO', N'RFO', N'Admin@atmel.com', CAST(0x0000A5B401606F8C AS DateTime), 0)
INSERT [dbo].[EBR_MST.RequesterLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (5, N'SJO', N'SJO', N'Admin@atmel.com', CAST(0x0000A5B401607737 AS DateTime), 0)
INSERT [dbo].[EBR_MST.RequesterLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (6, N'ACP', N'ACP', N'Admin@atmel.com', CAST(0x0000A5B401607CD2 AS DateTime), 0)
INSERT [dbo].[EBR_MST.RequesterLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (7, N'ATMEL_HK', N'ATMEL_HK', N'Admin@atmel.com', CAST(0x0000A5B4016082DD AS DateTime), 0)
INSERT [dbo].[EBR_MST.RequesterLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (8, N'ATMEL_NOR', N'ATMEL_NOR', N'Admin@atmel.com', CAST(0x0000A5B401608885 AS DateTime), 0)
INSERT [dbo].[EBR_MST.RequesterLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (9, N'ATMEL_SH', N'ATMEL_SH', N'Admin@atmel.com', CAST(0x0000A5B401608E57 AS DateTime), 0)
INSERT [dbo].[EBR_MST.RequesterLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (10, N'ATMEL_TAIWAN', N'ATMEL_TAIWAN', N'Admin@atmel.com', CAST(0x0000A5B401609452 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[EBR_MST.RequesterLocation] OFF
SET IDENTITY_INSERT [dbo].[EBR_MST.RevenueLocation] ON 

INSERT [dbo].[EBR_MST.RevenueLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (1, N'CSO', N'CSO', N'Admin@atmel.com', CAST(0x0000A5B401610474 AS DateTime), 0)
INSERT [dbo].[EBR_MST.RevenueLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (2, N'SJO', N'SJO', N'Admin@atmel.com', CAST(0x0000A5B401610A33 AS DateTime), 0)
INSERT [dbo].[EBR_MST.RevenueLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (3, N'NTO', N'NTO', N'Admin@atmel.com', CAST(0x0000A5B40161115E AS DateTime), 0)
INSERT [dbo].[EBR_MST.RevenueLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (4, N'RFO', N'RFO', N'Admin@atmel.com', CAST(0x0000A5B401611720 AS DateTime), 0)
INSERT [dbo].[EBR_MST.RevenueLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (5, N'HNO', N'HNO', N'Admin@atmel.com', CAST(0x0000A5B401611DE3 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[EBR_MST.RevenueLocation] OFF
SET IDENTITY_INSERT [dbo].[EBR_MST.VendorCode] ON 

INSERT [dbo].[EBR_MST.VendorCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (1, N'A', N'A', N'Admin@atmel.com', CAST(0x0000A5B4016187A7 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (2, N'AA', N'AA', N'Admin@atmel.com', CAST(0x0000A5B401618EAD AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (3, N'AB', N'AB', N'Admin@atmel.com', CAST(0x0000A5B401619744 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (4, N'AC', N'AC', N'Admin@atmel.com', CAST(0x0000A5B401619C90 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (5, N'AD', N'AD', N'Admin@atmel.com', CAST(0x0000A5B40161A256 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (6, N'B', N'B', N'Admin@atmel.com', CAST(0x0000A5B40161A905 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (7, N'C', N'C', N'Admin@atmel.com', CAST(0x0000A5B40161AE93 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (8, N'E', N'E', N'Admin@atmel.com', CAST(0x0000A5B40161B2EC AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (9, N'F', N'F', N'Admin@atmel.com', CAST(0x0000A5B40161B957 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (10, N'H', N'H', N'Admin@atmel.com', CAST(0x0000A5B40161BCD1 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (11, N'J', N'J', N'Admin@atmel.com', CAST(0x0000A5B40161C68D AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (12, N'K', N'K', N'Admin@atmel.com', CAST(0x0000A5B40161CA18 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (13, N'L', N'L', N'Admin@atmel.com', CAST(0x0000A5B40161CE70 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (14, N'M', N'M', N'Admin@atmel.com', CAST(0x0000A5B40161D594 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (15, N'N', N'N', N'Admin@atmel.com', CAST(0x0000A5B40161D95C AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (16, N'P', N'P', N'Admin@atmel.com', CAST(0x0000A5B40161DEEF AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (17, N'R', N'R', N'Admin@atmel.com', CAST(0x0000A5B40161E4C6 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (18, N'W', N'W', N'Admin@atmel.com', CAST(0x0000A5B40161EB34 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (19, N'X', N'X', N'Admin@atmel.com', CAST(0x0000A5B40161F21D AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (20, N'Y', N'Y', N'Admin@atmel.com', CAST(0x0000A5B40161F88F AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorCode] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (21, N'X', N'X', N'Admin@atmel.com', CAST(0x0000A5B40161FC46 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[EBR_MST.VendorCode] OFF
SET IDENTITY_INSERT [dbo].[EBR_MST.VendorContact] ON 

INSERT [dbo].[EBR_MST.VendorContact] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (1, N'eABI-ATP-Mail-List', N'eABI-ATP-Mail-List', N'Admin@atmel.com', CAST(0x0000A5B401627B4E AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorContact] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (2, N'eABI-ASESH-Mail-List', N'eABI-ASESH-Mail-List', N'Admin@atmel.com', CAST(0x0000A5B4016280AE AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorContact] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (3, N'eABI-JCAP-Mail-List', N'eABI-JCAP-Mail-List', N'Admin@atmel.com', CAST(0x0000A5B4016285F7 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorContact] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (4, N'eABI-UTL-Mail-List', N'eABI-UTL-Mail-List', N'Admin@atmel.com', CAST(0x0000A5B401628D48 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorContact] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (5, N'eABI-ASEKH-Mail-List', N'eABI-ASEKH-Mail-List', N'Admin@atmel.com', CAST(0x0000A5B401629229 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorContact] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (6, N'eABI-RAD-Mail-List', N'eABI-RAD-Mail-List', N'Admin@atmel.com', CAST(0x0000A5B401629870 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorContact] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (7, N'DL-AIC-SUPPORT', N'DL-AIC-SUPPORT', N'Admin@atmel.com', CAST(0x0000A5B401629D5D AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorContact] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (8, N'DL-ASECHUNGLI-SUPPORT', N'DL-ASECHUNGLI-SUPPORT', N'Admin@atmel.com', CAST(0x0000A5B40162A251 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorContact] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (9, N'DL-ASEKAOHSIUNG-SUPPORT', N'DL-ASEKAOHSIUNG-SUPPORT', N'Admin@atmel.com', CAST(0x0000A5B40162AA6D AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorContact] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (10, N'DL-ASEKOREA-SUPPORT', N'DL-ASEKOREA-SUPPORT', N'Admin@atmel.com', CAST(0x0000A5B40162B00C AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorContact] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (11, N'DL-ASESHANGHAI-SUPPORT', N'DL-ASESHANGHAI-SUPPORT', N'Admin@atmel.com', CAST(0x0000A5B40162B590 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorContact] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (12, N'DL-ATC3-SUPPORT', N'DL-ATC3-SUPPORT', N'Admin@atmel.com', CAST(0x0000A5B40162BDB7 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorContact] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (13, N'DL-ATK1-SUPPORT', N'DL-ATK1-SUPPORT', N'Admin@atmel.com', CAST(0x0000A5B40162C320 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorContact] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (14, N'DL-ATK4-SUPPORT', N'DL-ATK4-SUPPORT', N'Admin@atmel.com', CAST(0x0000A5B40162C9B4 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorContact] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (15, N'DL-ATP1-SUPPORT', N'DL-ATP1-SUPPORT', N'Admin@atmel.com', CAST(0x0000A5B40162D142 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorContact] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (16, N'DL-ATP3-SUPPORT', N'DL-ATP3-SUPPORT', N'Admin@atmel.com', CAST(0x0000A5B40162D66F AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorContact] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (17, N'DL-LINGSEN-SUPPORT', N'DL-LINGSEN-SUPPORT', N'Admin@atmel.com', CAST(0x0000A5B40162DEC5 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorContact] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (18, N'DL-UTL-SUPPORT', N'DL-UTL-SUPPORT', N'Admin@atmel.com', CAST(0x0000A5B40162E3D8 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorContact] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (19, N'asat@atmel.com', N'asat@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B40162EB8F AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorContact] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (20, N'cpk@atmel.com', N'cpk@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B40162F04D AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorContact] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (21, N'cpm@atmel.com', N'cpm@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B40162F599 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorContact] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (22, N'cps@atmel.com', N'cps@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B401630806 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorContact] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (23, N'fujitsu@atmel.com', N'fujitsu@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B4016310B5 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorContact] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (24, N'greatek@atmel.com', N'greatek@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B4016315EB AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorContact] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (25, N'mitsui@atmel.com', N'mitsui@atmel.com', N'Admin@atmel.com', CAST(0x0000A5B401631B6F AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorContact] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (26, N'CSO-DIE-BANK', N'CSO-DIE-BANK', N'Admin@atmel.com', CAST(0x0000A5B401632078 AS DateTime), 0)
INSERT [dbo].[EBR_MST.VendorContact] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (27, N'SJO-DIE-BANK', N'SJO-DIE-BANK', N'Admin@atmel.com', CAST(0x0000A5B401632529 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[EBR_MST.VendorContact] OFF
SET IDENTITY_INSERT [dbo].[EBR_MST.WaferSize] ON 

INSERT [dbo].[EBR_MST.WaferSize] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (1, N'6 inch - 150 mm', N'6 inch - 150 mm', N'Admin@atmel.com', CAST(0x0000A5B401634B26 AS DateTime), 0)
INSERT [dbo].[EBR_MST.WaferSize] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (2, N'8 inch - 200 mm', N'8 inch - 200 mm', N'Admin@atmel.com', CAST(0x0000A5B4016356B8 AS DateTime), 0)
INSERT [dbo].[EBR_MST.WaferSize] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (3, N'10 inch - 250 mm', N'10 inch - 250 mm', N'Admin@atmel.com', CAST(0x0000A5B401635ED9 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[EBR_MST.WaferSize] OFF
SET IDENTITY_INSERT [dbo].[EBR_MST.WireMaterial] ON 

INSERT [dbo].[EBR_MST.WireMaterial] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (1, N'Cu Wire', N'Cu Wire', N'Admin@atmel.com', CAST(0x0000A5B40163BDDB AS DateTime), 0)
INSERT [dbo].[EBR_MST.WireMaterial] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (2, N'Au Wire', N'Au Wire', N'Admin@atmel.com', CAST(0x0000A5B40163C3F4 AS DateTime), 0)
INSERT [dbo].[EBR_MST.WireMaterial] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (3, N'Al Wire', N'Al Wire', N'Admin@atmel.com', CAST(0x0000A5B40163C951 AS DateTime), 0)
INSERT [dbo].[EBR_MST.WireMaterial] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (4, N'N/A', N'N/A', N'Admin@atmel.com', CAST(0x0000A5B40163D312 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[EBR_MST.WireMaterial] OFF
SET IDENTITY_INSERT [dbo].[EBR_SYS.Roles] ON 

INSERT [dbo].[EBR_SYS.Roles] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (1, N'Admin', N'Administrators System', N'Admin@atmel.com', CAST(0x0000A51500FFA76D AS DateTime), 0)
INSERT [dbo].[EBR_SYS.Roles] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (2, N'Manager', N'Manager App EBROnline', N'Manager@atmel.com', CAST(0x0000A41300000000 AS DateTime), 0)
INSERT [dbo].[EBR_SYS.Roles] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (3, N'Requestor', N'Requestor in system EBROnline', N'Requestor@atmel.com', CAST(0x0000A41300000000 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[EBR_SYS.Roles] OFF
SET IDENTITY_INSERT [dbo].[EBR_SYS.Users] ON 

INSERT [dbo].[EBR_SYS.Users] ([Id], [Email], [PasswordHash], [Salt], [RegistedDate], [IsLocked], [LastUpdatedBy], [LastUpdate], [IsDeleted], [Lastname], [Firstname], [Phone], [LastLoginDate], [RoleId], [RecoverPass], [IsComfiredEmail], [Guid]) VALUES (2, N'Admin@atmel.com', N'PfA+hLqBkCgGid0x7pLcIg==', N'My1stC#MVCProject2015                                                                                                                                                                                                                                     ', CAST(0x0000A4F80102F58C AS DateTime), 0, N'MySelf', CAST(0x0000A51500EBF515 AS DateTime), 0, N'Computer', N'Adminstrator', N'0935769463', NULL, 1, NULL, 0, NULL)
INSERT [dbo].[EBR_SYS.Users] ([Id], [Email], [PasswordHash], [Salt], [RegistedDate], [IsLocked], [LastUpdatedBy], [LastUpdate], [IsDeleted], [Lastname], [Firstname], [Phone], [LastLoginDate], [RoleId], [RecoverPass], [IsComfiredEmail], [Guid]) VALUES (4, N'Manager@atmel.com', N'PfA+hLqBkCgGid0x7pLcIg==', N'My1stC#MVCProject2015                                                                                                                                                                                                                                     ', CAST(0x0000A4FB0035C132 AS DateTime), 0, N'MySelf', CAST(0x0000A50E010ED5B1 AS DateTime), 0, N'Computer', N'Manager', N'009554235', NULL, 2, NULL, 0, NULL)
INSERT [dbo].[EBR_SYS.Users] ([Id], [Email], [PasswordHash], [Salt], [RegistedDate], [IsLocked], [LastUpdatedBy], [LastUpdate], [IsDeleted], [Lastname], [Firstname], [Phone], [LastLoginDate], [RoleId], [RecoverPass], [IsComfiredEmail], [Guid]) VALUES (13, N'Requestor@atmel.com', N'PfA+hLqBkCgGid0x7pLcIg==', N'My1stC#MVCProject2015                                                                                                                                                                                                                                     ', CAST(0x0000A4FB00000000 AS DateTime), 0, N'MySeft', CAST(0x0000A50E00000000 AS DateTime), 0, N'Computer', N'Requestor', N'0935769463', NULL, 3, NULL, 0, NULL)
SET IDENTITY_INSERT [dbo].[EBR_SYS.Users] OFF
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
ALTER TABLE [dbo].[EBR_SubDashboard]  WITH CHECK ADD  CONSTRAINT [FK_EBR_SubDashboard_EBR_Dashboard] FOREIGN KEY([DashBoardId])
REFERENCES [dbo].[EBR_Dashboard] ([Id])
GO
ALTER TABLE [dbo].[EBR_SubDashboard] CHECK CONSTRAINT [FK_EBR_SubDashboard_EBR_Dashboard]
GO
ALTER TABLE [dbo].[EBR_SYS.Users]  WITH CHECK ADD  CONSTRAINT [FK_SYS.Users_SYS.Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[EBR_SYS.Roles] ([Id])
GO
ALTER TABLE [dbo].[EBR_SYS.Users] CHECK CONSTRAINT [FK_SYS.Users_SYS.Roles]
GO

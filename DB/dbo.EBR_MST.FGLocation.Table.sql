USE [ACP_REPORTS]
GO
/****** Object:  Table [dbo].[EBR_MST.FGLocation]    Script Date: 9/24/2016 2:45:39 PM ******/
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
SET IDENTITY_INSERT [dbo].[EBR_MST.FGLocation] ON 

INSERT [dbo].[EBR_MST.FGLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (1, N'ATMEL HONG KONG', N'ATMEL HONG KONG', N'Admin@atmel.com', CAST(0x0000A5BA00C21392 AS DateTime), 0)
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

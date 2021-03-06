USE [ACP_REPORTS]
GO
/****** Object:  Table [dbo].[EBR_MST.AssemblyLocation]    Script Date: 9/24/2016 2:45:39 PM ******/
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
SET IDENTITY_INSERT [dbo].[EBR_MST.AssemblyLocation] ON 

INSERT [dbo].[EBR_MST.AssemblyLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (1, N'ASE6 - ASE KAOHSIUNG', N'ASE6 - ASE KAOHSIUNG', N'Admin@atmel.com', CAST(0x0000A5BF016732A3 AS DateTime), 0)
INSERT [dbo].[EBR_MST.AssemblyLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (2, N'ASE8 - ASE SHANGHAI', N'ASE8 - ASE SHANGHAI', N'Admin@atmel.com', CAST(0x0000A5BF01674882 AS DateTime), 0)
INSERT [dbo].[EBR_MST.AssemblyLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (3, N'ATC5 - AMKOR SHANGHAI1', N'ATC5 - AMKOR SHANGHAI', N'Admin@atmel.com', CAST(0x0000A5BF01680FFC AS DateTime), 0)
INSERT [dbo].[EBR_MST.AssemblyLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (4, N'ATK5 - ATK K1 SEOUL KOREA', N'ATK5 - ATK K1 SEOUL KOREA', N'Admin@atmel.com', CAST(0x0000A5B3011DC1F3 AS DateTime), 0)
INSERT [dbo].[EBR_MST.AssemblyLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (5, N'ATK6 - ATK K3 INCHEON KOREA', N'ATK6 - ATK K3 INCHEON KOREA', N'Admin@atmel.com', CAST(0x0000A5B300C03301 AS DateTime), 0)
INSERT [dbo].[EBR_MST.AssemblyLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (6, N'ATK7 - ATK K4 KWANGIU KOREA', N'ATK7 - ATK K4 KWANGIU KOREA', N'Admin@atmel.com', CAST(0x0000A5B300C1C397 AS DateTime), 0)
INSERT [dbo].[EBR_MST.AssemblyLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (7, N'ATP6 - ATP P1 PHILIPPINES', N'ATP6 - ATP P1 PHILIPPINES', N'Admin@atmel.com', CAST(0x0000A5B300C21139 AS DateTime), 0)
INSERT [dbo].[EBR_MST.AssemblyLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (8, N'ATP7 - ATP P3 PHILIPPINES', N'ATP7 - ATP P3 PHILIPPINES', N'Admin@atmel.com', CAST(0x0000A5B300C33F0A AS DateTime), 0)
INSERT [dbo].[EBR_MST.AssemblyLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (9, N'ATP8 - ATP P4 PHILIPPINES1', N'ATP8 - ATP P4 PHILIPPINES1', N'Admin@atmel.com', CAST(0x0000A5BF016148C4 AS DateTime), 0)
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
INSERT [dbo].[EBR_MST.AssemblyLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (40, N'test new item', N'test new item', N'Admin@atmel.com', CAST(0x0000A5BF01615AA2 AS DateTime), 0)
INSERT [dbo].[EBR_MST.AssemblyLocation] ([Id], [Name], [Description], [LastUpdatedBy], [LastUpdated], [IsDeleted]) VALUES (41, N'test 1', N'tesq', N'Admin@atmel.com', CAST(0x0000A5BF0168D23E AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[EBR_MST.AssemblyLocation] OFF

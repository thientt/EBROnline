USE [ACP_REPORTS]
GO
/****** Object:  Table [dbo].[EBR_MST.PKGProcessType]    Script Date: 9/24/2016 2:45:39 PM ******/
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

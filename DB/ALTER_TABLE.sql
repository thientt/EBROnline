use ACP_REPORTS
GO

ALTER TABLE EBR_Dashboard
ALTER COLUMN TestProgram varchar(50)

ALTER TABLE EBR_Dashboard
ALTER COLUMN Phone varchar(50)

ALTER TABLE EBR_Dashboard
ALTER COLUMN BusinessUnit varchar(50)

alter table EBR_Dashboard
Add  IsDeleted bit

alter table EBR_Dashboard
add  [LastUpdateBy] varchar(50) not null

alter table EBR_Dashboard
add  [LastUpdated] Datetime not null

sp_RENAME '[EBR_MST.AssemblyLocation].LastUpdate', 'LastUpdated' , 'COLUMN'
GO

sp_RENAME '[EBR_MST.BuildReason].LastUpdate', 'LastUpdated' , 'COLUMN'
GO

sp_RENAME '[EBR_MST.DieBank].LastUpdate', 'LastUpdated' , 'COLUMN'
GO

sp_RENAME '[EBR_MST.EmailAddress].LastUpdate', 'LastUpdated' , 'COLUMN'
GO

sp_RENAME '[EBR_MST.FabCode].LastUpdate', 'LastUpdated' , 'COLUMN'
GO

sp_RENAME '[EBR_MST.FGLocation].LastUpdate', 'LastUpdated' , 'COLUMN'
GO

sp_RENAME '[EBR_MST.MarkingInstruction].LastUpdate', 'LastUpdated' , 'COLUMN'
GO

sp_RENAME '[EBR_MST.MarkingSL].LastUpdate', 'LastUpdated' , 'COLUMN'
GO

sp_RENAME '[EBR_MST.Owner].LastUpdate', 'LastUpdated' , 'COLUMN'
GO

sp_RENAME '[EBR_MST.Package].LastUpdate', 'LastUpdated' , 'COLUMN'
GO

sp_RENAME '[EBR_MST.PackageTestType].LastUpdate', 'LastUpdated' , 'COLUMN'
GO

sp_RENAME '[EBR_MST.PackingType].LastUpdate', 'LastUpdated' , 'COLUMN'
GO

sp_RENAME '[EBR_MST.PKGProcessType].LastUpdate', 'LastUpdated' , 'COLUMN'
GO

sp_RENAME '[EBR_MST.PriorityOfAssemblyBuild].LastUpdate', 'LastUpdated' , 'COLUMN'
GO

sp_RENAME '[EBR_MST.ProbeStatus].LastUpdate', 'LastUpdated' , 'COLUMN'
GO

sp_RENAME '[EBR_MST.ProcessLTS].LastUpdate', 'LastUpdated' , 'COLUMN'
GO

sp_RENAME '[EBR_MST.QualityLevel].LastUpdate', 'LastUpdated' , 'COLUMN'
GO

sp_RENAME '[EBR_MST.RequesterLocation].LastUpdate', 'LastUpdated' , 'COLUMN'
GO

sp_RENAME '[EBR_MST.RevenueLocation].LastUpdate', 'LastUpdated' , 'COLUMN'
GO

sp_RENAME '[EBR_MST.VendorCode].LastUpdate', 'LastUpdated' , 'COLUMN'
GO

sp_RENAME '[EBR_MST.VendorContact].LastUpdate', 'LastUpdated' , 'COLUMN'
GO

sp_RENAME '[EBR_MST.WaferSize].LastUpdate', 'LastUpdated' , 'COLUMN'
GO

sp_RENAME '[EBR_MST.WireMaterial].LastUpdate', 'LastUpdated' , 'COLUMN'
GO

sp_RENAME '[EBR_SYS.Roles].LastUpdate', 'LastUpdated' , 'COLUMN'
GO

sp_RENAME '[EBR_SYS.User].LastUpdate', 'LastUpdated' , 'COLUMN'
GO


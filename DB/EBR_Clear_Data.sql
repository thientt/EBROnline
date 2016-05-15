use ACP_REPORTS;
go

delete EBR_SubDashboard
dbcc checkident(EBR_SubDashboard,reseed, 1)

delete EBR_Dashboard
dbcc checkident(EBR_Dashboard,reseed,1)
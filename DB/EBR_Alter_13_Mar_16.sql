  use [ACP_REPORTS];
  GO
  -- begin Change Role
  update [ACP_REPORTS].[dbo].[EBR_SYS.Roles] set Name='Planner', [Description] ='Planner App EBROnline'  where Id =2
  update [ACP_REPORTS].[dbo].[EBR_SYS.Roles] set Name='User', [Description] = 'User in system EBROnline' where Id =3
  -- end change role

--begin alter for table EBR_Dashboard
alter table [ACP_REPORTS].[dbo].[EBR_Dashboard]
add NPILot bit null

alter table [ACP_REPORTS].[dbo].[EBR_Dashboard]
add IsCompleted bit null
--end alter for table EBR_Dashboard

--begin alter for table EBR_SubDashboard
alter table [ACP_REPORTS].[dbo].[EBR_SubDashboard]
add StackDieId nvarchar(50) null

alter table [ACP_REPORTS].[dbo].[EBR_SubDashboard]
add StackDiePMPN nvarchar(50) null

alter table [ACP_REPORTS].[dbo].[EBR_SubDashboard]
add StackDieQty float not null

alter table [ACP_REPORTS].[dbo].[EBR_SubDashboard]
add StackDieWaferNumbers nvarchar(50) null
--end alter for table EBR_SubDashboard
using EBROnline.Model.Abstracts;
using EBROnline.Model.DTO;
using EBROnline.Model.Entities;
using EBROnline.Model.Types;
using EBROnline.Utilities;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;

/// <summary>
/// 
/// </summary>
namespace EBROnline.Model.Concretes
{
    /// <summary>
    /// 
    /// </summary>
    public class EBRMasterRepository : IEBRMasterRepository
    {
        /// <summary>
        /// The _log service
        /// </summary>
        private ILogService _logService;

        /// <summary>
        /// Initializes a new instance of the <see cref="FARMasterRepository"/> class.
        /// </summary>
        /// <param name="logService">The log service.</param>
        public EBRMasterRepository(ILogService logService)
        {
            this._logService = logService;
        }

        #region Implement IGet
        public IEnumerable<EBRMasterDto> GetAll()
        {
            IEnumerable<EBRMasterDto> results = null;
            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    results = (from item in context.EBR_Dashboard
                               where item.IsDeleted == false
                               select new EBRMasterDto()
                               {
                                   Id = item.Id,
                                   IsDeleted = item.IsDeleted,
                                   LastUpdatedBy = item.LastUpdatedBy,
                                   LastUpdated = item.LastUpdated,
                                   Device = item.Device,
                                   Rev = item.Rev,
                                   FABDieRevision = item.FABDieRevision,
                                   PMPN = item.PMPN,
                                   AMPN = item.AMPN,
                                   TMPN = item.TMPN,
                                   FMPN = item.FMPN,
                                   CPN_SAP_Material = item.CPN_SAP_Material,
                                   PackageId = item.PackageId,
                                   Package = new MSTPackageDto()
                                   {
                                       Id = (item.EBR_MST_Package != null) ? item.EBR_MST_Package.Id : 0,
                                       Name = (item.EBR_MST_Package != null) ? item.EBR_MST_Package.Name : "",
                                       Description = (item.EBR_MST_Package != null) ? item.EBR_MST_Package.Description : "",
                                       IsDeleted = (item.EBR_MST_Package != null) ? item.EBR_MST_Package.IsDeleted : false,
                                   },
                                   PackageSize = item.PackageSize,
                                   Leads = item.Leads,
                                   Speed = item.Speed,
                                   EABI_EBR_Revision = item.EABI_EBR_Revision,
                                   WaferSizeId = item.WaferSizeId,
                                   WaferSize = new MSTWaferSizeDto()
                                   {
                                       Id = (item.EBR_MST_WaferSize != null) ? item.EBR_MST_WaferSize.Id : 0,
                                       Name = (item.EBR_MST_WaferSize != null) ? item.EBR_MST_WaferSize.Name : "",
                                       Description = (item.EBR_MST_WaferSize != null) ? item.EBR_MST_WaferSize.Description : "",
                                       IsDeleted = (item.EBR_MST_WaferSize != null) ? item.EBR_MST_WaferSize.IsDeleted : false,
                                   },
                                   CurrentWaferThickness = item.CurrentWaferThichness,
                                   InternalDevice = item.InternalDevice,
                                   FabCodeId = item.FabCodeId,
                                   FabCode = new MSTFabCodeDto()
                                   {
                                       Id = (item.EBR_MST_FabCode != null) ? item.EBR_MST_FabCode.Id : 0,
                                       Name = (item.EBR_MST_FabCode != null) ? item.EBR_MST_FabCode.Name : "",
                                       Description = (item.EBR_MST_FabCode != null) ? item.EBR_MST_FabCode.Description : "",
                                       IsDeleted = (item.EBR_MST_FabCode != null) ? item.EBR_MST_FabCode.IsDeleted : false,
                                   },
                                   Power_Voltage = item.Power_Voltage,
                                   DieBlankId = item.DieBlankId,
                                   DieBlank = new MSTDieBankDto()
                                   {
                                       Id = (item.EBR_MST_DieBank != null) ? item.EBR_MST_DieBank.Id : 0,
                                       Name = (item.EBR_MST_DieBank != null) ? item.EBR_MST_DieBank.Name : "",
                                       Description = (item.EBR_MST_DieBank != null) ? item.EBR_MST_DieBank.Description : "",
                                       IsDeleted = (item.EBR_MST_DieBank != null) ? item.EBR_MST_DieBank.IsDeleted : false,
                                   },
                                   AssemblyLocationId = item.AssemblyLocationnId,
                                   AssemblyLocation = new MSTAssLocDto()
                                   {
                                       Id = (item.EBR_MST_AssemblyLocation != null) ? item.EBR_MST_AssemblyLocation.Id : 0,
                                       Name = (item.EBR_MST_AssemblyLocation != null) ? item.EBR_MST_AssemblyLocation.Name : "",
                                       Description = (item.EBR_MST_AssemblyLocation != null) ? item.EBR_MST_AssemblyLocation.Description : "",
                                       IsDeleted = (item.EBR_MST_AssemblyLocation != null) ? item.EBR_MST_AssemblyLocation.IsDeleted : false,
                                   },
                                   FGLocationId = item.FGLocationId,
                                   FGLocation = new MSTFGLocationDto()
                                   {
                                       Id = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Id : 0,
                                       Name = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Name : "",
                                       Description = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Description : "",
                                       IsDeleted = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.IsDeleted : false,
                                   },
                                   AssemblyFlow = item.AssemblyFlow,
                                   PackageTypeId = item.PackageTypeId,
                                   PackageType = new MSTPackingTypeDto()
                                   {
                                       Id = (item.EBR_MST_PackingType != null) ? item.EBR_MST_PackingType.Id : 0,
                                       Name = (item.EBR_MST_PackingType != null) ? item.EBR_MST_PackingType.Name : "",
                                       Description = (item.EBR_MST_PackingType != null) ? item.EBR_MST_PackingType.Description : "",
                                       IsDeleted = (item.EBR_MST_PackingType != null) ? item.EBR_MST_PackingType.IsDeleted : false,
                                   },
                                   TopSideMarkingId = item.TopSideMarkingId,
                                   MarkingInstruction = new MSTMarkingInstructionDto()
                                   {
                                       Id = (item.EBR_MST_MarkingInstruction != null) ? item.EBR_MST_MarkingInstruction.Id : 0,
                                       Name = (item.EBR_MST_MarkingInstruction != null) ? item.EBR_MST_MarkingInstruction.Name : "",
                                       Description = (item.EBR_MST_MarkingInstruction != null) ? item.EBR_MST_MarkingInstruction.Description : "",
                                       IsDeleted = (item.EBR_MST_MarkingInstruction != null) ? item.EBR_MST_MarkingInstruction.IsDeleted : false,
                                   },
                                   MRL = item.MRL,
                                   NameOfMarkingFile = item.NameOfMarkingFile,
                                   RequiresSpecialMark = item.RequiresSepecialMark,
                                   RequiresAssEngrInput = item.RequiresAssEngrInput,
                                   MarkingCodeId = item.MarkingCodeId,
                                   MarkingCode = new MSTMarkingSLDto()
                                   {
                                       Id = (item.EBR_MST_MarkingSL != null) ? item.EBR_MST_MarkingSL.Id : 0,
                                       Name = (item.EBR_MST_MarkingSL != null) ? item.EBR_MST_MarkingSL.Name : "",
                                       Description = (item.EBR_MST_MarkingSL != null) ? item.EBR_MST_MarkingSL.Description : "",
                                       IsDeleted = (item.EBR_MST_MarkingSL != null) ? item.EBR_MST_MarkingSL.IsDeleted : false,
                                   },
                                   Pin1Marking = item.Pin1Marking,
                                   TopLine = item.TopLine,
                                   TwoLine = item.C2ndLine,
                                   ThreeLine = item.C3rdLine,
                                   FourLine = item.C4thLine,
                                   FiveLine = item.C5thLine,
                                   SixLine = item.C6thLine,
                                   ShipFinishedProductToId = item.ShipFinishedProductToId,
                                   ShipFinishedProductTo = new MSTFGLocationDto()
                                   {
                                       Id = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Id : 0,
                                       Name = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Name : "",
                                       Description = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Description : "",
                                       IsDeleted = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.IsDeleted : false,
                                   },
                                   AttentionFinished = item.AttentionFinished,
                                   ShipRejectedPartToId = item.ShipRejectedPartToId,
                                   ShipRejectedPartTo = new MSTFGLocationDto()
                                   {
                                       Id = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Id : 0,
                                       Name = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Name : "",
                                       Description = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Description : "",
                                       IsDeleted = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.IsDeleted : false,
                                   },
                                   AttentionRejected = item.AttentionRejected,
                                   ReturnWaferToId = item.ReturnWaferToId,
                                   ReturnWaferTo = new MSTFGLocationDto()
                                   {
                                       Id = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Id : 0,
                                       Name = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Name : "",
                                       Description = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Description : "",
                                       IsDeleted = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.IsDeleted : false,
                                   },
                                   VendorContactId = item.VendorContactId,
                                   VendorContact = new MSTVendorContactDto()
                                   {
                                       Id = (item.EBR_MST_VendorContact != null) ? item.EBR_MST_VendorContact.Id : 0,
                                       Name = (item.EBR_MST_VendorContact != null) ? item.EBR_MST_VendorContact.Name : "",
                                       Description = (item.EBR_MST_VendorContact != null) ? item.EBR_MST_VendorContact.Description : "",
                                       IsDeleted = (item.EBR_MST_VendorContact != null) ? item.EBR_MST_VendorContact.IsDeleted : false,
                                   },
                                   VendorCodeId = item.VendorCodeId,
                                   VendorCode = new MSTVendorCodeDto()
                                   {
                                       Id = (item.EBR_MST_VendorCode != null) ? item.EBR_MST_VendorCode.Id : 0,
                                       Name = (item.EBR_MST_VendorCode != null) ? item.EBR_MST_VendorCode.Name : "",
                                       Description = (item.EBR_MST_VendorCode != null) ? item.EBR_MST_VendorCode.Description : "",
                                       IsDeleted = (item.EBR_MST_VendorCode != null) ? item.EBR_MST_VendorCode.IsDeleted : false,
                                   },
                                   PurposeOfBuildId = item.PurposeOfBuildId,
                                   PurposeOfBuild = new MSTBuildReasonDto()
                                   {
                                       Id = (item.EBR_MST_BuildReason != null) ? item.EBR_MST_BuildReason.Id : 0,
                                       Name = (item.EBR_MST_BuildReason != null) ? item.EBR_MST_BuildReason.Name : "",
                                       Description = (item.EBR_MST_BuildReason != null) ? item.EBR_MST_BuildReason.Description : "",
                                       IsDeleted = (item.EBR_MST_BuildReason != null) ? item.EBR_MST_BuildReason.IsDeleted : false,
                                   },
                                   LotOwnerId = item.LotOwnerId,
                                   LotOwner = new MSTOwnerDto()
                                   {
                                       Id = (item.EBR_MST_Owner != null) ? item.EBR_MST_Owner.Id : 0,
                                       Name = (item.EBR_MST_Owner != null) ? item.EBR_MST_Owner.Name : "",
                                       Description = (item.EBR_MST_Owner != null) ? item.EBR_MST_Owner.Description : "",
                                       IsDeleted = (item.EBR_MST_Owner != null) ? item.EBR_MST_Owner.IsDeleted : false,
                                   },
                                   RequestCycleTimeId = item.RequestCycleTimeId,
                                   RequestCycleTime = new MSTPriorityOfAssemblyBuildDto()
                                   {
                                       Id = (item.EBR_MST_PriorityOfAssemblyBuild != null) ? item.EBR_MST_PriorityOfAssemblyBuild.Id : 0,
                                       Name = (item.EBR_MST_PriorityOfAssemblyBuild != null) ? item.EBR_MST_PriorityOfAssemblyBuild.Name : "",
                                       Description = (item.EBR_MST_PriorityOfAssemblyBuild != null) ? item.EBR_MST_PriorityOfAssemblyBuild.Description : "",
                                       IsDeleted = (item.EBR_MST_PriorityOfAssemblyBuild != null) ? item.EBR_MST_PriorityOfAssemblyBuild.IsDeleted : false,
                                   },
                                   PKGProcessId = item.PKGProcessId,
                                   PKGProcess = new MSTPKGProcessTypeDto()
                                   {
                                       Id = (item.EBR_MST_PKGProcessType != null) ? item.EBR_MST_PKGProcessType.Id : 0,
                                       Name = (item.EBR_MST_PKGProcessType != null) ? item.EBR_MST_PKGProcessType.Name : "",
                                       Description = (item.EBR_MST_PKGProcessType != null) ? item.EBR_MST_PKGProcessType.Description : "",
                                       IsDeleted = (item.EBR_MST_PKGProcessType != null) ? item.EBR_MST_PKGProcessType.IsDeleted : false,
                                   },
                                   QualityLevelId = item.QualityLevelId,
                                   QualityLevel = new MSTQualityLevelDto()
                                   {
                                       Id = (item.EBR_MST_QualityLevel != null) ? item.EBR_MST_QualityLevel.Id : 0,
                                       Name = (item.EBR_MST_QualityLevel != null) ? item.EBR_MST_QualityLevel.Name : "",
                                       Description = (item.EBR_MST_QualityLevel != null) ? item.EBR_MST_QualityLevel.Description : "",
                                       IsDeleted = (item.EBR_MST_QualityLevel != null) ? item.EBR_MST_QualityLevel.IsDeleted : false,
                                   },
                                   RevenueLocationId = item.RevenueLocationId,
                                   RevenueLocation = new MSTRevenueLocationDto()
                                   {
                                       Id = (item.EBR_MST_RevenueLocation != null) ? item.EBR_MST_RevenueLocation.Id : 0,
                                       Name = (item.EBR_MST_RevenueLocation != null) ? item.EBR_MST_RevenueLocation.Name : "",
                                       Description = (item.EBR_MST_RevenueLocation != null) ? item.EBR_MST_RevenueLocation.Description : "",
                                       IsDeleted = (item.EBR_MST_RevenueLocation != null) ? item.EBR_MST_RevenueLocation.IsDeleted : false,
                                   },
                                   BondDiagramAttached = item.BondDiagramAttached,
                                   ScrapExcessDie_Wafer = item.ScrapExcessDie_Wafer,
                                   UV_Erase = item.UV_Erase,
                                   DieCoat = item.DieCoat,
                                   WireMaterialId = item.WireMaterialId,
                                   WireMaterial = new MSTWireMaterialDto()
                                   {
                                       Id = (item.EBR_MST_WireMaterial != null) ? item.EBR_MST_WireMaterial.Id : 0,
                                       Name = (item.EBR_MST_WireMaterial != null) ? item.EBR_MST_WireMaterial.Name : "",
                                       Description = (item.EBR_MST_WireMaterial != null) ? item.EBR_MST_WireMaterial.Description : "",
                                       IsDeleted = (item.EBR_MST_WireMaterial != null) ? item.EBR_MST_WireMaterial.IsDeleted : false,
                                   },
                                   ProcessLTSID = item.ProcessLTSID,
                                   ProcessLTS = new MSTProcessLTSDto()
                                   {
                                       Id = (item.EBR_MST_ProcessLTS != null) ? item.EBR_MST_ProcessLTS.Id : 0,
                                       Name = (item.EBR_MST_ProcessLTS != null) ? item.EBR_MST_ProcessLTS.Name : "",
                                       Description = (item.EBR_MST_ProcessLTS != null) ? item.EBR_MST_ProcessLTS.Description : "",
                                       IsDeleted = (item.EBR_MST_ProcessLTS != null) ? item.EBR_MST_ProcessLTS.IsDeleted : false,
                                   },
                                   ForecastMaterial = item.ForecastMaterial,
                                   BondDiagram = item.BondDiagram,
                                   BondDiagramRev = item.BondDiagramRev,
                                   NPILot = item.NPILot,
                                   IsCompleted = item.IsCompleted,
                                   EngineerTeam = item.EngineerTeam,
                                   TestLocationId = item.TestLocationId,
                                   TestLocation = new MSTFGLocationDto()
                                   {
                                       Id = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Id : 0,
                                       Name = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Name : "",
                                       Description = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Description : "",
                                       IsDeleted = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.IsDeleted : false,
                                   },
                                   ProbeStatusId = item.ProbeStatusId,
                                   ProbeStatus = new MSTProbeStatusDto()
                                   {
                                       Id = (item.EBR_MST_ProbeStatus != null) ? item.EBR_MST_ProbeStatus.Id : 0,
                                       Name = (item.EBR_MST_ProbeStatus != null) ? item.EBR_MST_ProbeStatus.Name : "",
                                       Description = (item.EBR_MST_ProbeStatus != null) ? item.EBR_MST_ProbeStatus.Description : "",
                                       IsDeleted = (item.EBR_MST_ProbeStatus != null) ? item.EBR_MST_ProbeStatus.IsDeleted : false,
                                   },
                                   PackageTestTypeId = item.PackageTestTypeId,
                                   PackageTestType = new MSTPackageTestTypeDto()
                                   {
                                       Id = (item.EBR_MST_PackageTestType != null) ? item.EBR_MST_PackageTestType.Id : 0,
                                       Name = (item.EBR_MST_PackageTestType != null) ? item.EBR_MST_PackageTestType.Name : "",
                                       Description = (item.EBR_MST_PackageTestType != null) ? item.EBR_MST_PackageTestType.Description : "",
                                       IsDeleted = (item.EBR_MST_PackageTestType != null) ? item.EBR_MST_PackageTestType.IsDeleted : false,
                                   },
                                   TestProgram = item.TestProgram,
                                   TestProgamAvailable = item.TestProgamAvailable,
                                   CommentAvailable = item.CommentAvaliable,
                                   Test_Special_Instruction = item.Test_Sepecial_Instruction,
                                   RequestedBy = item.RequestedBy,
                                   EmailAddressId = item.EmailAddressId,
                                   EmailAddress = new MSTEmailAddressDto()
                                   {
                                       Id = (item.EBR_MST_EmailAddress != null) ? item.EBR_MST_EmailAddress.Id : 0,
                                       Name = (item.EBR_MST_EmailAddress != null) ? item.EBR_MST_EmailAddress.Name : "",
                                       Description = (item.EBR_MST_EmailAddress != null) ? item.EBR_MST_EmailAddress.Description : "",
                                       IsDeleted = (item.EBR_MST_EmailAddress != null) ? item.EBR_MST_EmailAddress.IsDeleted : false,
                                   },
                                   Phone = item.Phone,
                                   RequesterLocationId = item.RequesterLocationId,
                                   RequesterLocation = new MSTRequesterLocationDto()
                                   {
                                       Id = (item.EBR_MST_RequesterLocation != null) ? item.EBR_MST_RequesterLocation.Id : 0,
                                       Name = (item.EBR_MST_RequesterLocation != null) ? item.EBR_MST_RequesterLocation.Name : "",
                                       Description = (item.EBR_MST_RequesterLocation != null) ? item.EBR_MST_RequesterLocation.Description : "",
                                       IsDeleted = (item.EBR_MST_RequesterLocation != null) ? item.EBR_MST_RequesterLocation.IsDeleted : false,
                                   },
                                   BusinessUnit = item.BusinessUnit,
                                   ApprovingManager = item.ApprovingManager,
                                   ManagerEmailId = item.ManagerEmailId,
                                   ManagerEmail = new MSTEmailAddressDto()
                                   {
                                       Id = (item.EBR_MST_EmailAddress != null) ? item.EBR_MST_EmailAddress.Id : 0,
                                       Name = (item.EBR_MST_EmailAddress != null) ? item.EBR_MST_EmailAddress.Name : "",
                                       Description = (item.EBR_MST_EmailAddress != null) ? item.EBR_MST_EmailAddress.Description : "",
                                       IsDeleted = (item.EBR_MST_EmailAddress != null) ? item.EBR_MST_EmailAddress.IsDeleted : false,
                                   },
                                   TotalCost = item.TotalCost,
                                   RequestedShipDate = item.RequestedShipDate,
                                   RequiresTestPgmApproval = item.RequiresTestPgmApproval,
                                   StatusType = (Types.StatusType)item.StatusType,
                               }).ToList();
                }
            }
            catch (Exception ex)
            {
                _logService.Error(ex.Message, ex);
                return null;
            }
            return results;
        }

        public async Task<IEnumerable<EBRMasterDto>> GetAllAsync()
        {
            IEnumerable<EBRMasterDto> results = null;
            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    results = await (from item in context.EBR_Dashboard
                                     where item.IsDeleted == false
                                     select new EBRMasterDto()
                                     {
                                         Id = item.Id,
                                         IsDeleted = item.IsDeleted,
                                         LastUpdatedBy = item.LastUpdatedBy,
                                         LastUpdated = item.LastUpdated,
                                         Device = item.Device,
                                         Rev = item.Rev,
                                         FABDieRevision = item.FABDieRevision,
                                         PMPN = item.PMPN,
                                         AMPN = item.AMPN,
                                         TMPN = item.TMPN,
                                         FMPN = item.FMPN,
                                         CPN_SAP_Material = item.CPN_SAP_Material,
                                         PackageId = item.PackageId,
                                         Package = new MSTPackageDto()
                                         {
                                             Id = (item.EBR_MST_Package != null) ? item.EBR_MST_Package.Id : 0,
                                             Name = (item.EBR_MST_Package != null) ? item.EBR_MST_Package.Name : "",
                                             Description = (item.EBR_MST_Package != null) ? item.EBR_MST_Package.Description : "",
                                             IsDeleted = (item.EBR_MST_Package != null) ? item.EBR_MST_Package.IsDeleted : false,
                                         },
                                         PackageSize = item.PackageSize,
                                         Leads = item.Leads,
                                         Speed = item.Speed,
                                         EABI_EBR_Revision = item.EABI_EBR_Revision,
                                         WaferSizeId = item.WaferSizeId,
                                         WaferSize = new MSTWaferSizeDto()
                                         {
                                             Id = (item.EBR_MST_WaferSize != null) ? item.EBR_MST_WaferSize.Id : 0,
                                             Name = (item.EBR_MST_WaferSize != null) ? item.EBR_MST_WaferSize.Name : "",
                                             Description = (item.EBR_MST_WaferSize != null) ? item.EBR_MST_WaferSize.Description : "",
                                             IsDeleted = (item.EBR_MST_WaferSize != null) ? item.EBR_MST_WaferSize.IsDeleted : false,
                                         },
                                         CurrentWaferThickness = item.CurrentWaferThichness,
                                         InternalDevice = item.InternalDevice,
                                         FabCodeId = item.FabCodeId,
                                         FabCode = new MSTFabCodeDto()
                                         {
                                             Id = (item.EBR_MST_FabCode != null) ? item.EBR_MST_FabCode.Id : 0,
                                             Name = (item.EBR_MST_FabCode != null) ? item.EBR_MST_FabCode.Name : "",
                                             Description = (item.EBR_MST_FabCode != null) ? item.EBR_MST_FabCode.Description : "",
                                             IsDeleted = (item.EBR_MST_FabCode != null) ? item.EBR_MST_FabCode.IsDeleted : false,
                                         },
                                         Power_Voltage = item.Power_Voltage,
                                         DieBlankId = item.DieBlankId,
                                         DieBlank = new MSTDieBankDto()
                                         {
                                             Id = (item.EBR_MST_DieBank != null) ? item.EBR_MST_DieBank.Id : 0,
                                             Name = (item.EBR_MST_DieBank != null) ? item.EBR_MST_DieBank.Name : "",
                                             Description = (item.EBR_MST_DieBank != null) ? item.EBR_MST_DieBank.Description : "",
                                             IsDeleted = (item.EBR_MST_DieBank != null) ? item.EBR_MST_DieBank.IsDeleted : false,
                                         },
                                         AssemblyLocationId = item.AssemblyLocationnId,
                                         AssemblyLocation = new MSTAssLocDto()
                                         {
                                             Id = (item.EBR_MST_AssemblyLocation != null) ? item.EBR_MST_AssemblyLocation.Id : 0,
                                             Name = (item.EBR_MST_AssemblyLocation != null) ? item.EBR_MST_AssemblyLocation.Name : "",
                                             Description = (item.EBR_MST_AssemblyLocation != null) ? item.EBR_MST_AssemblyLocation.Description : "",
                                             IsDeleted = (item.EBR_MST_AssemblyLocation != null) ? item.EBR_MST_AssemblyLocation.IsDeleted : false,
                                         },
                                         FGLocationId = item.FGLocationId,
                                         FGLocation = new MSTFGLocationDto()
                                         {
                                             Id = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Id : 0,
                                             Name = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Name : "",
                                             Description = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Description : "",
                                             IsDeleted = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.IsDeleted : false,
                                         },
                                         AssemblyFlow = item.AssemblyFlow,
                                         PackageTypeId = item.PackageTypeId,
                                         PackageType = new MSTPackingTypeDto()
                                         {
                                             Id = (item.EBR_MST_PackingType != null) ? item.EBR_MST_PackingType.Id : 0,
                                             Name = (item.EBR_MST_PackingType != null) ? item.EBR_MST_PackingType.Name : "",
                                             Description = (item.EBR_MST_PackingType != null) ? item.EBR_MST_PackingType.Description : "",
                                             IsDeleted = (item.EBR_MST_PackingType != null) ? item.EBR_MST_PackingType.IsDeleted : false,
                                         },
                                         TopSideMarkingId = item.TopSideMarkingId,
                                         MarkingInstruction = new MSTMarkingInstructionDto()
                                         {
                                             Id = (item.EBR_MST_MarkingInstruction != null) ? item.EBR_MST_MarkingInstruction.Id : 0,
                                             Name = (item.EBR_MST_MarkingInstruction != null) ? item.EBR_MST_MarkingInstruction.Name : "",
                                             Description = (item.EBR_MST_MarkingInstruction != null) ? item.EBR_MST_MarkingInstruction.Description : "",
                                             IsDeleted = (item.EBR_MST_MarkingInstruction != null) ? item.EBR_MST_MarkingInstruction.IsDeleted : false,
                                         },
                                         MRL = item.MRL,
                                         NameOfMarkingFile = item.NameOfMarkingFile,
                                         RequiresSpecialMark = item.RequiresSepecialMark,
                                         RequiresAssEngrInput = item.RequiresAssEngrInput,
                                         MarkingCodeId = item.MarkingCodeId,
                                         MarkingCode = new MSTMarkingSLDto()
                                         {
                                             Id = (item.EBR_MST_MarkingSL != null) ? item.EBR_MST_MarkingSL.Id : 0,
                                             Name = (item.EBR_MST_MarkingSL != null) ? item.EBR_MST_MarkingSL.Name : "",
                                             Description = (item.EBR_MST_MarkingSL != null) ? item.EBR_MST_MarkingSL.Description : "",
                                             IsDeleted = (item.EBR_MST_MarkingSL != null) ? item.EBR_MST_MarkingSL.IsDeleted : false,
                                         },
                                         Pin1Marking = item.Pin1Marking,
                                         TopLine = item.TopLine,
                                         TwoLine = item.C2ndLine,
                                         ThreeLine = item.C3rdLine,
                                         FourLine = item.C4thLine,
                                         FiveLine = item.C5thLine,
                                         SixLine = item.C6thLine,
                                         ShipFinishedProductToId = item.ShipFinishedProductToId,
                                         ShipFinishedProductTo = new MSTFGLocationDto()
                                         {
                                             Id = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Id : 0,
                                             Name = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Name : "",
                                             Description = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Description : "",
                                             IsDeleted = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.IsDeleted : false,
                                         },
                                         AttentionFinished = item.AttentionFinished,
                                         ShipRejectedPartToId = item.ShipRejectedPartToId,
                                         ShipRejectedPartTo = new MSTFGLocationDto()
                                         {
                                             Id = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Id : 0,
                                             Name = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Name : "",
                                             Description = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Description : "",
                                             IsDeleted = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.IsDeleted : false,
                                         },
                                         AttentionRejected = item.AttentionRejected,
                                         ReturnWaferToId = item.ReturnWaferToId,
                                         ReturnWaferTo = new MSTFGLocationDto()
                                         {
                                             Id = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Id : 0,
                                             Name = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Name : "",
                                             Description = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Description : "",
                                             IsDeleted = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.IsDeleted : false,
                                         },
                                         VendorContactId = item.VendorContactId,
                                         VendorContact = new MSTVendorContactDto()
                                         {
                                             Id = (item.EBR_MST_VendorContact != null) ? item.EBR_MST_VendorContact.Id : 0,
                                             Name = (item.EBR_MST_VendorContact != null) ? item.EBR_MST_VendorContact.Name : "",
                                             Description = (item.EBR_MST_VendorContact != null) ? item.EBR_MST_VendorContact.Description : "",
                                             IsDeleted = (item.EBR_MST_VendorContact != null) ? item.EBR_MST_VendorContact.IsDeleted : false,
                                         },
                                         VendorCodeId = item.VendorCodeId,
                                         VendorCode = new MSTVendorCodeDto()
                                         {
                                             Id = (item.EBR_MST_VendorCode != null) ? item.EBR_MST_VendorCode.Id : 0,
                                             Name = (item.EBR_MST_VendorCode != null) ? item.EBR_MST_VendorCode.Name : "",
                                             Description = (item.EBR_MST_VendorCode != null) ? item.EBR_MST_VendorCode.Description : "",
                                             IsDeleted = (item.EBR_MST_VendorCode != null) ? item.EBR_MST_VendorCode.IsDeleted : false,
                                         },
                                         PurposeOfBuildId = item.PurposeOfBuildId,
                                         PurposeOfBuild = new MSTBuildReasonDto()
                                         {
                                             Id = (item.EBR_MST_BuildReason != null) ? item.EBR_MST_BuildReason.Id : 0,
                                             Name = (item.EBR_MST_BuildReason != null) ? item.EBR_MST_BuildReason.Name : "",
                                             Description = (item.EBR_MST_BuildReason != null) ? item.EBR_MST_BuildReason.Description : "",
                                             IsDeleted = (item.EBR_MST_BuildReason != null) ? item.EBR_MST_BuildReason.IsDeleted : false,
                                         },
                                         LotOwnerId = item.LotOwnerId,
                                         LotOwner = new MSTOwnerDto()
                                         {
                                             Id = (item.EBR_MST_Owner != null) ? item.EBR_MST_Owner.Id : 0,
                                             Name = (item.EBR_MST_Owner != null) ? item.EBR_MST_Owner.Name : "",
                                             Description = (item.EBR_MST_Owner != null) ? item.EBR_MST_Owner.Description : "",
                                             IsDeleted = (item.EBR_MST_Owner != null) ? item.EBR_MST_Owner.IsDeleted : false,
                                         },
                                         RequestCycleTimeId = item.RequestCycleTimeId,
                                         RequestCycleTime = new MSTPriorityOfAssemblyBuildDto()
                                         {
                                             Id = (item.EBR_MST_PriorityOfAssemblyBuild != null) ? item.EBR_MST_PriorityOfAssemblyBuild.Id : 0,
                                             Name = (item.EBR_MST_PriorityOfAssemblyBuild != null) ? item.EBR_MST_PriorityOfAssemblyBuild.Name : "",
                                             Description = (item.EBR_MST_PriorityOfAssemblyBuild != null) ? item.EBR_MST_PriorityOfAssemblyBuild.Description : "",
                                             IsDeleted = (item.EBR_MST_PriorityOfAssemblyBuild != null) ? item.EBR_MST_PriorityOfAssemblyBuild.IsDeleted : false,
                                         },
                                         PKGProcessId = item.PKGProcessId,
                                         PKGProcess = new MSTPKGProcessTypeDto()
                                         {
                                             Id = (item.EBR_MST_PKGProcessType != null) ? item.EBR_MST_PKGProcessType.Id : 0,
                                             Name = (item.EBR_MST_PKGProcessType != null) ? item.EBR_MST_PKGProcessType.Name : "",
                                             Description = (item.EBR_MST_PKGProcessType != null) ? item.EBR_MST_PKGProcessType.Description : "",
                                             IsDeleted = (item.EBR_MST_PKGProcessType != null) ? item.EBR_MST_PKGProcessType.IsDeleted : false,
                                         },
                                         QualityLevelId = item.QualityLevelId,
                                         QualityLevel = new MSTQualityLevelDto()
                                         {
                                             Id = (item.EBR_MST_QualityLevel != null) ? item.EBR_MST_QualityLevel.Id : 0,
                                             Name = (item.EBR_MST_QualityLevel != null) ? item.EBR_MST_QualityLevel.Name : "",
                                             Description = (item.EBR_MST_QualityLevel != null) ? item.EBR_MST_QualityLevel.Description : "",
                                             IsDeleted = (item.EBR_MST_QualityLevel != null) ? item.EBR_MST_QualityLevel.IsDeleted : false,
                                         },
                                         RevenueLocationId = item.RevenueLocationId,
                                         RevenueLocation = new MSTRevenueLocationDto()
                                         {
                                             Id = (item.EBR_MST_RevenueLocation != null) ? item.EBR_MST_RevenueLocation.Id : 0,
                                             Name = (item.EBR_MST_RevenueLocation != null) ? item.EBR_MST_RevenueLocation.Name : "",
                                             Description = (item.EBR_MST_RevenueLocation != null) ? item.EBR_MST_RevenueLocation.Description : "",
                                             IsDeleted = (item.EBR_MST_RevenueLocation != null) ? item.EBR_MST_RevenueLocation.IsDeleted : false,
                                         },
                                         BondDiagramAttached = item.BondDiagramAttached,
                                         ScrapExcessDie_Wafer = item.ScrapExcessDie_Wafer,
                                         UV_Erase = item.UV_Erase,
                                         DieCoat = item.DieCoat,
                                         WireMaterialId = item.WireMaterialId,
                                         WireMaterial = new MSTWireMaterialDto()
                                         {
                                             Id = (item.EBR_MST_WireMaterial != null) ? item.EBR_MST_WireMaterial.Id : 0,
                                             Name = (item.EBR_MST_WireMaterial != null) ? item.EBR_MST_WireMaterial.Name : "",
                                             Description = (item.EBR_MST_WireMaterial != null) ? item.EBR_MST_WireMaterial.Description : "",
                                             IsDeleted = (item.EBR_MST_WireMaterial != null) ? item.EBR_MST_WireMaterial.IsDeleted : false,
                                         },
                                         ProcessLTSID = item.ProcessLTSID,
                                         ProcessLTS = new MSTProcessLTSDto()
                                         {
                                             Id = (item.EBR_MST_ProcessLTS != null) ? item.EBR_MST_ProcessLTS.Id : 0,
                                             Name = (item.EBR_MST_ProcessLTS != null) ? item.EBR_MST_ProcessLTS.Name : "",
                                             Description = (item.EBR_MST_ProcessLTS != null) ? item.EBR_MST_ProcessLTS.Description : "",
                                             IsDeleted = (item.EBR_MST_ProcessLTS != null) ? item.EBR_MST_ProcessLTS.IsDeleted : false,
                                         },
                                         ForecastMaterial = item.ForecastMaterial,
                                         BondDiagram = item.BondDiagram,
                                         BondDiagramRev = item.BondDiagramRev,
                                         NPILot = item.NPILot,
                                         IsCompleted = item.IsCompleted,
                                         EngineerTeam = item.EngineerTeam,
                                         TestLocationId = item.TestLocationId,
                                         TestLocation = new MSTFGLocationDto()
                                         {
                                             Id = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Id : 0,
                                             Name = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Name : "",
                                             Description = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Description : "",
                                             IsDeleted = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.IsDeleted : false,
                                         },
                                         ProbeStatusId = item.ProbeStatusId,
                                         ProbeStatus = new MSTProbeStatusDto()
                                         {
                                             Id = (item.EBR_MST_ProbeStatus != null) ? item.EBR_MST_ProbeStatus.Id : 0,
                                             Name = (item.EBR_MST_ProbeStatus != null) ? item.EBR_MST_ProbeStatus.Name : "",
                                             Description = (item.EBR_MST_ProbeStatus != null) ? item.EBR_MST_ProbeStatus.Description : "",
                                             IsDeleted = (item.EBR_MST_ProbeStatus != null) ? item.EBR_MST_ProbeStatus.IsDeleted : false,
                                         },
                                         PackageTestTypeId = item.PackageTestTypeId,
                                         PackageTestType = new MSTPackageTestTypeDto()
                                         {
                                             Id = (item.EBR_MST_PackageTestType != null) ? item.EBR_MST_PackageTestType.Id : 0,
                                             Name = (item.EBR_MST_PackageTestType != null) ? item.EBR_MST_PackageTestType.Name : "",
                                             Description = (item.EBR_MST_PackageTestType != null) ? item.EBR_MST_PackageTestType.Description : "",
                                             IsDeleted = (item.EBR_MST_PackageTestType != null) ? item.EBR_MST_PackageTestType.IsDeleted : false,
                                         },
                                         TestProgram = item.TestProgram,
                                         TestProgamAvailable = item.TestProgamAvailable,
                                         CommentAvailable = item.CommentAvaliable,
                                         Test_Special_Instruction = item.Test_Sepecial_Instruction,
                                         RequestedBy = item.RequestedBy,
                                         EmailAddressId = item.EmailAddressId,
                                         EmailAddress = new MSTEmailAddressDto()
                                         {
                                             Id = (item.EBR_MST_EmailAddress != null) ? item.EBR_MST_EmailAddress.Id : 0,
                                             Name = (item.EBR_MST_EmailAddress != null) ? item.EBR_MST_EmailAddress.Name : "",
                                             Description = (item.EBR_MST_EmailAddress != null) ? item.EBR_MST_EmailAddress.Description : "",
                                             IsDeleted = (item.EBR_MST_EmailAddress != null) ? item.EBR_MST_EmailAddress.IsDeleted : false,
                                         },
                                         Phone = item.Phone,
                                         RequesterLocationId = item.RequesterLocationId,
                                         RequesterLocation = new MSTRequesterLocationDto()
                                         {
                                             Id = (item.EBR_MST_RequesterLocation != null) ? item.EBR_MST_RequesterLocation.Id : 0,
                                             Name = (item.EBR_MST_RequesterLocation != null) ? item.EBR_MST_RequesterLocation.Name : "",
                                             Description = (item.EBR_MST_RequesterLocation != null) ? item.EBR_MST_RequesterLocation.Description : "",
                                             IsDeleted = (item.EBR_MST_RequesterLocation != null) ? item.EBR_MST_RequesterLocation.IsDeleted : false,
                                         },
                                         BusinessUnit = item.BusinessUnit,
                                         ApprovingManager = item.ApprovingManager,
                                         ManagerEmailId = item.ManagerEmailId,
                                         ManagerEmail = new MSTEmailAddressDto()
                                         {
                                             Id = (item.EBR_MST_EmailAddress != null) ? item.EBR_MST_EmailAddress.Id : 0,
                                             Name = (item.EBR_MST_EmailAddress != null) ? item.EBR_MST_EmailAddress.Name : "",
                                             Description = (item.EBR_MST_EmailAddress != null) ? item.EBR_MST_EmailAddress.Description : "",
                                             IsDeleted = (item.EBR_MST_EmailAddress != null) ? item.EBR_MST_EmailAddress.IsDeleted : false,
                                         },
                                         TotalCost = item.TotalCost,
                                         RequestedShipDate = item.RequestedShipDate,
                                         RequiresTestPgmApproval = item.RequiresTestPgmApproval,
                                         StatusType = (Types.StatusType)item.StatusType,
                                     }).ToListAsync();
                }
            }
            catch (Exception ex)
            {
                _logService.Error(ex.Message, ex);
                return null;
            }
            return results;
        }

        public EBRMasterDto GetById(int id)
        {
            EBRMasterDto result = null;
            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    result = (from item in context.EBR_Dashboard
                              where (item.Id == id && item.IsDeleted == false)
                              select new EBRMasterDto()
                              {
                                  Id = item.Id,
                                  IsDeleted = item.IsDeleted,
                                  LastUpdatedBy = item.LastUpdatedBy,
                                  LastUpdated = item.LastUpdated,
                                  Device = item.Device,
                                  Rev = item.Rev,
                                  FABDieRevision = item.FABDieRevision,
                                  PMPN = item.PMPN,
                                  AMPN = item.AMPN,
                                  TMPN = item.TMPN,
                                  FMPN = item.FMPN,
                                  CPN_SAP_Material = item.CPN_SAP_Material,
                                  PackageId = item.PackageId,
                                  Package = new MSTPackageDto()
                                  {
                                      Id = (item.EBR_MST_Package != null) ? item.EBR_MST_Package.Id : 0,
                                      Name = (item.EBR_MST_Package != null) ? item.EBR_MST_Package.Name : "",
                                      Description = (item.EBR_MST_Package != null) ? item.EBR_MST_Package.Description : "",
                                      IsDeleted = (item.EBR_MST_Package != null) ? item.EBR_MST_Package.IsDeleted : false,
                                  },
                                  PackageSize = item.PackageSize,
                                  Leads = item.Leads,
                                  Speed = item.Speed,
                                  EABI_EBR_Revision = item.EABI_EBR_Revision,
                                  WaferSizeId = item.WaferSizeId,
                                  WaferSize = new MSTWaferSizeDto()
                                  {
                                      Id = (item.EBR_MST_WaferSize != null) ? item.EBR_MST_WaferSize.Id : 0,
                                      Name = (item.EBR_MST_WaferSize != null) ? item.EBR_MST_WaferSize.Name : "",
                                      Description = (item.EBR_MST_WaferSize != null) ? item.EBR_MST_WaferSize.Description : "",
                                      IsDeleted = (item.EBR_MST_WaferSize != null) ? item.EBR_MST_WaferSize.IsDeleted : false,
                                  },
                                  CurrentWaferThickness = item.CurrentWaferThichness,
                                  InternalDevice = item.InternalDevice,
                                  FabCodeId = item.FabCodeId,
                                  FabCode = new MSTFabCodeDto()
                                  {
                                      Id = (item.EBR_MST_FabCode != null) ? item.EBR_MST_FabCode.Id : 0,
                                      Name = (item.EBR_MST_FabCode != null) ? item.EBR_MST_FabCode.Name : "",
                                      Description = (item.EBR_MST_FabCode != null) ? item.EBR_MST_FabCode.Description : "",
                                      IsDeleted = (item.EBR_MST_FabCode != null) ? item.EBR_MST_FabCode.IsDeleted : false,
                                  },
                                  Power_Voltage = item.Power_Voltage,
                                  DieBlankId = item.DieBlankId,
                                  DieBlank = new MSTDieBankDto()
                                  {
                                      Id = (item.EBR_MST_DieBank != null) ? item.EBR_MST_DieBank.Id : 0,
                                      Name = (item.EBR_MST_DieBank != null) ? item.EBR_MST_DieBank.Name : "",
                                      Description = (item.EBR_MST_DieBank != null) ? item.EBR_MST_DieBank.Description : "",
                                      IsDeleted = (item.EBR_MST_DieBank != null) ? item.EBR_MST_DieBank.IsDeleted : false,
                                  },
                                  AssemblyLocationId = item.AssemblyLocationnId,
                                  AssemblyLocation = new MSTAssLocDto()
                                  {
                                      Id = (item.EBR_MST_AssemblyLocation != null) ? item.EBR_MST_AssemblyLocation.Id : 0,
                                      Name = (item.EBR_MST_AssemblyLocation != null) ? item.EBR_MST_AssemblyLocation.Name : "",
                                      Description = (item.EBR_MST_AssemblyLocation != null) ? item.EBR_MST_AssemblyLocation.Description : "",
                                      IsDeleted = (item.EBR_MST_AssemblyLocation != null) ? item.EBR_MST_AssemblyLocation.IsDeleted : false,
                                  },
                                  FGLocationId = item.FGLocationId,
                                  FGLocation = new MSTFGLocationDto()
                                  {
                                      Id = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Id : 0,
                                      Name = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Name : "",
                                      Description = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Description : "",
                                      IsDeleted = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.IsDeleted : false,
                                  },
                                  AssemblyFlow = item.AssemblyFlow,
                                  PackageTypeId = item.PackageTypeId,
                                  PackageType = new MSTPackingTypeDto()
                                  {
                                      Id = (item.EBR_MST_PackingType != null) ? item.EBR_MST_PackingType.Id : 0,
                                      Name = (item.EBR_MST_PackingType != null) ? item.EBR_MST_PackingType.Name : "",
                                      Description = (item.EBR_MST_PackingType != null) ? item.EBR_MST_PackingType.Description : "",
                                      IsDeleted = (item.EBR_MST_PackingType != null) ? item.EBR_MST_PackingType.IsDeleted : false,
                                  },
                                  TopSideMarkingId = item.TopSideMarkingId,
                                  MarkingInstruction = new MSTMarkingInstructionDto()
                                  {
                                      Id = (item.EBR_MST_MarkingInstruction != null) ? item.EBR_MST_MarkingInstruction.Id : 0,
                                      Name = (item.EBR_MST_MarkingInstruction != null) ? item.EBR_MST_MarkingInstruction.Name : "",
                                      Description = (item.EBR_MST_MarkingInstruction != null) ? item.EBR_MST_MarkingInstruction.Description : "",
                                      IsDeleted = (item.EBR_MST_MarkingInstruction != null) ? item.EBR_MST_MarkingInstruction.IsDeleted : false,
                                  },
                                  MRL = item.MRL,
                                  NameOfMarkingFile = item.NameOfMarkingFile,
                                  RequiresSpecialMark = item.RequiresSepecialMark,
                                  RequiresAssEngrInput = item.RequiresAssEngrInput,
                                  MarkingCodeId = item.MarkingCodeId,
                                  MarkingCode = new MSTMarkingSLDto()
                                  {
                                      Id = (item.EBR_MST_MarkingSL != null) ? item.EBR_MST_MarkingSL.Id : 0,
                                      Name = (item.EBR_MST_MarkingSL != null) ? item.EBR_MST_MarkingSL.Name : "",
                                      Description = (item.EBR_MST_MarkingSL != null) ? item.EBR_MST_MarkingSL.Description : "",
                                      IsDeleted = (item.EBR_MST_MarkingSL != null) ? item.EBR_MST_MarkingSL.IsDeleted : false,
                                  },
                                  Pin1Marking = item.Pin1Marking,
                                  TopLine = item.TopLine,
                                  TwoLine = item.C2ndLine,
                                  ThreeLine = item.C3rdLine,
                                  FourLine = item.C4thLine,
                                  FiveLine = item.C5thLine,
                                  SixLine = item.C6thLine,
                                  ShipFinishedProductToId = item.ShipFinishedProductToId,
                                  ShipFinishedProductTo = new MSTFGLocationDto()
                                  {
                                      Id = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Id : 0,
                                      Name = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Name : "",
                                      Description = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Description : "",
                                      IsDeleted = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.IsDeleted : false,
                                  },
                                  AttentionFinished = item.AttentionFinished,
                                  ShipRejectedPartToId = item.ShipRejectedPartToId,
                                  ShipRejectedPartTo = new MSTFGLocationDto()
                                  {
                                      Id = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Id : 0,
                                      Name = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Name : "",
                                      Description = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Description : "",
                                      IsDeleted = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.IsDeleted : false,
                                  },
                                  AttentionRejected = item.AttentionRejected,
                                  ReturnWaferToId = item.ReturnWaferToId,
                                  ReturnWaferTo = new MSTFGLocationDto()
                                  {
                                      Id = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Id : 0,
                                      Name = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Name : "",
                                      Description = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Description : "",
                                      IsDeleted = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.IsDeleted : false,
                                  },
                                  VendorContactId = item.VendorContactId,
                                  VendorContact = new MSTVendorContactDto()
                                  {
                                      Id = (item.EBR_MST_VendorContact != null) ? item.EBR_MST_VendorContact.Id : 0,
                                      Name = (item.EBR_MST_VendorContact != null) ? item.EBR_MST_VendorContact.Name : "",
                                      Description = (item.EBR_MST_VendorContact != null) ? item.EBR_MST_VendorContact.Description : "",
                                      IsDeleted = (item.EBR_MST_VendorContact != null) ? item.EBR_MST_VendorContact.IsDeleted : false,
                                  },
                                  VendorCodeId = item.VendorCodeId,
                                  VendorCode = new MSTVendorCodeDto()
                                  {
                                      Id = (item.EBR_MST_VendorCode != null) ? item.EBR_MST_VendorCode.Id : 0,
                                      Name = (item.EBR_MST_VendorCode != null) ? item.EBR_MST_VendorCode.Name : "",
                                      Description = (item.EBR_MST_VendorCode != null) ? item.EBR_MST_VendorCode.Description : "",
                                      IsDeleted = (item.EBR_MST_VendorCode != null) ? item.EBR_MST_VendorCode.IsDeleted : false,
                                  },
                                  PurposeOfBuildId = item.PurposeOfBuildId,
                                  PurposeOfBuild = new MSTBuildReasonDto()
                                  {
                                      Id = (item.EBR_MST_BuildReason != null) ? item.EBR_MST_BuildReason.Id : 0,
                                      Name = (item.EBR_MST_BuildReason != null) ? item.EBR_MST_BuildReason.Name : "",
                                      Description = (item.EBR_MST_BuildReason != null) ? item.EBR_MST_BuildReason.Description : "",
                                      IsDeleted = (item.EBR_MST_BuildReason != null) ? item.EBR_MST_BuildReason.IsDeleted : false,
                                  },
                                  LotOwnerId = item.LotOwnerId,
                                  LotOwner = new MSTOwnerDto()
                                  {
                                      Id = (item.EBR_MST_Owner != null) ? item.EBR_MST_Owner.Id : 0,
                                      Name = (item.EBR_MST_Owner != null) ? item.EBR_MST_Owner.Name : "",
                                      Description = (item.EBR_MST_Owner != null) ? item.EBR_MST_Owner.Description : "",
                                      IsDeleted = (item.EBR_MST_Owner != null) ? item.EBR_MST_Owner.IsDeleted : false,
                                  },
                                  RequestCycleTimeId = item.RequestCycleTimeId,
                                  RequestCycleTime = new MSTPriorityOfAssemblyBuildDto()
                                  {
                                      Id = (item.EBR_MST_PriorityOfAssemblyBuild != null) ? item.EBR_MST_PriorityOfAssemblyBuild.Id : 0,
                                      Name = (item.EBR_MST_PriorityOfAssemblyBuild != null) ? item.EBR_MST_PriorityOfAssemblyBuild.Name : "",
                                      Description = (item.EBR_MST_PriorityOfAssemblyBuild != null) ? item.EBR_MST_PriorityOfAssemblyBuild.Description : "",
                                      IsDeleted = (item.EBR_MST_PriorityOfAssemblyBuild != null) ? item.EBR_MST_PriorityOfAssemblyBuild.IsDeleted : false,
                                  },
                                  PKGProcessId = item.PKGProcessId,
                                  PKGProcess = new MSTPKGProcessTypeDto()
                                  {
                                      Id = (item.EBR_MST_PKGProcessType != null) ? item.EBR_MST_PKGProcessType.Id : 0,
                                      Name = (item.EBR_MST_PKGProcessType != null) ? item.EBR_MST_PKGProcessType.Name : "",
                                      Description = (item.EBR_MST_PKGProcessType != null) ? item.EBR_MST_PKGProcessType.Description : "",
                                      IsDeleted = (item.EBR_MST_PKGProcessType != null) ? item.EBR_MST_PKGProcessType.IsDeleted : false,
                                  },
                                  QualityLevelId = item.QualityLevelId,
                                  QualityLevel = new MSTQualityLevelDto()
                                  {
                                      Id = (item.EBR_MST_QualityLevel != null) ? item.EBR_MST_QualityLevel.Id : 0,
                                      Name = (item.EBR_MST_QualityLevel != null) ? item.EBR_MST_QualityLevel.Name : "",
                                      Description = (item.EBR_MST_QualityLevel != null) ? item.EBR_MST_QualityLevel.Description : "",
                                      IsDeleted = (item.EBR_MST_QualityLevel != null) ? item.EBR_MST_QualityLevel.IsDeleted : false,
                                  },
                                  RevenueLocationId = item.RevenueLocationId,
                                  RevenueLocation = new MSTRevenueLocationDto()
                                  {
                                      Id = (item.EBR_MST_RevenueLocation != null) ? item.EBR_MST_RevenueLocation.Id : 0,
                                      Name = (item.EBR_MST_RevenueLocation != null) ? item.EBR_MST_RevenueLocation.Name : "",
                                      Description = (item.EBR_MST_RevenueLocation != null) ? item.EBR_MST_RevenueLocation.Description : "",
                                      IsDeleted = (item.EBR_MST_RevenueLocation != null) ? item.EBR_MST_RevenueLocation.IsDeleted : false,
                                  },
                                  BondDiagramAttached = item.BondDiagramAttached,
                                  ScrapExcessDie_Wafer = item.ScrapExcessDie_Wafer,
                                  UV_Erase = item.UV_Erase,
                                  DieCoat = item.DieCoat,
                                  WireMaterialId = item.WireMaterialId,
                                  WireMaterial = new MSTWireMaterialDto()
                                  {
                                      Id = (item.EBR_MST_WireMaterial != null) ? item.EBR_MST_WireMaterial.Id : 0,
                                      Name = (item.EBR_MST_WireMaterial != null) ? item.EBR_MST_WireMaterial.Name : "",
                                      Description = (item.EBR_MST_WireMaterial != null) ? item.EBR_MST_WireMaterial.Description : "",
                                      IsDeleted = (item.EBR_MST_WireMaterial != null) ? item.EBR_MST_WireMaterial.IsDeleted : false,
                                  },
                                  ProcessLTSID = item.ProcessLTSID,
                                  ProcessLTS = new MSTProcessLTSDto()
                                  {
                                      Id = (item.EBR_MST_ProcessLTS != null) ? item.EBR_MST_ProcessLTS.Id : 0,
                                      Name = (item.EBR_MST_ProcessLTS != null) ? item.EBR_MST_ProcessLTS.Name : "",
                                      Description = (item.EBR_MST_ProcessLTS != null) ? item.EBR_MST_ProcessLTS.Description : "",
                                      IsDeleted = (item.EBR_MST_ProcessLTS != null) ? item.EBR_MST_ProcessLTS.IsDeleted : false,
                                  },
                                  ForecastMaterial = item.ForecastMaterial,
                                  BondDiagram = item.BondDiagram,
                                  BondDiagramRev = item.BondDiagramRev,
                                  NPILot = item.NPILot,
                                  IsCompleted = item.IsCompleted,
                                  EngineerTeam = item.EngineerTeam,
                                  TestLocationId = item.TestLocationId,
                                  TestLocation = new MSTFGLocationDto()
                                  {
                                      Id = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Id : 0,
                                      Name = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Name : "",
                                      Description = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Description : "",
                                      IsDeleted = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.IsDeleted : false,
                                  },
                                  ProbeStatusId = item.ProbeStatusId,
                                  ProbeStatus = new MSTProbeStatusDto()
                                  {
                                      Id = (item.EBR_MST_ProbeStatus != null) ? item.EBR_MST_ProbeStatus.Id : 0,
                                      Name = (item.EBR_MST_ProbeStatus != null) ? item.EBR_MST_ProbeStatus.Name : "",
                                      Description = (item.EBR_MST_ProbeStatus != null) ? item.EBR_MST_ProbeStatus.Description : "",
                                      IsDeleted = (item.EBR_MST_ProbeStatus != null) ? item.EBR_MST_ProbeStatus.IsDeleted : false,
                                  },
                                  PackageTestTypeId = item.PackageTestTypeId,
                                  PackageTestType = new MSTPackageTestTypeDto()
                                  {
                                      Id = (item.EBR_MST_PackageTestType != null) ? item.EBR_MST_PackageTestType.Id : 0,
                                      Name = (item.EBR_MST_PackageTestType != null) ? item.EBR_MST_PackageTestType.Name : "",
                                      Description = (item.EBR_MST_PackageTestType != null) ? item.EBR_MST_PackageTestType.Description : "",
                                      IsDeleted = (item.EBR_MST_PackageTestType != null) ? item.EBR_MST_PackageTestType.IsDeleted : false,
                                  },
                                  TestProgram = item.TestProgram,
                                  TestProgamAvailable = item.TestProgamAvailable,
                                  CommentAvailable = item.CommentAvaliable,
                                  Test_Special_Instruction = item.Test_Sepecial_Instruction,
                                  RequestedBy = item.RequestedBy,
                                  EmailAddressId = item.EmailAddressId,
                                  EmailAddress = new MSTEmailAddressDto()
                                  {
                                      Id = (item.EBR_MST_EmailAddress != null) ? item.EBR_MST_EmailAddress.Id : 0,
                                      Name = (item.EBR_MST_EmailAddress != null) ? item.EBR_MST_EmailAddress.Name : "",
                                      Description = (item.EBR_MST_EmailAddress != null) ? item.EBR_MST_EmailAddress.Description : "",
                                      IsDeleted = (item.EBR_MST_EmailAddress != null) ? item.EBR_MST_EmailAddress.IsDeleted : false,
                                  },
                                  Phone = item.Phone,
                                  RequesterLocationId = item.RequesterLocationId,
                                  RequesterLocation = new MSTRequesterLocationDto()
                                  {
                                      Id = (item.EBR_MST_RequesterLocation != null) ? item.EBR_MST_RequesterLocation.Id : 0,
                                      Name = (item.EBR_MST_RequesterLocation != null) ? item.EBR_MST_RequesterLocation.Name : "",
                                      Description = (item.EBR_MST_RequesterLocation != null) ? item.EBR_MST_RequesterLocation.Description : "",
                                      IsDeleted = (item.EBR_MST_RequesterLocation != null) ? item.EBR_MST_RequesterLocation.IsDeleted : false,
                                  },
                                  BusinessUnit = item.BusinessUnit,
                                  ApprovingManager = item.ApprovingManager,
                                  ManagerEmailId = item.ManagerEmailId,
                                  ManagerEmail = new MSTEmailAddressDto()
                                  {
                                      Id = (item.EBR_MST_EmailAddress != null) ? item.EBR_MST_EmailAddress.Id : 0,
                                      Name = (item.EBR_MST_EmailAddress != null) ? item.EBR_MST_EmailAddress.Name : "",
                                      Description = (item.EBR_MST_EmailAddress != null) ? item.EBR_MST_EmailAddress.Description : "",
                                      IsDeleted = (item.EBR_MST_EmailAddress != null) ? item.EBR_MST_EmailAddress.IsDeleted : false,
                                  },
                                  TotalCost = item.TotalCost,
                                  RequestedShipDate = item.RequestedShipDate,
                                  RequiresTestPgmApproval = item.RequiresTestPgmApproval,
                                  StatusType = (Types.StatusType)item.StatusType,
                              }).Single();
                }
            }
            catch (Exception ex)
            {
                _logService.Error(ex.Message, ex);
                return null;
            }
            return result;
        }

        public async Task<EBRMasterDto> GetByIdAsync(int id)
        {
            EBRMasterDto result = null;
            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    result = await (from item in context.EBR_Dashboard
                                    where (item.Id == id && item.IsDeleted == false)
                                    select new EBRMasterDto()
                                    {
                                        Id = item.Id,
                                        IsDeleted = item.IsDeleted,
                                        LastUpdatedBy = item.LastUpdatedBy,
                                        LastUpdated = item.LastUpdated,
                                        Device = item.Device,
                                        Rev = item.Rev,
                                        FABDieRevision = item.FABDieRevision,
                                        PMPN = item.PMPN,
                                        AMPN = item.AMPN,
                                        TMPN = item.TMPN,
                                        FMPN = item.FMPN,
                                        CPN_SAP_Material = item.CPN_SAP_Material,
                                        PackageId = item.PackageId,
                                        Package = new MSTPackageDto()
                                        {
                                            Id = (item.EBR_MST_Package != null) ? item.EBR_MST_Package.Id : 0,
                                            Name = (item.EBR_MST_Package != null) ? item.EBR_MST_Package.Name : "",
                                            Description = (item.EBR_MST_Package != null) ? item.EBR_MST_Package.Description : "",
                                            IsDeleted = (item.EBR_MST_Package != null) ? item.EBR_MST_Package.IsDeleted : false,
                                        },
                                        PackageSize = item.PackageSize,
                                        Leads = item.Leads,
                                        Speed = item.Speed,
                                        EABI_EBR_Revision = item.EABI_EBR_Revision,
                                        WaferSizeId = item.WaferSizeId,
                                        WaferSize = new MSTWaferSizeDto()
                                        {
                                            Id = (item.EBR_MST_WaferSize != null) ? item.EBR_MST_WaferSize.Id : 0,
                                            Name = (item.EBR_MST_WaferSize != null) ? item.EBR_MST_WaferSize.Name : "",
                                            Description = (item.EBR_MST_WaferSize != null) ? item.EBR_MST_WaferSize.Description : "",
                                            IsDeleted = (item.EBR_MST_WaferSize != null) ? item.EBR_MST_WaferSize.IsDeleted : false,
                                        },
                                        CurrentWaferThickness = item.CurrentWaferThichness,
                                        InternalDevice = item.InternalDevice,
                                        FabCodeId = item.FabCodeId,
                                        FabCode = new MSTFabCodeDto()
                                        {
                                            Id = (item.EBR_MST_FabCode != null) ? item.EBR_MST_FabCode.Id : 0,
                                            Name = (item.EBR_MST_FabCode != null) ? item.EBR_MST_FabCode.Name : "",
                                            Description = (item.EBR_MST_FabCode != null) ? item.EBR_MST_FabCode.Description : "",
                                            IsDeleted = (item.EBR_MST_FabCode != null) ? item.EBR_MST_FabCode.IsDeleted : false,
                                        },
                                        Power_Voltage = item.Power_Voltage,
                                        DieBlankId = item.DieBlankId,
                                        DieBlank = new MSTDieBankDto()
                                        {
                                            Id = (item.EBR_MST_DieBank != null) ? item.EBR_MST_DieBank.Id : 0,
                                            Name = (item.EBR_MST_DieBank != null) ? item.EBR_MST_DieBank.Name : "",
                                            Description = (item.EBR_MST_DieBank != null) ? item.EBR_MST_DieBank.Description : "",
                                            IsDeleted = (item.EBR_MST_DieBank != null) ? item.EBR_MST_DieBank.IsDeleted : false,
                                        },
                                        AssemblyLocationId = item.AssemblyLocationnId,
                                        AssemblyLocation = new MSTAssLocDto()
                                        {
                                            Id = (item.EBR_MST_AssemblyLocation != null) ? item.EBR_MST_AssemblyLocation.Id : 0,
                                            Name = (item.EBR_MST_AssemblyLocation != null) ? item.EBR_MST_AssemblyLocation.Name : "",
                                            Description = (item.EBR_MST_AssemblyLocation != null) ? item.EBR_MST_AssemblyLocation.Description : "",
                                            IsDeleted = (item.EBR_MST_AssemblyLocation != null) ? item.EBR_MST_AssemblyLocation.IsDeleted : false,
                                        },
                                        FGLocationId = item.FGLocationId,
                                        FGLocation = new MSTFGLocationDto()
                                        {
                                            Id = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Id : 0,
                                            Name = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Name : "",
                                            Description = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Description : "",
                                            IsDeleted = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.IsDeleted : false,
                                        },
                                        AssemblyFlow = item.AssemblyFlow,
                                        PackageTypeId = item.PackageTypeId,
                                        PackageType = new MSTPackingTypeDto()
                                        {
                                            Id = (item.EBR_MST_PackingType != null) ? item.EBR_MST_PackingType.Id : 0,
                                            Name = (item.EBR_MST_PackingType != null) ? item.EBR_MST_PackingType.Name : "",
                                            Description = (item.EBR_MST_PackingType != null) ? item.EBR_MST_PackingType.Description : "",
                                            IsDeleted = (item.EBR_MST_PackingType != null) ? item.EBR_MST_PackingType.IsDeleted : false,
                                        },
                                        TopSideMarkingId = item.TopSideMarkingId,
                                        MarkingInstruction = new MSTMarkingInstructionDto()
                                        {
                                            Id = (item.EBR_MST_MarkingInstruction != null) ? item.EBR_MST_MarkingInstruction.Id : 0,
                                            Name = (item.EBR_MST_MarkingInstruction != null) ? item.EBR_MST_MarkingInstruction.Name : "",
                                            Description = (item.EBR_MST_MarkingInstruction != null) ? item.EBR_MST_MarkingInstruction.Description : "",
                                            IsDeleted = (item.EBR_MST_MarkingInstruction != null) ? item.EBR_MST_MarkingInstruction.IsDeleted : false,
                                        },
                                        MRL = item.MRL,
                                        NameOfMarkingFile = item.NameOfMarkingFile,
                                        RequiresSpecialMark = item.RequiresSepecialMark,
                                        RequiresAssEngrInput = item.RequiresAssEngrInput,
                                        MarkingCodeId = item.MarkingCodeId,
                                        MarkingCode = new MSTMarkingSLDto()
                                        {
                                            Id = (item.EBR_MST_MarkingSL != null) ? item.EBR_MST_MarkingSL.Id : 0,
                                            Name = (item.EBR_MST_MarkingSL != null) ? item.EBR_MST_MarkingSL.Name : "",
                                            Description = (item.EBR_MST_MarkingSL != null) ? item.EBR_MST_MarkingSL.Description : "",
                                            IsDeleted = (item.EBR_MST_MarkingSL != null) ? item.EBR_MST_MarkingSL.IsDeleted : false,
                                        },
                                        Pin1Marking = item.Pin1Marking,
                                        TopLine = item.TopLine,
                                        TwoLine = item.C2ndLine,
                                        ThreeLine = item.C3rdLine,
                                        FourLine = item.C4thLine,
                                        FiveLine = item.C5thLine,
                                        SixLine = item.C6thLine,
                                        ShipFinishedProductToId = item.ShipFinishedProductToId,
                                        ShipFinishedProductTo = new MSTFGLocationDto()
                                        {
                                            Id = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Id : 0,
                                            Name = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Name : "",
                                            Description = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Description : "",
                                            IsDeleted = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.IsDeleted : false,
                                        },
                                        AttentionFinished = item.AttentionFinished,
                                        ShipRejectedPartToId = item.ShipRejectedPartToId,
                                        ShipRejectedPartTo = new MSTFGLocationDto()
                                        {
                                            Id = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Id : 0,
                                            Name = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Name : "",
                                            Description = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Description : "",
                                            IsDeleted = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.IsDeleted : false,
                                        },
                                        AttentionRejected = item.AttentionRejected,
                                        ReturnWaferToId = item.ReturnWaferToId,
                                        ReturnWaferTo = new MSTFGLocationDto()
                                        {
                                            Id = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Id : 0,
                                            Name = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Name : "",
                                            Description = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Description : "",
                                            IsDeleted = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.IsDeleted : false,
                                        },
                                        VendorContactId = item.VendorContactId,
                                        VendorContact = new MSTVendorContactDto()
                                        {
                                            Id = (item.EBR_MST_VendorContact != null) ? item.EBR_MST_VendorContact.Id : 0,
                                            Name = (item.EBR_MST_VendorContact != null) ? item.EBR_MST_VendorContact.Name : "",
                                            Description = (item.EBR_MST_VendorContact != null) ? item.EBR_MST_VendorContact.Description : "",
                                            IsDeleted = (item.EBR_MST_VendorContact != null) ? item.EBR_MST_VendorContact.IsDeleted : false,
                                        },
                                        VendorCodeId = item.VendorCodeId,
                                        VendorCode = new MSTVendorCodeDto()
                                        {
                                            Id = (item.EBR_MST_VendorCode != null) ? item.EBR_MST_VendorCode.Id : 0,
                                            Name = (item.EBR_MST_VendorCode != null) ? item.EBR_MST_VendorCode.Name : "",
                                            Description = (item.EBR_MST_VendorCode != null) ? item.EBR_MST_VendorCode.Description : "",
                                            IsDeleted = (item.EBR_MST_VendorCode != null) ? item.EBR_MST_VendorCode.IsDeleted : false,
                                        },
                                        PurposeOfBuildId = item.PurposeOfBuildId,
                                        PurposeOfBuild = new MSTBuildReasonDto()
                                        {
                                            Id = (item.EBR_MST_BuildReason != null) ? item.EBR_MST_BuildReason.Id : 0,
                                            Name = (item.EBR_MST_BuildReason != null) ? item.EBR_MST_BuildReason.Name : "",
                                            Description = (item.EBR_MST_BuildReason != null) ? item.EBR_MST_BuildReason.Description : "",
                                            IsDeleted = (item.EBR_MST_BuildReason != null) ? item.EBR_MST_BuildReason.IsDeleted : false,
                                        },
                                        LotOwnerId = item.LotOwnerId,
                                        LotOwner = new MSTOwnerDto()
                                        {
                                            Id = (item.EBR_MST_Owner != null) ? item.EBR_MST_Owner.Id : 0,
                                            Name = (item.EBR_MST_Owner != null) ? item.EBR_MST_Owner.Name : "",
                                            Description = (item.EBR_MST_Owner != null) ? item.EBR_MST_Owner.Description : "",
                                            IsDeleted = (item.EBR_MST_Owner != null) ? item.EBR_MST_Owner.IsDeleted : false,
                                        },
                                        RequestCycleTimeId = item.RequestCycleTimeId,
                                        RequestCycleTime = new MSTPriorityOfAssemblyBuildDto()
                                        {
                                            Id = (item.EBR_MST_PriorityOfAssemblyBuild != null) ? item.EBR_MST_PriorityOfAssemblyBuild.Id : 0,
                                            Name = (item.EBR_MST_PriorityOfAssemblyBuild != null) ? item.EBR_MST_PriorityOfAssemblyBuild.Name : "",
                                            Description = (item.EBR_MST_PriorityOfAssemblyBuild != null) ? item.EBR_MST_PriorityOfAssemblyBuild.Description : "",
                                            IsDeleted = (item.EBR_MST_PriorityOfAssemblyBuild != null) ? item.EBR_MST_PriorityOfAssemblyBuild.IsDeleted : false,
                                        },
                                        PKGProcessId = item.PKGProcessId,
                                        PKGProcess = new MSTPKGProcessTypeDto()
                                        {
                                            Id = (item.EBR_MST_PKGProcessType != null) ? item.EBR_MST_PKGProcessType.Id : 0,
                                            Name = (item.EBR_MST_PKGProcessType != null) ? item.EBR_MST_PKGProcessType.Name : "",
                                            Description = (item.EBR_MST_PKGProcessType != null) ? item.EBR_MST_PKGProcessType.Description : "",
                                            IsDeleted = (item.EBR_MST_PKGProcessType != null) ? item.EBR_MST_PKGProcessType.IsDeleted : false,
                                        },
                                        QualityLevelId = item.QualityLevelId,
                                        QualityLevel = new MSTQualityLevelDto()
                                        {
                                            Id = (item.EBR_MST_QualityLevel != null) ? item.EBR_MST_QualityLevel.Id : 0,
                                            Name = (item.EBR_MST_QualityLevel != null) ? item.EBR_MST_QualityLevel.Name : "",
                                            Description = (item.EBR_MST_QualityLevel != null) ? item.EBR_MST_QualityLevel.Description : "",
                                            IsDeleted = (item.EBR_MST_QualityLevel != null) ? item.EBR_MST_QualityLevel.IsDeleted : false,
                                        },
                                        RevenueLocationId = item.RevenueLocationId,
                                        RevenueLocation = new MSTRevenueLocationDto()
                                        {
                                            Id = (item.EBR_MST_RevenueLocation != null) ? item.EBR_MST_RevenueLocation.Id : 0,
                                            Name = (item.EBR_MST_RevenueLocation != null) ? item.EBR_MST_RevenueLocation.Name : "",
                                            Description = (item.EBR_MST_RevenueLocation != null) ? item.EBR_MST_RevenueLocation.Description : "",
                                            IsDeleted = (item.EBR_MST_RevenueLocation != null) ? item.EBR_MST_RevenueLocation.IsDeleted : false,
                                        },
                                        BondDiagramAttached = item.BondDiagramAttached,
                                        ScrapExcessDie_Wafer = item.ScrapExcessDie_Wafer,
                                        UV_Erase = item.UV_Erase,
                                        DieCoat = item.DieCoat,
                                        WireMaterialId = item.WireMaterialId,
                                        WireMaterial = new MSTWireMaterialDto()
                                        {
                                            Id = (item.EBR_MST_WireMaterial != null) ? item.EBR_MST_WireMaterial.Id : 0,
                                            Name = (item.EBR_MST_WireMaterial != null) ? item.EBR_MST_WireMaterial.Name : "",
                                            Description = (item.EBR_MST_WireMaterial != null) ? item.EBR_MST_WireMaterial.Description : "",
                                            IsDeleted = (item.EBR_MST_WireMaterial != null) ? item.EBR_MST_WireMaterial.IsDeleted : false,
                                        },
                                        ProcessLTSID = item.ProcessLTSID,
                                        ProcessLTS = new MSTProcessLTSDto()
                                        {
                                            Id = (item.EBR_MST_ProcessLTS != null) ? item.EBR_MST_ProcessLTS.Id : 0,
                                            Name = (item.EBR_MST_ProcessLTS != null) ? item.EBR_MST_ProcessLTS.Name : "",
                                            Description = (item.EBR_MST_ProcessLTS != null) ? item.EBR_MST_ProcessLTS.Description : "",
                                            IsDeleted = (item.EBR_MST_ProcessLTS != null) ? item.EBR_MST_ProcessLTS.IsDeleted : false,
                                        },
                                        ForecastMaterial = item.ForecastMaterial,
                                        BondDiagram = item.BondDiagram,
                                        BondDiagramRev = item.BondDiagramRev,
                                        NPILot = item.NPILot,
                                        IsCompleted = item.IsCompleted,
                                        EngineerTeam = item.EngineerTeam,
                                        TestLocationId = item.TestLocationId,
                                        TestLocation = new MSTFGLocationDto()
                                        {
                                            Id = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Id : 0,
                                            Name = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Name : "",
                                            Description = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.Description : "",
                                            IsDeleted = (item.EBR_MST_FGLocation != null) ? item.EBR_MST_FGLocation.IsDeleted : false,
                                        },
                                        ProbeStatusId = item.ProbeStatusId,
                                        ProbeStatus = new MSTProbeStatusDto()
                                        {
                                            Id = (item.EBR_MST_ProbeStatus != null) ? item.EBR_MST_ProbeStatus.Id : 0,
                                            Name = (item.EBR_MST_ProbeStatus != null) ? item.EBR_MST_ProbeStatus.Name : "",
                                            Description = (item.EBR_MST_ProbeStatus != null) ? item.EBR_MST_ProbeStatus.Description : "",
                                            IsDeleted = (item.EBR_MST_ProbeStatus != null) ? item.EBR_MST_ProbeStatus.IsDeleted : false,
                                        },
                                        PackageTestTypeId = item.PackageTestTypeId,
                                        PackageTestType = new MSTPackageTestTypeDto()
                                        {
                                            Id = (item.EBR_MST_PackageTestType != null) ? item.EBR_MST_PackageTestType.Id : 0,
                                            Name = (item.EBR_MST_PackageTestType != null) ? item.EBR_MST_PackageTestType.Name : "",
                                            Description = (item.EBR_MST_PackageTestType != null) ? item.EBR_MST_PackageTestType.Description : "",
                                            IsDeleted = (item.EBR_MST_PackageTestType != null) ? item.EBR_MST_PackageTestType.IsDeleted : false,
                                        },
                                        TestProgram = item.TestProgram,
                                        TestProgamAvailable = item.TestProgamAvailable,
                                        CommentAvailable = item.CommentAvaliable,
                                        Test_Special_Instruction = item.Test_Sepecial_Instruction,
                                        RequestedBy = item.RequestedBy,
                                        EmailAddressId = item.EmailAddressId,
                                        EmailAddress = new MSTEmailAddressDto()
                                        {
                                            Id = (item.EBR_MST_EmailAddress != null) ? item.EBR_MST_EmailAddress.Id : 0,
                                            Name = (item.EBR_MST_EmailAddress != null) ? item.EBR_MST_EmailAddress.Name : "",
                                            Description = (item.EBR_MST_EmailAddress != null) ? item.EBR_MST_EmailAddress.Description : "",
                                            IsDeleted = (item.EBR_MST_EmailAddress != null) ? item.EBR_MST_EmailAddress.IsDeleted : false,
                                        },
                                        Phone = item.Phone,
                                        RequesterLocationId = item.RequesterLocationId,
                                        RequesterLocation = new MSTRequesterLocationDto()
                                        {
                                            Id = (item.EBR_MST_RequesterLocation != null) ? item.EBR_MST_RequesterLocation.Id : 0,
                                            Name = (item.EBR_MST_RequesterLocation != null) ? item.EBR_MST_RequesterLocation.Name : "",
                                            Description = (item.EBR_MST_RequesterLocation != null) ? item.EBR_MST_RequesterLocation.Description : "",
                                            IsDeleted = (item.EBR_MST_RequesterLocation != null) ? item.EBR_MST_RequesterLocation.IsDeleted : false,
                                        },
                                        BusinessUnit = item.BusinessUnit,
                                        ApprovingManager = item.ApprovingManager,
                                        ManagerEmailId = item.ManagerEmailId,
                                        ManagerEmail = new MSTEmailAddressDto()
                                        {
                                            Id = (item.EBR_MST_EmailAddress != null) ? item.EBR_MST_EmailAddress.Id : 0,
                                            Name = (item.EBR_MST_EmailAddress != null) ? item.EBR_MST_EmailAddress.Name : "",
                                            Description = (item.EBR_MST_EmailAddress != null) ? item.EBR_MST_EmailAddress.Description : "",
                                            IsDeleted = (item.EBR_MST_EmailAddress != null) ? item.EBR_MST_EmailAddress.IsDeleted : false,
                                        },
                                        TotalCost = item.TotalCost,
                                        RequestedShipDate = item.RequestedShipDate,
                                        RequiresTestPgmApproval = item.RequiresTestPgmApproval,
                                        StatusType = (Types.StatusType)item.StatusType,
                                    }).SingleAsync();
                }
            }
            catch (Exception ex)
            {
                _logService.Error(ex.Message, ex);
                return null;
            }
            return result;
        }
        #endregion

        #region Implement IAdd
        public SaveResult Add(EBRMasterDto entity)
        {
            var result = SaveResult.FAILURE;

            try
            {
                var item = ConvertTo(entity);
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    context.Entry<EBR_Dashboard>(item).State = EntityState.Added;
                    result = context.SaveChanges() > 0 ? SaveResult.SUCCESS : SaveResult.FAILURE;
                }
            }
            catch (Exception ex)
            {
                _logService.Error(ex.Message, ex);
            }

            return result;
        }

        public async Task<SaveResult> AddAsync(EBRMasterDto entity)
        {
            var result = SaveResult.FAILURE;

            try
            {
                var item = ConvertTo(entity);
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    context.Entry<EBR_Dashboard>(item).State = EntityState.Added;
                    result = await context.SaveChangesAsync() > 0 ? SaveResult.SUCCESS : SaveResult.FAILURE;
                }
            }
            catch (Exception ex)
            {
                _logService.Error(ex.Message, ex);
            }

            return result;
        }

        #endregion

        #region Implement IInsert
        public int Insert(EBRMasterDto entity)
        {
            var result = 0;

            try
            {
                var item = ConvertTo(entity);
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    context.Entry<EBR_Dashboard>(item).State = EntityState.Added;
                    context.SaveChanges();
                    result = item.Id;
                }
            }
            catch (Exception ex)
            {
                _logService.Error(ex.Message, ex);
                result = 0;
            }

            return result;
        }
        public async Task<int> InsertAsync(EBRMasterDto entity)
        {
            var result = 0;

            try
            {
                var item = ConvertTo(entity);
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    context.Entry<EBR_Dashboard>(item).State = EntityState.Added;
                    await context.SaveChangesAsync();
                    result = item.Id;
                }
            }
            catch (Exception ex)
            {
                _logService.Error(ex.Message, ex);
                result = 0;
            }

            return result;
        }
        #endregion

        #region Implement IUpdate
        public SaveResult Update(EBRMasterDto entity)
        {
            var result = SaveResult.FAILURE;

            try
            {
                var item = ConvertTo(entity);
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    context.Entry<EBR_Dashboard>(item).State = EntityState.Modified;
                    result = context.SaveChanges() > 0 ? SaveResult.SUCCESS : SaveResult.FAILURE;
                }
            }
            catch (Exception ex)
            {
                _logService.Error(ex.Message, ex);
            }

            return result;
        }

        public async Task<SaveResult> UpdateAsync(EBRMasterDto entity)
        {
            var result = SaveResult.FAILURE;

            try
            {
                var item = ConvertTo(entity);
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    context.Entry<EBR_Dashboard>(item).State = EntityState.Modified;
                    result = await context.SaveChangesAsync() > 0 ? SaveResult.SUCCESS : SaveResult.FAILURE;
                }
            }
            catch (Exception ex)
            {
                _logService.Error(ex.Message, ex);
            }

            return result;
        }
        #endregion

        #region Implement Change Status
        /// <summary>
        /// Changes the status.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <returns>System.Int32.</returns>
        public SaveResult ChangeStatus(int id, StatusType statusType)
        {
            SaveResult result = SaveResult.FAILURE;

            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    var item = context.EBR_Dashboard.Single(x => x.Id == id);
                    item.StatusType = (byte)statusType;

                    if ((byte)StatusType.SUBMITTED == item.StatusType && statusType == StatusType.REJECTED)
                    {
                        item.Rev = "Rev 02";
                        item.StatusType = (byte)StatusType.DRAFT;
                    }

                    if (statusType == StatusType.CANCELLED)
                        item.IsDeleted = true;

                    context.Entry<EBR_Dashboard>(item).State = EntityState.Modified;
                    result = context.SaveChanges() > 0 ? SaveResult.SUCCESS : SaveResult.FAILURE;
                }
            }
            catch (Exception ex)
            {
                _logService.Error(ex.Message, ex);
                result = 0;
            }

            return result;
        }
        /// <summary>
        /// Changes the status asynchronous.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <returns>Task&lt;System.Int32&gt;.</returns>
        public async Task<SaveResult> ChangeStatusAsync(int id, StatusType statusType)
        {
            SaveResult result = SaveResult.FAILURE;

            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    var item = context.EBR_Dashboard.Single(x => x.Id == id);

                    if ((byte)StatusType.SUBMITTED == item.StatusType && statusType == StatusType.REJECTED)
                        item.Rev = "Rev 02";

                    if (item.StatusType == (byte)StatusType.CANCELLED)
                        item.IsDeleted = true;

                    item.StatusType = (byte)statusType;

                    context.Entry<EBR_Dashboard>(item).State = EntityState.Modified;
                    result = await context.SaveChangesAsync() > 0 ? SaveResult.SUCCESS : SaveResult.FAILURE; ;
                }
            }
            catch (Exception ex)
            {
                _logService.Error(ex.Message, ex);
                result = 0;
            }

            return result;
        }
        #endregion

        #region Func Private
        private EBR_Dashboard ConvertTo(EBRMasterDto item)
        {
            return new EBR_Dashboard()
            {
                Id = item.Id,
                IsDeleted = item.IsDeleted,
                LastUpdatedBy = item.LastUpdatedBy,
                LastUpdated = item.LastUpdated,
                Device = item.Device,
                Rev = item.Rev,
                FABDieRevision = item.FABDieRevision,
                PMPN = item.PMPN,
                AMPN = item.AMPN,
                TMPN = item.TMPN,
                FMPN = item.FMPN,
                CPN_SAP_Material = item.CPN_SAP_Material,
                PackageId = item.PackageId,
                PackageSize = item.PackageSize,
                Leads = item.Leads,
                Speed = item.Speed,
                EABI_EBR_Revision = item.EABI_EBR_Revision,
                WaferSizeId = item.WaferSizeId,
                CurrentWaferThichness = item.CurrentWaferThickness,
                InternalDevice = item.InternalDevice,
                FabCodeId = item.FabCodeId,
                Power_Voltage = item.Power_Voltage,
                DieBlankId = item.DieBlankId,
                AssemblyLocationnId = item.AssemblyLocationId,
                FGLocationId = item.FGLocationId,
                AssemblyFlow = item.AssemblyFlow,
                PackageTypeId = item.PackageTypeId,
                TopSideMarkingId = item.TopSideMarkingId,
                MRL = item.MRL,
                NameOfMarkingFile = item.NameOfMarkingFile,
                RequiresSepecialMark = item.RequiresSpecialMark,
                RequiresAssEngrInput = item.RequiresAssEngrInput,
                MarkingCodeId = item.MarkingCodeId,
                Pin1Marking = item.Pin1Marking,
                TopLine = item.TopLine,
                C2ndLine = item.TwoLine,
                C3rdLine = item.ThreeLine,
                C4thLine = item.FourLine,
                C5thLine = item.FiveLine,
                C6thLine = item.SixLine,
                ShipFinishedProductToId = item.ShipFinishedProductToId,
                AttentionFinished = item.AttentionFinished,
                ShipRejectedPartToId = item.ShipRejectedPartToId,
                AttentionRejected = item.AttentionRejected,
                ReturnWaferToId = item.ReturnWaferToId,
                VendorContactId = item.VendorContactId,
                VendorCodeId = item.VendorCodeId,
                PurposeOfBuildId = item.PurposeOfBuildId,
                LotOwnerId = item.LotOwnerId,
                RequestCycleTimeId = item.RequestCycleTimeId,
                PKGProcessId = item.PKGProcessId,
                QualityLevelId = item.QualityLevelId,
                RevenueLocationId = item.RevenueLocationId,
                BondDiagramAttached = item.BondDiagramAttached,
                ScrapExcessDie_Wafer = item.ScrapExcessDie_Wafer,
                UV_Erase = item.UV_Erase,
                DieCoat = item.DieCoat,
                WireMaterialId = item.WireMaterialId,
                ProcessLTSID = item.ProcessLTSID,
                ForecastMaterial = item.ForecastMaterial,
                BondDiagram = item.BondDiagram,
                BondDiagramRev = item.BondDiagramRev,
                NPILot = item.NPILot,
                IsCompleted = item.IsCompleted,
                EngineerTeam = item.EngineerTeam,
                TestLocationId = item.TestLocationId,
                ProbeStatusId = item.ProbeStatusId,
                PackageTestTypeId = item.PackageTestTypeId,
                TestProgram = item.TestProgram,
                TestProgamAvailable = item.TestProgamAvailable,
                CommentAvaliable = item.CommentAvailable,
                Test_Sepecial_Instruction = item.Test_Special_Instruction,
                RequestedBy = item.RequestedBy,
                EmailAddressId = item.EmailAddressId,
                Phone = item.Phone,
                RequesterLocationId = item.RequesterLocationId,
                BusinessUnit = item.BusinessUnit,
                ApprovingManager = item.ApprovingManager,
                ManagerEmailId = item.ManagerEmailId,
                TotalCost = item.TotalCost,
                RequestedShipDate = item.RequestedShipDate,
                RequiresTestPgmApproval = item.RequiresTestPgmApproval,
                StatusType = (byte)item.StatusType,
            };
        }
        #endregion
    }
}

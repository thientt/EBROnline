// ***********************************************************************
// Assembly         : EBROnline.Model
// Author           : tranthiencdsp@gmail.com
// Created          : 02-25-2016
//
// Last Modified By : tranthiencdsp@gmail.com
// Last Modified On : 03-09-2016
// ***********************************************************************
// <copyright file="EBRMasterDto.cs" company="Atmel Corporation">
//     Copyright © Atmel 2016
// </copyright>
// <summary></summary>
// ***********************************************************************
using EBROnline.Model.Types;
using System;

/// <summary>
/// The DTO namespace.
/// </summary>
namespace EBROnline.Model.DTO
{
    /// <summary>
    /// Class EBRMasterDto.
    /// </summary>
    public class EBRMasterDto:BaseDto
    {
        /// <summary>
        /// Gets or sets the device.
        /// </summary>
        /// <value>The device.</value>
        public string Device { get; set; }

        /// <summary>
        /// Gets or sets the rev.
        /// </summary>
        /// <value>The rev.</value>
        public string Rev { get; set; }

        /// <summary>
        /// Gets or sets the fab die revision.
        /// </summary>
        /// <value>The fab die revision.</value>
        public string FABDieRevision { get; set; }

        /// <summary>
        /// Gets or sets the PMPN.
        /// </summary>
        /// <value>The PMPN.</value>
        public string PMPN { get; set; }

        /// <summary>
        /// Gets or sets the TMPN.
        /// </summary>
        /// <value>The TMPN.</value>
        public string TMPN { get; set; }

        /// <summary>
        /// Gets or sets the ampn.
        /// </summary>
        /// <value>The ampn.</value>
        public string AMPN { get; set; }

        /// <summary>
        /// Gets or sets the FMPN.
        /// </summary>
        /// <value>The FMPN.</value>
        public string FMPN { get; set; }

        /// <summary>
        /// Gets or sets the cp n_ sa p_ material.
        /// </summary>
        /// <value>The cp n_ sa p_ material.</value>
        public string CPN_SAP_Material { get; set; }

        /// <summary>
        /// Gets or sets the package identifier.
        /// </summary>
        /// <value>The package identifier.</value>
        public int? PackageId { get; set; }

        /// <summary>
        /// Gets or sets the package.
        /// </summary>
        /// <value>The package.</value>
        public MSTPackageDto Package { get; set; }

        /// <summary>
        /// Gets or sets the size of the package.
        /// </summary>
        /// <value>The size of the package.</value>
        public string PackageSize { get; set; }

        /// <summary>
        /// Gets or sets the leads.
        /// </summary>
        /// <value>The leads.</value>
        public string Leads { get; set; }

        /// <summary>
        /// Gets or sets the speed.
        /// </summary>
        /// <value>The speed.</value>
        public string Speed { get; set; }

        /// <summary>
        /// Gets or sets the eab i_ eb r_ revision.
        /// </summary>
        /// <value>The eab i_ eb r_ revision.</value>
        public string EABI_EBR_Revision { get; set; }

        /// <summary>
        /// Gets or sets the wafer size identifier.
        /// </summary>
        /// <value>The wafer size identifier.</value>
        public int? WaferSizeId { get; set; }

        /// <summary>
        /// Gets or sets the size of the wafer.
        /// </summary>
        /// <value>The size of the wafer.</value>
        public MSTWaferSizeDto WaferSize { get; set; }

        /// <summary>
        /// Gets or sets the current wafer thickness.
        /// </summary>
        /// <value>The current wafer thickness.</value>
        public string CurrentWaferThickness { get; set; }

        /// <summary>
        /// Gets or sets the internal device.
        /// </summary>
        /// <value>The internal device.</value>
        public string InternalDevice { get; set; }

        /// <summary>
        /// Gets or sets the fab code identifier.
        /// </summary>
        /// <value>The fab code identifier.</value>
        public int? FabCodeId { get; set; }

        /// <summary>
        /// Gets or sets the fab code.
        /// </summary>
        /// <value>The fab code.</value>
        public MSTFabCodeDto FabCode { get; set; }

        /// <summary>
        /// Gets or sets the power voltage.
        /// </summary>
        /// <value>The power voltage.</value>
        public string Power_Voltage { get; set; }

        /// <summary>
        /// Gets or sets the die blank identifier.
        /// </summary>
        /// <value>The die blank identifier.</value>
        public int? DieBlankId { get; set; }

        /// <summary>
        /// Gets or sets the die blank.
        /// </summary>
        /// <value>The die blank.</value>
        public MSTDieBankDto DieBlank { get; set; }

        /// <summary>
        /// Gets or sets the assembly location identifier.
        /// </summary>
        /// <value>The assembly location identifier.</value>
        public int? AssemblyLocationId { get; set; }

        /// <summary>
        /// Gets or sets the assembly location.
        /// </summary>
        /// <value>The assembly location.</value>
        public MSTAssLocDto AssemblyLocation { get; set; }

        /// <summary>
        /// Gets or sets the fg location identifier.
        /// </summary>
        /// <value>The fg location identifier.</value>
        public int? FGLocationId { get; set; }

        /// <summary>
        /// Gets or sets the fg location.
        /// </summary>
        /// <value>The fg location.</value>
        public MSTFGLocationDto FGLocation { get; set; }

        /// <summary>
        /// Gets or sets the assembly flow.
        /// </summary>
        /// <value>The assembly flow.</value>
        public string AssemblyFlow { get; set; }

        /// <summary>
        /// Gets or sets the package type identifier.
        /// </summary>
        /// <value>The package type identifier.</value>
        public int? PackageTypeId { get; set; }

        /// <summary>
        /// Gets or sets the type of the package.
        /// </summary>
        /// <value>The type of the package.</value>
        public MSTPackingTypeDto PackageType { get; set; }

        /// <summary>
        /// Gets or sets the top side marking identifier.
        /// </summary>
        /// <value>The top side marking identifier.</value>
        public int? TopSideMarkingId { get; set; }

        /// <summary>
        /// Gets or sets the marking instruction.
        /// </summary>
        /// <value>The marking instruction.</value>
        public MSTMarkingInstructionDto MarkingInstruction { get; set; }

        /// <summary>
        /// Gets or sets the MRL.
        /// </summary>
        /// <value>The MRL.</value>
        public string MRL { get; set; }

        /// <summary>
        /// Gets or sets the name of marking file.
        /// </summary>
        /// <value>The name of marking file.</value>
        public string NameOfMarkingFile { get; set; }

        /// <summary>
        /// Gets or sets a value indicating whether [requires special mark].
        /// </summary>
        /// <value><c>null</c> if [requires special mark] contains no value, <c>true</c> if [requires special mark]; otherwise, <c>false</c>.</value>
        public bool? RequiresSpecialMark { get; set; }

        /// <summary>
        /// Gets or sets a value indicating whether [requires ass engr input].
        /// </summary>
        /// <value><c>null</c> if [requires ass engr input] contains no value, <c>true</c> if [requires ass engr input]; otherwise, <c>false</c>.</value>
        public bool? RequiresAssEngrInput { get; set; }

        /// <summary>
        /// Gets or sets the marking code identifier.
        /// </summary>
        /// <value>The marking code identifier.</value>
        public int? MarkingCodeId { get; set; }

        /// <summary>
        /// Gets or sets the marking code.
        /// </summary>
        /// <value>The marking code.</value>
        public MSTMarkingSLDto MarkingCode { get; set; }

        /// <summary>
        /// Gets or sets the pin1 marking.
        /// </summary>
        /// <value>The pin1 marking.</value>
        public string Pin1Marking { get; set; }

        /// <summary>
        /// Gets or sets the top line.
        /// </summary>
        /// <value>The top line.</value>
        public string TopLine { get; set; }

        /// <summary>
        /// Gets or sets the two line.
        /// </summary>
        /// <value>The two line.</value>
        public string TwoLine { get; set; }

        /// <summary>
        /// Gets or sets the three line.
        /// </summary>
        /// <value>The three line.</value>
        public string ThreeLine { get; set; }

        /// <summary>
        /// Gets or sets the four line.
        /// </summary>
        /// <value>The four line.</value>
        public string FourLine { get; set; }

        /// <summary>
        /// Gets or sets the five line.
        /// </summary>
        /// <value>The five line.</value>
        public string FiveLine { get; set; }

        /// <summary>
        /// Gets or sets the six line.
        /// </summary>
        /// <value>The six line.</value>
        public string SixLine { get; set; }

        /// <summary>
        /// Gets or sets the ship finished product to identifier.
        /// </summary>
        /// <value>The ship finished product to identifier.</value>
        public int? ShipFinishedProductToId { get; set; }

        /// <summary>
        /// Gets or sets the ship finished product to.
        /// </summary>
        /// <value>The ship finished product to.</value>
        public MSTFGLocationDto ShipFinishedProductTo { get; set; }

        /// <summary>
        /// Gets or sets the attention finished.
        /// </summary>
        /// <value>The attention finished.</value>
        public string AttentionFinished { get; set; }

        /// <summary>
        /// Gets or sets the ship rejected part to identifier.
        /// </summary>
        /// <value>The ship rejected part to identifier.</value>
        public int? ShipRejectedPartToId { get; set; }

        /// <summary>
        /// Gets or sets the ship rejected part to.
        /// </summary>
        /// <value>The ship rejected part to.</value>
        public MSTFGLocationDto ShipRejectedPartTo { get; set; }

        /// <summary>
        /// Gets or sets the attention rejected.
        /// </summary>
        /// <value>The attention rejected.</value>
        public string AttentionRejected { get; set; }

        /// <summary>
        /// Gets or sets the return wafer to identifier.
        /// </summary>
        /// <value>The return wafer to identifier.</value>
        public int? ReturnWaferToId { get; set; }

        /// <summary>
        /// Gets or sets the return wafer to.
        /// </summary>
        /// <value>The return wafer to.</value>
        public MSTFGLocationDto ReturnWaferTo { get; set; }

        /// <summary>
        /// Gets or sets the vendor contact identifier.
        /// </summary>
        /// <value>The vendor contact identifier.</value>
        public int? VendorContactId { get; set; }

        /// <summary>
        /// Gets or sets the vendor contact.
        /// </summary>
        /// <value>The vendor contact.</value>
        public MSTVendorContactDto VendorContact { get; set; }

        /// <summary>
        /// Gets or sets the vendor code identifier.
        /// </summary>
        /// <value>The vendor code identifier.</value>
        public int? VendorCodeId { get; set; }

        /// <summary>
        /// Gets or sets the vendor code.
        /// </summary>
        /// <value>The vendor code.</value>
        public MSTVendorCodeDto VendorCode { get; set; }

        /// <summary>
        /// Gets or sets the purpose of build identifier.
        /// </summary>
        /// <value>The purpose of build identifier.</value>
        public int? PurposeOfBuildId { get; set; }

        /// <summary>
        /// Gets or sets the purpose of build.
        /// </summary>
        /// <value>The purpose of build.</value>
        public MSTBuildReasonDto PurposeOfBuild { get; set; }

        /// <summary>
        /// Gets or sets the lot owner identifier.
        /// </summary>
        /// <value>The lot owner identifier.</value>
        public int? LotOwnerId { get; set; }

        /// <summary>
        /// Gets or sets the lot owner.
        /// </summary>
        /// <value>The lot owner.</value>
        public MSTOwnerDto LotOwner { get; set; }

        /// <summary>
        /// Gets or sets the request cycle time identifier.
        /// </summary>
        /// <value>The request cycle time identifier.</value>
        public int? RequestCycleTimeId { get; set; }

        /// <summary>
        /// Gets or sets the request cycle time.
        /// </summary>
        /// <value>The request cycle time.</value>
        public MSTPriorityOfAssemblyBuildDto RequestCycleTime { get; set; }

        /// <summary>
        /// Gets or sets the PKG process identifier.
        /// </summary>
        /// <value>The PKG process identifier.</value>
        public int? PKGProcessId { get; set; }

        /// <summary>
        /// Gets or sets the PKG process.
        /// </summary>
        /// <value>The PKG process.</value>
        public MSTPKGProcessTypeDto PKGProcess { get; set; }

        /// <summary>
        /// Gets or sets the quality level identifier.
        /// </summary>
        /// <value>The quality level identifier.</value>
        public int? QualityLevelId { get; set; }

        /// <summary>
        /// Gets or sets the quality level.
        /// </summary>
        /// <value>The quality level.</value>
        public MSTQualityLevelDto QualityLevel { get; set; }

        /// <summary>
        /// Gets or sets the revenue location identifier.
        /// </summary>
        /// <value>The revenue location identifier.</value>
        public int? RevenueLocationId { get; set; }

        /// <summary>
        /// Gets or sets the revenue location.
        /// </summary>
        /// <value>The revenue location.</value>
        public MSTRevenueLocationDto RevenueLocation { get; set; }

        /// <summary>
        /// Gets or sets a value indicating whether [bond diagram attached].
        /// </summary>
        /// <value><c>null</c> if [bond diagram attached] contains no value, <c>true</c> if [bond diagram attached]; otherwise, <c>false</c>.</value>
        public bool? BondDiagramAttached { get; set; }

        /// <summary>
        /// Gets or sets a value indicating whether [scrap excess die wafer].
        /// </summary>
        /// <value><c>null</c> if [scrap excess die wafer] contains no value, <c>true</c> if [scrap excess die_ wafer]; otherwise, <c>false</c>.</value>
        public bool? ScrapExcessDie_Wafer { get; set; }

        /// <summary>
        /// Gets or sets a value indicating whether [u v_ erase].
        /// </summary>
        /// <value><c>null</c> if [UV erase] contains no value, <c>true</c> if [uv erase]; otherwise, <c>false</c>.</value>
        public bool? UV_Erase { get; set; }

        /// <summary>
        /// Gets or sets a value indicating whether [die coat].
        /// </summary>
        /// <value><c>null</c> if [die coat] contains no value, <c>true</c> if [die coat]; otherwise, <c>false</c>.</value>
        public bool? DieCoat { get; set; }

        /// <summary>
        /// Gets or sets the wire material identifier.
        /// </summary>
        /// <value>The wire material identifier.</value>
        public int? WireMaterialId { get; set; }

        /// <summary>
        /// Gets or sets the wire material.
        /// </summary>
        /// <value>The wire material.</value>
        public MSTWireMaterialDto WireMaterial { get; set; }

        /// <summary>
        /// Gets or sets the process ltsid.
        /// </summary>
        /// <value>The process ltsid.</value>
        public int? ProcessLTSID { get; set; }

        /// <summary>
        /// Gets or sets the process LTS.
        /// </summary>
        /// <value>The process LTS.</value>
        public MSTProcessLTSDto ProcessLTS { get; set; }

        /// <summary>
        /// Gets or sets a value indicating whether [forecast material].
        /// </summary>
        /// <value><c>null</c> if [forecast material] contains no value, <c>true</c> if [forecast material]; otherwise, <c>false</c>.</value>
        public bool? ForecastMaterial { get; set; }

        /// <summary>
        /// Gets or sets the bond diagram.
        /// </summary>
        /// <value>The bond diagram.</value>
        public string BondDiagram { get; set; }

        /// <summary>
        /// Gets or sets the bond diagram rev.
        /// </summary>
        /// <value>The bond diagram rev.</value>
        public string BondDiagramRev { get; set; }

        /// <summary>
        /// Gets or sets a value indicating whether [npi lot].
        /// </summary>
        /// <value><c>null</c> if [npi lot] contains no value, <c>true</c> if [npi lot]; otherwise, <c>false</c>.</value>
        public bool? NPILot { get; set; }

        /// <summary>
        /// Gets or sets a value indicating whether this instance is completed.
        /// </summary>
        /// <value><c>null</c> if [is completed] contains no value, <c>true</c> if [is completed]; otherwise, <c>false</c>.</value>
        public bool? IsCompleted { get; set; }

        /// <summary>
        /// Gets or sets the engineer team.
        /// </summary>
        /// <value>The engineer team.</value>
        public string EngineerTeam { get; set; }

        /// <summary>
        /// Gets or sets the test location identifier.
        /// </summary>
        /// <value>The test location identifier.</value>
        public int? TestLocationId { get; set; }

        /// <summary>
        /// Gets or sets the test location.
        /// </summary>
        /// <value>The test location.</value>
        public MSTFGLocationDto TestLocation { get; set; }

        /// <summary>
        /// Gets or sets the probe status identifier.
        /// </summary>
        /// <value>The probe status identifier.</value>
        public int? ProbeStatusId { get; set; }

        /// <summary>
        /// Gets or sets the probe status.
        /// </summary>
        /// <value>The probe status.</value>
        public MSTProbeStatusDto ProbeStatus { get; set; }

        /// <summary>
        /// Gets or sets the package test type identifier.
        /// </summary>
        /// <value>The package test type identifier.</value>
        public int? PackageTestTypeId { get; set; }

        /// <summary>
        /// Gets or sets the type of the package test.
        /// </summary>
        /// <value>The type of the package test.</value>
        public MSTPackageTestTypeDto PackageTestType { get; set; }

        /// <summary>
        /// Gets or sets the test program.
        /// </summary>
        /// <value>The test program.</value>
        public string TestProgram { get; set; }

        /// <summary>
        /// Gets or sets a value indicating whether [test programming available].
        /// </summary>
        /// <value><c>null</c> if [test programming available] contains no value, <c>true</c> if [test programming available]; otherwise, <c>false</c>.</value>
        public bool? TestProgamAvailable { get; set; }

        /// <summary>
        /// Gets or sets the comment available.
        /// </summary>
        /// <value>The comment available.</value>
        public string CommentAvailable { get; set; }

        /// <summary>
        /// Gets or sets the test special instruction.
        /// </summary>
        /// <value>The test special instruction.</value>
        public string Test_Special_Instruction { get; set; }

        /// <summary>
        /// Gets or sets the requested by.
        /// </summary>
        /// <value>The requested by.</value>
        public string RequestedBy { get; set; }

        /// <summary>
        /// Gets or sets the email address identifier.
        /// </summary>
        /// <value>The email address identifier.</value>
        public int? EmailAddressId { get; set; }

        /// <summary>
        /// Gets or sets the email address.
        /// </summary>
        /// <value>The email address.</value>
        public MSTEmailAddressDto EmailAddress { get; set; }

        public string Phone { get; set; }

        /// <summary>
        /// Gets or sets the requester location identifier.
        /// </summary>
        /// <value>The requester location identifier.</value>
        public int? RequesterLocationId { get; set; }

        /// <summary>
        /// Gets or sets the requester location.
        /// </summary>
        /// <value>The requester location.</value>
        public MSTRequesterLocationDto RequesterLocation { get; set; }

        /// <summary>
        /// Gets or sets the business unit.
        /// </summary>
        /// <value>The business unit.</value>
        public string BusinessUnit { get; set; }

        /// <summary>
        /// Gets or sets the approving manager.
        /// </summary>
        /// <value>The approving manager.</value>
        public string ApprovingManager { get; set; }

        /// <summary>
        /// Gets or sets the manager email identifier.
        /// </summary>
        /// <value>The manager email identifier.</value>
        public int? ManagerEmailId { get; set; }

        /// <summary>
        /// Gets or sets the manager email.
        /// </summary>
        /// <value>The manager email.</value>
        public MSTEmailAddressDto ManagerEmail { get; set; }

        /// <summary>
        /// Gets or sets the total cost.
        /// </summary>
        /// <value>The total cost.</value>
        public decimal? TotalCost { get; set; }

        /// <summary>
        /// Gets or sets the requested ship date.
        /// </summary>
        /// <value>The requested ship date.</value>
        public DateTime? RequestedShipDate { get; set; }

        /// <summary>
        /// Gets or sets a value indicating whether [requires test PGM approval].
        /// </summary>
        /// <value><c>null</c> if [requires test PGM approval] contains no value, <c>true</c> if [requires test PGM approval]; otherwise, <c>false</c>.</value>
        public bool? RequiresTestPgmApproval { get; set; }

        /// <summary>
        /// Gets or sets the type of the status.
        /// </summary>
        /// <value>The type of the status.</value>
        public StatusType StatusType { get; set; }
    }
}
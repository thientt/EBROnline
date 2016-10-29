// ***********************************************************************
// Assembly         : EBROnlineV0
// Author           : tranthiencdsp@gmail.com
// Created          : 02-25-2016
//
// Last Modified By : tranthiencdsp@gmail.com
// Last Modified On : 03-13-2016
// ***********************************************************************
// <copyright file="DashboardViewModel.cs" company="Atmel">
//     Copyright © Atmel 2016
// </copyright>
// <summary></summary>
// ***********************************************************************

using EBROnline.Model.DTO;
using EBROnline.Model.Types;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

/// <summary>
/// The ViewModel namespace.
/// </summary>
namespace EBROnline.ViewModel
{
    /// <summary>
    /// Class DashboardViewModel.
    /// </summary>
    public class DashboardViewModel : BaseDto
    {
        /// <summary>
        /// Gets or sets the device.
        /// </summary>
        /// <value>The device.</value>
        [Display(Name = "Device"), MaxLength(50)]
        public string Device { get; set; }

        /// <summary>
        /// Gets or sets the rev.
        /// </summary>
        /// <value>The rev.</value>
        [Display(Name = "Rev"), MaxLength(50)]
        public string Rev { get; set; }

        /// <summary>
        /// Gets or sets the fab die revision.
        /// </summary>
        /// <value>The fab die revision.</value>
        [Display(Name = "FAB Die Revision"), MaxLength(50)]
        public string FABDieRevision { get; set; }

        /// <summary>
        /// Gets or sets the PMPN.
        /// </summary>
        /// <value>The PMPN.</value>
        [Display(Name = "PMPN"), MaxLength(50)]
        public string PMPN { get; set; }

        /// <summary>
        /// Gets or sets the ampn.
        /// </summary>
        /// <value>The ampn.</value>
        [Display(Name = "AMPN"), MaxLength(50)]
        public string AMPN { get; set; }

        /// <summary>
        /// Gets or sets the TMPN.
        /// </summary>
        /// <value>The TMPN.</value>
        [Display(Name = "TMPN"), MaxLength(50)]
        public string TMPN { get; set; }

        /// <summary>
        /// Gets or sets the FMPN.
        /// </summary>
        /// <value>The FMPN.</value>
        [Display(Name = "FMPN"), MaxLength(50)]
        public string FMPN { get; set; }

        /// <summary>
        /// Gets or sets the cp n_ sa p_ material.
        /// </summary>
        /// <value>The cpn sap material.</value>
        [Display(Name = "CPN or SAP MATERIAL"), MaxLength(50)]
        public string CPN_SAP_Material { get; set; }

        /// <summary>
        /// Gets or sets the package identifier.
        /// </summary>
        /// <value>The package identifier.</value>
        [Display(Name = "Package"), Required]
        public int? PackageId { get; set; }

        /// <summary>
        /// Gets or sets the packages.
        /// </summary>
        /// <value>The packages.</value>
        public IEnumerable<MSTPackageDto> Packages { get; set; }

        /// <summary>
        /// Gets or sets the size of the package.
        /// </summary>
        /// <value>The size of the package.</value>
        [Display(Name = "Package Size"), MaxLength(50)]
        public string PackageSize { get; set; }

        /// <summary>
        /// Gets or sets the leads.
        /// </summary>
        /// <value>The leads.</value>
        [Display(Name = "Leads"), MaxLength(50)]
        public string Leads { get; set; }

        /// <summary>
        /// Gets or sets the speed.
        /// </summary>
        /// <value>The speed.</value>
        [Display(Name = "Speed"), MaxLength(50)]
        public string Speed { get; set; }

        /// <summary>
        /// Gets or sets the eab i_ eb r_ revision.
        /// </summary>
        /// <value>The eabi ebr revision.</value>
        [Display(Name = "eAB/EBR Revision"), MaxLength(50)]
        public string EABI_EBR_Revision { get; set; }

        /// <summary>
        /// Gets or sets the wafer size identifier.
        /// </summary>
        /// <value>The wafer size identifier.</value>
        [Display(Name = "Wafer Size"), Required]
        public int? WaferSizeId { get; set; }
        /// <summary>
        /// Gets or sets the wafer sizes.
        /// </summary>
        /// <value>The wafer sizes.</value>
        public IEnumerable<MSTWaferSizeDto> WaferSizes { get; set; }

        /// <summary>
        /// Gets or sets the current wafer thichness.
        /// </summary>
        /// <value>The current wafer thichness.</value>
        [Display(Name = "Current Wafer Thickness"), MaxLength(50)]
        public string CurrentWaferThichness { get; set; }

        /// <summary>
        /// Gets or sets the internal device.
        /// </summary>
        /// <value>The internal device.</value>
        [Display(Name = "Interal Device"), MaxLength(50)]
        public string InternalDevice { get; set; }

        /// <summary>
        /// Gets or sets the fab code identifier.
        /// </summary>
        /// <value>The fab code identifier.</value>
        [Display(Name = "Fab Code"), Required]
        public int? FabCodeId { get; set; }

        /// <summary>
        /// Gets or sets the fab codes.
        /// </summary>
        /// <value>The fab codes.</value>
        public IEnumerable<MSTFabCodeDto> FabCodes { get; set; }

        /// <summary>
        /// Gets or sets the power_ voltage.
        /// </summary>
        /// <value>The power_ voltage.</value>
        [Display(Name = "Power/Voltage"), MaxLength(50)]
        public string Power_Voltage { get; set; }

        /// <summary>
        /// Gets or sets the die blank identifier.
        /// </summary>
        /// <value>The die blank identifier.</value>
        [Display(Name = "Die Bank Location"),Required]
        public int? DieBlankId { get; set; }

        /// <summary>
        /// Gets or sets the die blanks.
        /// </summary>
        /// <value>The die blanks.</value>
        public IEnumerable<MSTDieBankDto> DieBlanks { get; set; }

        /// <summary>
        /// Gets or sets the assembly location identifier.
        /// </summary>
        /// <value>The assembly location identifier.</value>
        [Display(Name = "Assembly Location"), Required]
        public int? AssemblyLocationId { get; set; }
        
        /// <summary>
        /// Gets or sets the assembly locations.
        /// </summary>
        /// <value>The assembly locations.</value>
        public IEnumerable<MSTAssLocDto> AssemblyLocations { get; set; }

        /// <summary>
        /// Gets or sets the fg location identifier.
        /// </summary>
        /// <value>The fg location identifier.</value>
        [Display(Name = "FG Location"), Required]
        public int? FGLocationId { get; set; }

        /// <summary>
        /// Gets or sets the fg locations.
        /// </summary>
        /// <value>The fg locations.</value>
        public IEnumerable<MSTFGLocationDto> FGLocations { get; set; }

        /// <summary>
        /// Gets or sets the assembly flow.
        /// </summary>
        /// <value>The assembly flow.</value>
        [Display(Name = "Assembly Flow"), MaxLength(50)]
        public string AssemblyFlow { get; set; }

        /// <summary>
        /// Gets or sets the package type identifier.
        /// </summary>
        /// <value>The package type identifier.</value>
        [Display(Name = "Package type"), Required]
        public int? PackageTypeId { get; set; }
        /// <summary>
        /// Gets or sets the package types.
        /// </summary>
        /// <value>The package types.</value>
        public IEnumerable<MSTPackingTypeDto> PackageTypes { get; set; }

        /// <summary>
        /// Gets or sets the top side marking identifier.
        /// </summary>
        /// <value>The top side marking identifier.</value>
        [Display(Name = "Top Side Marking"), Required]
        public int? TopSideMarkingId { get; set; }

        /// <summary>
        /// Gets or sets the marking instructions.
        /// </summary>
        /// <value>The marking instructions.</value>
        public IEnumerable<MSTMarkingInstructionDto> MarkingInstructions { get; set; }
        
        /// <summary>
        /// Gets or sets the MRL.
        /// </summary>
        /// <value>The MRL.</value>
        [Display(Name = "MRL"), MaxLength(50)]
        public string MRL { get; set; }

        /// <summary>
        /// Gets or sets the name of marking file.
        /// </summary>
        /// <value>The name of marking file.</value>
        [Display(Name = "Name of Marking file, if attached"), MaxLength(50)]
        public string NameOfMarkingFile { get; set; }

        /// <summary>
        /// Gets or sets a value indicating whether [requires special mark].
        /// </summary>
        /// <value><c>null</c> if [requires special mark] contains no value, <c>true</c> if [requires special mark]; otherwise, <c>false</c>.</value>
        [Display(Name = "Requires Special Mark")]
        public bool? RequiresSpecialMark { get; set; }

        /// <summary>
        /// Gets or sets a value indicating whether [requires ass engr input].
        /// </summary>
        /// <value><c>null</c> if [requires ass engr input] contains no value, <c>true</c> if [requires ass engr input]; otherwise, <c>false</c>.</value>
        [Display(Name = "Requires Ass'y Engr Input")]
        public bool? RequiresAssEngrInput { get; set; }

        /// <summary>
        /// Gets or sets the marking code identifier.
        /// </summary>
        /// <value>The marking code identifier.</value>
        [Display(Name = "Marking Code (SJO)"), Required]
        public int? MarkingCodeId { get; set; }
        /// <summary>
        /// Gets or sets the marking codes.
        /// </summary>
        /// <value>The marking codes.</value>
        public IEnumerable<MSTMarkingSLDto> MarkingCodes { get; set; }

        /// <summary>
        /// Gets or sets the pin1 marking.
        /// </summary>
        /// <value>The pin1 marking.</value>
        [Display(Name = "Pin 1 Marking"), MaxLength(50)]
        public string Pin1Marking { get; set; }

        /// <summary>
        /// Gets or sets the top line.
        /// </summary>
        /// <value>The top line.</value>
        [Display(Name = "Top Line"), MaxLength(50)]
        public string TopLine { get; set; }

        /// <summary>
        /// Gets or sets the two line.
        /// </summary>
        /// <value>The two line.</value>
        [Display(Name = "2nd Line"), MaxLength(50)]
        public string TwoLine { get; set; }

        /// <summary>
        /// Gets or sets the three line.
        /// </summary>
        /// <value>The three line.</value>
        [Display(Name = "3rd Line"), MaxLength(50)]
        public string ThreeLine { get; set; }

        /// <summary>
        /// Gets or sets the four line.
        /// </summary>
        /// <value>The four line.</value>
        [Display(Name = "4th Line"), MaxLength(50)]
        public string FourLine { get; set; }

        /// <summary>
        /// Gets or sets the five line.
        /// </summary>
        /// <value>The five line.</value>
        [Display(Name = "5th Line"), MaxLength(50)]
        public string FiveLine { get; set; }

        /// <summary>
        /// Gets or sets the six line.
        /// </summary>
        /// <value>The six line.</value>
        [Display(Name = "6th Line"), MaxLength(50)]
        public string SixLine { get; set; }

        /// <summary>
        /// Gets or sets the ship finished product to identifier.
        /// </summary>
        /// <value>The ship finished product to identifier.</value>
        [Display(Name = "Ship Finished Product to"), Required]
        public int? ShipFinishedProductToId { get; set; }

        /// <summary>
        /// Gets or sets the ship finished product tos.
        /// </summary>
        /// <value>The ship finished product tos.</value>
        public IEnumerable<MSTFGLocationDto> ShipFinishedProductTos { get; set; }

        /// <summary>
        /// Gets or sets the attention finished.
        /// </summary>
        /// <value>The attention finished.</value>
        [Display(Name = "Attention"), MaxLength(50)]
        public string AttentionFinished { get; set; }

        /// <summary>
        /// Gets or sets the ship rejected part to identifier.
        /// </summary>
        /// <value>The ship rejected part to identifier.</value>
        [Display(Name = "Ship Rejected Parts to"), Required]
        public int? ShipRejectedPartToId { get; set; }
        /// <summary>
        /// Gets or sets the ship rejected part tos.
        /// </summary>
        /// <value>The ship rejected part tos.</value>
        public IEnumerable<MSTFGLocationDto> ShipRejectedPartTos { get; set; }

        /// <summary>
        /// Gets or sets the attention rejected.
        /// </summary>
        /// <value>The attention rejected.</value>
        [Display(Name = "Attention"), MaxLength(50)]
        public string AttentionRejected { get; set; }

        /// <summary>
        /// Gets or sets the return wafer to identifier.
        /// </summary>
        /// <value>The return wafer to identifier.</value>
        [Display(Name = "Return Wafer to"),Required]
        public int? ReturnWaferToId { get; set; }
        /// <summary>
        /// Gets or sets the return wafer tos.
        /// </summary>
        /// <value>The return wafer tos.</value>
        public IEnumerable<MSTFGLocationDto> ReturnWaferTos { get; set; }

        [Display(Name = "Assembly Location Email"), Required]
        public int? VendorContactId { get; set; }
        /// <summary>
        /// Gets or sets the vendor contacts.
        /// </summary>
        /// <value>The vendor contacts.</value>
        public IEnumerable<MSTVendorContactDto> VendorContacts { get; set; }

        [Display(Name = "Vendor Code (SCO Only)"), Required]
        public int? VendorCodeId { get; set; }
        /// <summary>
        /// Gets or sets the vendor codes.
        /// </summary>
        /// <value>The vendor codes.</value>
        public IEnumerable<MSTVendorCodeDto> VendorCodes { get; set; }

        [Display(Name = "Purpose of Build"), Required]
        public int? PurposeOfBuildId { get; set; }
        /// <summary>
        /// Gets or sets the purpose of builds.
        /// </summary>
        /// <value>The purpose of builds.</value>
        public IEnumerable<MSTBuildReasonDto> PurposeOfBuilds { get; set; }

        [Display(Name = "Lot Onwer (Mandatory)"), Required]
        public int? LotOwnerId { get; set; }
        public IEnumerable<MSTOwnerDto> LotOwners { get; set; }

        [Display(Name = "Requested Cycle Time"), Required]
        public int? RequestCycleTimeId { get; set; }
        public IEnumerable<MSTPriorityOfAssemblyBuildDto> RequestCycleTimes { get; set; }

        [Display(Name = "PKG Process (Env Code)"), Required]
        public int? PKGProcessId { get; set; }
        public IEnumerable<MSTPKGProcessTypeDto> PKGProcess { get; set; }

        [Display(Name = "Quality Level"), Required]
        public int? QualityLevelId { get; set; }
        public IEnumerable<MSTQualityLevelDto> QualityLevels { get; set; }

        [Display(Name = "Revenue Loc (Mandatory)"), Required]
        public int? RevenueLocationId { get; set; }
        public IEnumerable<MSTRevenueLocationDto> RevenueLocations { get; set; }

        [Display(Name = "Bond Diagram Attached")]
        public bool BondDiagramAttached { get; set; }

        [Display(Name = "Scrap Excess Die/Wafers?")]
        public bool? ScrapExcessDie_Wafer { get; set; }

        [Display(Name = "UV Erase")]
        public bool UV_Erase { get; set; }

        [Display(Name = "Die Coat")]
        public bool DieCoat { get; set; }

        [Display(Name = "Wire Material (Mandatory)"), Required]
        public int? WireMaterialId { get; set; }
        public IEnumerable<MSTWireMaterialDto> WireMaterias { get; set; }

        [Display(Name = "Process (LTS)"), Required]
        public int? ProcessLTSID { get; set; }
        public IEnumerable<MSTProcessLTSDto> ProcessLTSs { get; set; }

        [Display(Name = "Forecast Material")]
        public bool? ForecastMaterial { get; set; }

        [Display(Name = "Bond Diagram"), MaxLength(50)]
        public string BondDiagram { get; set; }

        [Display(Name = "Bond Diagram Rev"), MaxLength(50)]
        public string BondDiagramRev { get; set; }

        [Display(Name = "NPI Lot?")]
        public bool NPILot { get; set; }

        [Display(Name = "Characterization/DOE/ Validation/ Confirmation Run Completed?")]
        public bool IsCompleted { get; set; }

        [Display(Name = "Assembly/Special Instructions"), MaxLength(1024)]
        public string EngineerTeam { get; set; }

        [Display(Name = "Test Location"), Required]
        public int? TestLocationId { get; set; }
        public IEnumerable<MSTFGLocationDto> TestLocations { get; set; }

        [Display(Name = "Probe Status"), Required]
        public int? ProbeStatusId { get; set; }
        public IEnumerable<MSTProbeStatusDto> ProbeStatus { get; set; }

        [Display(Name = "Package Test Type"), Required]
        public int? PackageTestTypeId { get; set; }
        public IEnumerable<MSTPackageTestTypeDto> PackageTestTypes { get; set; }

        [Display(Name = "Test Program"), MaxLength(50)]
        public string TestProgram { get; set; }

        [Display(Name = "Test Program Available")]
        public bool? TestProgamAvailable { get; set; }

        [Display(Name = "If No, when will it bee available"), MaxLength(50)]
        public string CommentAvailable { get; set; }

        [Display(Name = "Test/Special Instructions"), MaxLength(1024)]
        public string Test_Special_Instruction { get; set; }

        [Display(Name = "Requested By"), MaxLength(50)]
        public string RequestedBy { get; set; }

        [Display(Name = "Email Address"), Required]
        public int? EmailAddressId { get; set; }
        public IEnumerable<MSTEmailAddressDto> EmailAddress { get; set; }

        [Display(Name = "Phone"), MaxLength(50)]
        public string Phone { get; set; }

        [Display(Name = "Requester's Location"), Required]
        public int? RequesterLocationId { get; set; }
        public IEnumerable<MSTRequesterLocationDto> RequesterLocations { get; set; }

        [Display(Name = "Busines Unit"), MaxLength(50)]
        public string BusinessUnit { get; set; }

        [Display(Name = "Approving Manager"), MaxLength(50)]
        public string ApprovingManager { get; set; }

        [Display(Name = "Manager's Email"), Required]
        public int? ManagerEmailId { get; set; }
        public IEnumerable<MSTEmailAddressDto> ManagerEmails { get; set; }

        [Display(Name = "Total Cost"), Required]
        public decimal TotalCost { get; set; }

        [Display(Name = "Requested Ship Date"), Required]
        public DateTime? RequestedShipDate { get; set; }

        [Display(Name = "Requires Test Pgm Approval")]
        public bool? RequiresTestPgmApproval { get; set; }

        /// <summary>
        /// Gets or sets the type of the status.
        /// </summary>
        /// <value>The type of the status.</value>
        public StatusType StatusType { get; set; }

        public bool IsAllowEdit { get; set; }

        public List<ListSubViewModel> ListSub { get; set; }
    }
}
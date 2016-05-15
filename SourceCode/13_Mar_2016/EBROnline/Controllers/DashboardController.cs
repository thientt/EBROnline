// ***********************************************************************
// Assembly         : EBROnlineV0
// Author           : tranthiencdsp@gmail.com
// Created          : 02-25-2016
//
// Last Modified By : tranthiencdsp@gmail.com
// Last Modified On : 03-13-2016
// ***********************************************************************
// <copyright file="DashboardController.cs" company="Atmel">
//     Copyright © Atmel 2016
// </copyright>
// <summary></summary>
// ***********************************************************************

using EBROnline.Infractructure;
using EBROnline.Model;
using EBROnline.Model.Abstracts;
using EBROnline.Model.DTO;
using EBROnline.Model.Entities;
using EBROnline.Model.Types;
using EBROnline.ViewModel;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.tool.xml;
using Ninject;
using PagedList;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;

/// <summary>
/// The Controllers namespace.
/// </summary>
namespace EBROnline.Controllers
{
    /// <summary>
    /// 
    /// </summary>
    public class DashboardController : AppController
    {
        #region Begin List Dashboard

        /// <summary>
        /// Lists as requestor.
        /// </summary>
        /// <returns></returns>
        [HttpGet, Authorize(Roles = AuthRole.User), OutputCache(Duration = 30)]
        public ActionResult AsUser(int? page)
        {
            FilterPage obj = new FilterPage
            {
                Page = page,
            };
            return View(obj);
        }

        /// <summary>
        /// Requestses the specified page.
        /// </summary>
        /// <param name="page">The page.</param>
        /// <returns></returns>
        [HttpGet, Authorize(Roles = AuthRole.User)]
        public PartialViewResult EBROfUser(int? page)
        {
            var dashboards = MasterRep.GetAll();
            int pageNumber = page ?? 1;
            return PartialView(dashboards.ToPagedList(pageNumber, EBROnlineConfig.PAGESIZE));
        }

        [HttpGet, Authorize(Roles = AuthRole.Planner), OutputCache(Duration = 30)]
        public ActionResult AsPlanner(int? page)
        {
            FilterPage obj = new FilterPage
            {
                Page = page,
            };
            return View(obj);
        }

        /// <summary>
        /// Analysises the specified page.
        /// </summary>
        /// <param name="page">The page.</param>
        /// <returns></returns>
        [HttpGet, Authorize(Roles = AuthRole.Planner)]
        public PartialViewResult EBROfPlanner(int? page)
        {
            var dashboards = MasterRep.GetAll();
            int pageNumber = page ?? 1;
            return PartialView(dashboards.ToPagedList(pageNumber, EBROnline.Infractructure.EBROnlineConfig.PAGESIZE));
        }

        /// <summary>
        /// Lists as analyst.
        /// </summary>
        /// <returns></returns>
        [HttpGet, Authorize(Roles = (AuthRole.Admin)), OutputCache(Duration = 30)]
        public ActionResult AsAdmin(int? page)
        {
            FilterPage obj = new FilterPage
            {
                Page = page,
            };
            return View(obj);
        }

        /// <summary>
        /// Analysises the specified page.
        /// </summary>
        /// <param name="page">The page.</param>
        /// <returns></returns>
        [Authorize(Roles = (AuthRole.Admin))]
        public PartialViewResult EBROfAdmin(int? page)
        {
            var dashboards = MasterRep.GetAll();
            int pageNumber = page ?? 1;
            return PartialView(dashboards.ToPagedList(pageNumber, EBROnlineConfig.PAGESIZE));
        }
        #endregion End Dashboard

        #region Add and Edit Dashboard
        [HttpGet, Authorize]
        public ActionResult NewRequest()
        {
            var data = CreateDashboard();
            return View(data);
        }

        /// <summary>
        /// News the request.
        /// </summary>
        /// <param name="saveType">Type of the save.</param>
        /// <param name="model">The model.</param>
        /// <returns>Task<JsonResult>.</returns>
        [HttpPost, Authorize, ActionName("NewRequest")]
        public async Task<JsonResult> NewRequest(string saveType, [Bind(Exclude = "RequestedBy")] DashboardViewModel model)
        {
            StatusType statusType = StatusType.DRAFT;

            Response.StatusCode = (int)HttpStatusCode.BadRequest;
            if (saveType == "Submit")
                statusType = StatusType.SUBMITTED;

            var item = ConvertTo(model, statusType);
            item.RequestedBy = CurrentName;

            //1. Case click button submit
            if (statusType == StatusType.SUBMITTED)
                if (!ModelState.IsValid)
                {
                    return new JsonResult()
                    {
                        JsonRequestBehavior = JsonRequestBehavior.AllowGet,
                        Data = new { id = 0, code = "SB02" }
                    };
                }

            var save = await MasterRep.InsertAsync(item);
            if (save > 0)
            {
                Response.StatusCode = (int)HttpStatusCode.OK;
                return new JsonResult()
                {
                    JsonRequestBehavior = JsonRequestBehavior.AllowGet,
                    Data = new { id = save, code = statusType == StatusType.DRAFT ? "DF01" : "SB01" }
                };
            }


            return new JsonResult()
            {
                JsonRequestBehavior = JsonRequestBehavior.AllowGet,
                Data = new { id = 0, code = statusType == StatusType.DRAFT ? "DF02" : "SB02" }
            };
        }

        /// <summary>
        /// Adds the sub.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <param name="emps">The emps.</param>
        /// <returns></returns>
        [HttpPost, Authorize]
        public async Task<JsonResult> AddSub(int id, List<ListSubViewModel> emps)
        {
            Response.StatusCode = (int)HttpStatusCode.OK;
            if (emps == null)
                return new JsonResult()
                {
                    JsonRequestBehavior = JsonRequestBehavior.AllowGet,
                    Data = new { code = "SB01", data = id }
                };

            if (emps != null && id > 0)
            {
                foreach (var item in emps)
                {
                    var sub = new EBRSubMasterDto()
                    {
                        StackDieId = item.StackDieId,
                        StackDiePMPN = item.StackDiePMPN,
                        StackDieQty = item.StackDieQty,
                        StackDieWaferNumbers = item.StackDieWaferNumbers,
                        BuildQty = item.BuildQuality,
                        Comment = item.Comment,
                        DashboardId = id,
                        MES_Lot_Number = item.LotNumber,
                        SAP_Batch_Lot_Number = item.BatchLotNumber,
                        WaferQty = item.WaferQty
                    };
                    var save = await SubMasterRep.AddAsync(sub);
                }

                return new JsonResult()
                {
                    JsonRequestBehavior = JsonRequestBehavior.AllowGet,
                    Data = new { code = "SB01", data = id }
                };
            }

            Response.StatusCode = (int)HttpStatusCode.BadRequest;
            return new JsonResult()
            {
                JsonRequestBehavior = JsonRequestBehavior.AllowGet,
                Data = new { code = "SB02", data = id, }
            };
        }

        /// <summary>
        /// Edits the specified identifier.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <returns></returns>
        [HttpGet, Authorize]
        public async Task<ActionResult> Edit(int id)
        {
            var getMaster = MasterRep.GetByIdAsync(id);
            var getSub = SubMasterRep.GetByParentIdAsync(id);
            var data = CreateDashboard();

            //Get dashboard
            var model = await getMaster;
            var sub = await getSub;

            data.Id = id;
            data.Device = model.Device;
            data.Rev = model.Rev;
            data.FABDieRevision = model.FABDieRevision;
            data.PMPN = model.PMPN;
            data.TMPN = model.TMPN;
            data.AMPN = model.AMPN;
            data.FMPN = model.FMPN;
            data.CPN_SAP_Material = model.CPN_SAP_Material;
            data.PackageId = model.PackageId;
            data.PackageSize = model.PackageSize;
            data.Leads = model.Leads;
            data.Speed = model.Speed;
            data.EABI_EBR_Revision = model.EABI_EBR_Revision;
            data.WaferSizeId = model.WaferSizeId;
            data.CurrentWaferThichness = model.CurrentWaferThickness;
            data.InternalDevice = model.InternalDevice;
            data.FabCodeId = model.FabCodeId;
            data.Power_Voltage = model.Power_Voltage;
            data.DieBlankId = model.DieBlankId;
            data.AssemblyLocationId = model.AssemblyLocationId;
            data.FGLocationId = model.FGLocationId;
            data.AssemblyFlow = model.AssemblyFlow;
            data.PackageTypeId = model.PackageTypeId;
            data.TopSideMarkingId = model.TopSideMarkingId;
            data.MRL = model.MRL;
            data.NameOfMarkingFile = model.NameOfMarkingFile;
            data.RequiresSpecialMark = model.RequiresSpecialMark;
            data.RequiresAssEngrInput = model.RequiresAssEngrInput;
            data.MarkingCodeId = model.MarkingCodeId;
            data.Pin1Marking = model.Pin1Marking;
            data.TopLine = model.TopLine;
            data.TwoLine = model.TwoLine;
            data.ThreeLine = model.ThreeLine;
            data.FourLine = model.FourLine;
            data.FiveLine = model.FiveLine;
            data.SixLine = model.SixLine;
            data.ShipFinishedProductToId = model.ShipFinishedProductToId;
            data.AttentionFinished = model.AttentionFinished;
            data.ShipRejectedPartToId = model.ShipRejectedPartToId;
            data.AttentionRejected = model.AttentionRejected;
            data.ReturnWaferToId = model.ReturnWaferToId;
            data.VendorContactId = model.VendorContactId;
            data.VendorCodeId = model.VendorCodeId;
            data.PurposeOfBuildId = model.PurposeOfBuildId;
            data.LotOwnerId = model.LotOwnerId;
            data.RequestCycleTimeId = model.RequestCycleTimeId;
            data.PKGProcessId = model.PKGProcessId;
            data.QualityLevelId = model.QualityLevelId;
            data.RevenueLocationId = model.RevenueLocationId;
            data.BondDiagramAttached = model.BondDiagramAttached ?? model.BondDiagramAttached.Value;
            data.ScrapExcessDie_Wafer = model.ScrapExcessDie_Wafer;
            data.UV_Erase = model.UV_Erase.HasValue ? model.UV_Erase.Value : false;
            data.DieCoat = model.DieCoat ?? model.DieCoat.Value;
            data.WireMaterialId = model.WireMaterialId;
            data.ProcessLTSID = model.ProcessLTSID;
            data.ForecastMaterial = model.ForecastMaterial;
            data.BondDiagram = model.BondDiagram;
            data.BondDiagramRev = model.BondDiagramRev;
            data.NPILot = model.NPILot.HasValue ? model.NPILot.Value : false;
            data.IsCompleted = model.IsCompleted.HasValue ? model.IsCompleted.Value : false;
            data.EngineerTeam = model.EngineerTeam;
            data.TestLocationId = model.TestLocationId;
            data.ProbeStatusId = model.ProbeStatusId;
            data.PackageTestTypeId = model.PackageTestTypeId;
            data.TestProgram = model.TestProgram;
            data.TestProgamAvailable = model.TestProgamAvailable;
            data.CommentAvailable = model.CommentAvailable;
            data.Test_Special_Instruction = model.Test_Special_Instruction;
            data.RequestedBy = model.Test_Special_Instruction;
            data.EmailAddressId = model.EmailAddressId;
            data.Phone = model.Phone;
            data.RequesterLocationId = model.RequesterLocationId;
            data.BusinessUnit = model.BusinessUnit;
            data.ApprovingManager = model.ApprovingManager;
            data.ManagerEmailId = model.ManagerEmailId;
            data.TotalCost = model.TotalCost ?? 0;
            data.RequestedShipDate = model.RequestedShipDate;
            data.RequiresTestPgmApproval = model.RequiresTestPgmApproval ?? false;
            data.RequestedBy = model.RequestedBy;
            data.IsDeleted = model.IsDeleted;
            data.LastUpdatedBy = model.LastUpdatedBy;
            data.LastUpdated = DateTime.Now;
            data.StatusType = (StatusType)model.StatusType;

            if (data.StatusType == StatusType.SUBMITTED || data.RequestedBy != CurrentName)
                data.IsAllowEdit = false;

            if (data.StatusType == StatusType.DRAFT && (User.IsInRole("Planner") || data.RequestedBy == CurrentName))
                data.IsAllowEdit = true;

            foreach (var item in sub)
            {
                data.ListSub.Add(ConvertSub(item));
            }

            return View(data);
        }

        /// <summary>
        /// Confirms the edit.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <param name="saveType">Type of the save (submit or draft</param>
        /// <param name="model">The model.</param>
        /// <returns></returns>
        [HttpPost, Authorize, ActionName("Edit")]
        public async Task<JsonResult> ConfirmEdit(int id, string saveType, DashboardViewModel model)
        {
            StatusType statusType = StatusType.DRAFT;
            string code = String.Empty;

            switch (saveType)
            {
                case "Draft":
                    statusType = StatusType.DRAFT;
                    code = "DF01";
                    break;
                case "Submit":
                    statusType = StatusType.SUBMITTED;
                    code = "SB01";
                    break;
                case "Cancel":
                    statusType = StatusType.CANCELLED;
                    code = "CA01";
                    break;
                case "Reject":
                    statusType = StatusType.REJECTED;
                    code = "RJ01";
                    break;
                case "Accept":
                    statusType = StatusType.ACCEPTED;
                    code = "AC01";
                    break;
                case "Complete":
                    statusType = StatusType.COMPLETED;
                    code = "CL01";
                    break;
            }

            Response.StatusCode = (int)HttpStatusCode.BadRequest;
            SaveResult saveResult = SaveResult.FAILURE;

            #region When user click button CANCELLED or REJECTED or COMPLETED or ACCEPTED
            //1. case user click button cancel.
            if (statusType == StatusType.CANCELLED ||
                statusType == StatusType.REJECTED ||
                statusType == StatusType.COMPLETED ||
                statusType == StatusType.ACCEPTED ||
                (statusType == StatusType.SUBMITTED && model.StatusType == StatusType.DRAFT && model.RequestedBy != CurrentName))
            {
                saveResult = ChangeStatus(id, statusType);
                if (saveResult == SaveResult.SUCCESS)
                {
                    string mailTo = CurrentName;
                    if (model.RequestedBy != CurrentName)
                        mailTo = String.Format("{0};{1}", model.RequestedBy, CurrentName);
                    string link = Request.Url.AbsoluteUri.Replace(Request.Url.AbsolutePath, "") + Url.Action("Edit", new { id = id });
                    string body = String.Format("Once the State changed on an EBR, click <a href={0}>here</a> for more details", link);
                    Mail.Send(mailTo, "[EBROnline ChangeStatus]", body);

                    Response.StatusCode = (int)HttpStatusCode.OK;
                    return new JsonResult()
                    {
                        JsonRequestBehavior = JsonRequestBehavior.AllowGet,
                        Data = new { id = id, code = "ST01" }
                    };
                }
                else
                {
                    return new JsonResult()
                    {
                        JsonRequestBehavior = JsonRequestBehavior.AllowGet,
                        Data = new { id = id, code = "ST02" }
                    };
                }
            }
            #endregion

            #region When user click button DRAFT or SUBMIT
            var item = ConvertTo(model, statusType);
            item.Id = id;

            //2. case user click button submit
            if (statusType == StatusType.SUBMITTED)
                if (!ModelState.IsValid)
                {
                    return new JsonResult()
                    {
                        JsonRequestBehavior = JsonRequestBehavior.AllowGet,
                        Data = new { id = 0, code = "SB02" }
                    };
                }

            saveResult = await MasterRep.UpdateAsync(item);
            if (saveResult > 0)
            {
                Response.StatusCode = (int)HttpStatusCode.OK;
                return new JsonResult()
                {
                    JsonRequestBehavior = JsonRequestBehavior.AllowGet,
                    Data = new { id = saveResult, code = code }
                };
            }

            return new JsonResult()
            {
                JsonRequestBehavior = JsonRequestBehavior.AllowGet,
                Data = new { id = 0, code = statusType == StatusType.DRAFT ? "DF02" : "SB02" }
            };
            #endregion
        }

        /// <summary>
        /// Prints the PDF, this is function create format html and export PDF
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <returns></returns>
        [HttpGet, ActionName("Print")]
        public async Task<ActionResult> PrintPDF(int id)
        {
            var model = new PrintViewModel();
            //get master
            var master = MasterRep.GetByIdAsync(id);
            //get submaster
            var submaster = SubMasterRep.GetByParentIdAsync(id);

            model.Master = await master;
            model.SubMaster = await submaster;

            return PartialView("_PartialPagePDF", model);
        }

        [HttpGet, Authorize]
        public ActionResult ExportPDF(int id)
        {
            string folder = Path.Combine(Server.MapPath("~/ExportPDF"));
            if (!Directory.Exists(folder))
            {
                Directory.CreateDirectory(folder);
            }
            var cssText = System.IO.File.ReadAllText(System.IO.Path.Combine(Server.MapPath("~/Content/app"), "pdf.css"));

            //Get html
            WebClient client = new WebClient();
            string url = Url.Action("Print", "Dashboard", new { id = id }, Request.Url.Scheme);
            var htmlText = client.DownloadString(url);

            var fileName = System.IO.Path.Combine(Server.MapPath("~/ExportPDF"), Guid.NewGuid().ToString() + ".pdf");

            var pdfContent = new PdfContent();

            using (var memoryStream = new MemoryStream())
            {
                using (var document = new Document())
                {
                    var writer = PdfWriter.GetInstance(document, memoryStream);
                    document.Open();

                    //Now let’s pass the CSS and the HTML which comes as a  representation of strings to the XMLWorker
                    using (var cssMemoryStream = new MemoryStream(System.Text.Encoding.UTF8.GetBytes(cssText)))
                    {
                        using (var htmlMemoryStream = new MemoryStream(System.Text.Encoding.UTF8.GetBytes(htmlText)))
                        {
                            XMLWorkerHelper.GetInstance().ParseXHtml(writer, document, htmlMemoryStream, cssMemoryStream);
                        }
                    }

                    pdfContent = new PdfContent
                    {
                        MemoryStream = memoryStream,
                        FileName = fileName
                    };
                }
            }
            return pdfContent;

        }
        #endregion

        #region Excute file
        [HttpPost, ActionName("UploadMultipleFiles")]
        public ActionResult UploadMultipleFiles(int id, IEnumerable<HttpPostedFileBase> files)
        {
            if (files != null && files.Count() > 0)
                TryCreateDir(id);

            foreach (var file in files)
            {
                if (file != null && file.ContentLength > 0)
                {
                    file.SaveAs(Path.Combine(Server.MapPath("~/Uploads"), id.ToString().PadLeft(10, '0'), Path.GetFileName(file.FileName)));
                }
            }

            Response.StatusCode = (int)HttpStatusCode.OK;
            return new JsonResult()
            {
                Data = new { id = id, code = "UP01" },
                JsonRequestBehavior = JsonRequestBehavior.AllowGet
            };
        }

        [HttpGet]
        public ActionResult DownloadFile(int id, string file)
        {
            string folder = Path.Combine(Server.MapPath("~/Uploads"), id.ToString().PadLeft(10, '0'), file);
            return File(folder, System.Net.Mime.MediaTypeNames.Application.Octet, file);
        }

        /// <summary>
        /// Shows all files.
        /// </summary>
        /// <param name="id">The identifier of request</param>
        /// <returns>ActionResult.</returns>
        [HttpGet]
        public ActionResult ShowAllFiles(int id)
        {
            string folder = Path.Combine(Server.MapPath("~/Uploads"), id.ToString().PadLeft(10, '0'));

            List<string> listFiles = new List<string>();
            if (Directory.Exists(folder))
            {
                string[] files = Directory.GetFiles(folder);
                if (files.Length > 0)
                {
                    foreach (var file in files)
                    {
                        listFiles.Add(Path.GetFileName(file));
                    }
                }
            }

            FileDataViewModel fileData = new FileDataViewModel()
            {
                Id = id,
                Files = listFiles
            };
            return View("ShowAllFiles", fileData);
        }
        #endregion

        #region Func
        /// <summary>
        /// Creates the dashboard.
        /// </summary>
        /// <returns>DashboardViewModel.</returns>
        private DashboardViewModel CreateDashboard()
        {
            List<MSTPackageDto> packages = new List<MSTPackageDto>();
            PackageRep.GetAll().ToList().ForEach(x =>
            {
                MSTPackageDto pack = new MSTPackageDto();
                ConvertToWay<EBR_MST_Package, MSTPackageDto>.ConvertTo(x, out pack);
                packages.Add(pack);
            });
            List<MSTWaferSizeDto> wafers = new List<MSTWaferSizeDto>();
            WaferSizeRep.GetAll().ToList().ForEach(x =>
            {
                MSTWaferSizeDto wafer = new MSTWaferSizeDto();
                ConvertToWay<EBR_MST_WaferSize, MSTWaferSizeDto>.ConvertTo(x, out wafer);
                wafers.Add(wafer);
            });
            List<MSTFabCodeDto> fabCodes = new List<MSTFabCodeDto>();
            FabCodeRep.GetAll().ToList().ForEach(x =>
            {
                MSTFabCodeDto fab = new MSTFabCodeDto();
                ConvertToWay<EBR_MST_FabCode, MSTFabCodeDto>.ConvertTo(x, out fab);
                fabCodes.Add(fab);
            });
            List<MSTDieBankDto> dieBanks = new List<MSTDieBankDto>();
            DieBankRep.GetAll().ToList().ForEach(x =>
            {
                MSTDieBankDto die = new MSTDieBankDto();
                ConvertToWay<EBR_MST_DieBank, MSTDieBankDto>.ConvertTo(x, out die);
                dieBanks.Add(die);
            });
            List<MSTAssLocDto> assemblies = new List<MSTAssLocDto>();
            AssLocRep.GetAll().ToList().ForEach(x =>
            {
                MSTAssLocDto die = new MSTAssLocDto();
                ConvertToWay<EBR_MST_AssemblyLocation, MSTAssLocDto>.ConvertTo(x, out die);
                assemblies.Add(die);
            });
            List<MSTFGLocationDto> locations = new List<MSTFGLocationDto>();
            Location.GetAll().ToList().ForEach(x =>
            {
                MSTFGLocationDto loc = new MSTFGLocationDto();
                ConvertToWay<EBR_MST_FGLocation, MSTFGLocationDto>.ConvertTo(x, out loc);
                locations.Add(loc);
            });

            List<MSTPackageTestTypeDto> packagesTest = new List<MSTPackageTestTypeDto>();
            PackageTestTypeRep.GetAll().ToList().ForEach(x =>
            {
                MSTPackageTestTypeDto package = new MSTPackageTestTypeDto();
                ConvertToWay<EBR_MST_PackageTestType, MSTPackageTestTypeDto>.ConvertTo(x, out package);
                packagesTest.Add(package);
            });

            List<MSTPackingTypeDto> packagesType = new List<MSTPackingTypeDto>();
            PackageTypeRep.GetAll().ToList().ForEach(x =>
            {
                MSTPackingTypeDto package = new MSTPackingTypeDto();
                ConvertToWay<EBR_MST_PackingType, MSTPackingTypeDto>.ConvertTo(x, out package);
                packagesType.Add(package);
            });
            List<MSTMarkingInstructionDto> markingIns = new List<MSTMarkingInstructionDto>();
            MarkingInstructionRep.GetAll().ToList().ForEach(x =>
            {
                MSTMarkingInstructionDto marking = new MSTMarkingInstructionDto();
                ConvertToWay<EBR_MST_MarkingInstruction, MSTMarkingInstructionDto>.ConvertTo(x, out marking);
                markingIns.Add(marking);
            });
            List<MSTMarkingSLDto> markings = new List<MSTMarkingSLDto>();
            MarkingSLRep.GetAll().ToList().ForEach(x =>
            {
                MSTMarkingSLDto marking = new MSTMarkingSLDto();
                ConvertToWay<EBR_MST_MarkingSL, MSTMarkingSLDto>.ConvertTo(x, out marking);
                markings.Add(marking);
            });
            List<MSTVendorCodeDto> vendorCodes = new List<MSTVendorCodeDto>();
            VendorCodeRep.GetAll().ToList().ForEach(x =>
            {
                MSTVendorCodeDto vendor = new MSTVendorCodeDto();
                ConvertToWay<EBR_MST_VendorCode, MSTVendorCodeDto>.ConvertTo(x, out vendor);
                vendorCodes.Add(vendor);
            });
            List<MSTVendorContactDto> vendorContacts = new List<MSTVendorContactDto>();
            VendorContactRep.GetAll().ToList().ForEach(x =>
            {
                MSTVendorContactDto vendor = new MSTVendorContactDto();
                ConvertToWay<EBR_MST_VendorContact, MSTVendorContactDto>.ConvertTo(x, out vendor);
                vendorContacts.Add(vendor);
            });
            List<MSTBuildReasonDto> buildReasons = new List<MSTBuildReasonDto>();
            BuildReasonRep.GetAll().ToList().ForEach(x =>
            {
                MSTBuildReasonDto build = new MSTBuildReasonDto();
                ConvertToWay<EBR_MST_BuildReason, MSTBuildReasonDto>.ConvertTo(x, out build);
                buildReasons.Add(build);
            });
            List<MSTOwnerDto> owners = new List<MSTOwnerDto>();
            OwnerRep.GetAll().ToList().ForEach(x =>
            {
                MSTOwnerDto owner = new MSTOwnerDto();
                ConvertToWay<EBR_MST_Owner, MSTOwnerDto>.ConvertTo(x, out owner);
                owners.Add(owner);
            });
            List<MSTPriorityOfAssemblyBuildDto> priorities = new List<MSTPriorityOfAssemblyBuildDto>();
            PriorityOfAssBuildRep.GetAll().ToList().ForEach(x =>
            {
                MSTPriorityOfAssemblyBuildDto priority = new MSTPriorityOfAssemblyBuildDto();
                ConvertToWay<EBR_MST_PriorityOfAssemblyBuild, MSTPriorityOfAssemblyBuildDto>.ConvertTo(x, out priority);
                priorities.Add(priority);
            });
            List<MSTPKGProcessTypeDto> processTypes = new List<MSTPKGProcessTypeDto>();
            PKProcessTypeRep.GetAll().ToList().ForEach(x =>
            {
                MSTPKGProcessTypeDto process = new MSTPKGProcessTypeDto();
                ConvertToWay<EBR_MST_PKGProcessType, MSTPKGProcessTypeDto>.ConvertTo(x, out process);
                processTypes.Add(process);
            });

            List<MSTQualityLevelDto> qualityLevels = new List<MSTQualityLevelDto>();
            QualityLevelRep.GetAll().ToList().ForEach(x =>
            {
                MSTQualityLevelDto item = new MSTQualityLevelDto();
                ConvertToWay<EBR_MST_QualityLevel, MSTQualityLevelDto>.ConvertTo(x, out item);
                qualityLevels.Add(item);
            });

            List<MSTRevenueLocationDto> revenueLocations = new List<MSTRevenueLocationDto>();
            RevenueLocationRep.GetAll().ToList().ForEach(x =>
            {
                MSTRevenueLocationDto item = new MSTRevenueLocationDto();
                ConvertToWay<EBR_MST_RevenueLocation, MSTRevenueLocationDto>.ConvertTo(x, out item);
                revenueLocations.Add(item);
            });
            List<MSTWireMaterialDto> wireMaterials = new List<MSTWireMaterialDto>();
            WireMaterialRep.GetAll().ToList().ForEach(x =>
            {
                MSTWireMaterialDto item = new MSTWireMaterialDto();
                ConvertToWay<EBR_MST_WireMaterial, MSTWireMaterialDto>.ConvertTo(x, out item);
                wireMaterials.Add(item);
            });
            List<MSTProcessLTSDto> processLTSs = new List<MSTProcessLTSDto>();
            ProcessLTSRep.GetAll().ToList().ForEach(x =>
            {
                MSTProcessLTSDto item = new MSTProcessLTSDto();
                ConvertToWay<EBR_MST_ProcessLTS, MSTProcessLTSDto>.ConvertTo(x, out item);
                processLTSs.Add(item);
            });
            List<MSTProbeStatusDto> probeStatus = new List<MSTProbeStatusDto>();
            ProbeStatusRep.GetAll().ToList().ForEach(x =>
            {
                MSTProbeStatusDto item = new MSTProbeStatusDto();
                ConvertToWay<EBR_MST_ProbeStatus, MSTProbeStatusDto>.ConvertTo(x, out item);
                probeStatus.Add(item);
            });
            List<MSTEmailAddressDto> emails = new List<MSTEmailAddressDto>();
            EmailAddressRep.GetAll().ToList().ForEach(x =>
            {
                MSTEmailAddressDto item = new MSTEmailAddressDto();
                ConvertToWay<EBR_MST_EmailAddress, MSTEmailAddressDto>.ConvertTo(x, out item);
                emails.Add(item);
            });
            List<MSTRequesterLocationDto> requestLocations = new List<MSTRequesterLocationDto>();
            RequesterLocationRep.GetAll().ToList().ForEach(x =>
            {
                MSTRequesterLocationDto item = new MSTRequesterLocationDto();
                ConvertToWay<EBR_MST_RequesterLocation, MSTRequesterLocationDto>.ConvertTo(x, out item);
                requestLocations.Add(item);
            });
            List<ListSubViewModel> listSub = new List<ListSubViewModel>();

            DashboardViewModel data = new DashboardViewModel()
            {
                Rev = "Rev 01",
                Packages = packages,
                WaferSizes = wafers,
                FabCodes = fabCodes,
                DieBlanks = dieBanks,
                AssemblyLocations = assemblies,
                FGLocations = locations,
                PackageTypes = packagesType,
                PackageTestTypes = packagesTest,
                MarkingInstructions = markingIns,
                MarkingCodes = markings,
                ShipFinishedProductTos = locations,
                ShipRejectedPartTos = locations,
                ReturnWaferTos = locations,
                PurposeOfBuilds = buildReasons,
                VendorCodes = vendorCodes,
                VendorContacts = vendorContacts,
                RequestCycleTimes = priorities,
                PKGProcess = processTypes,
                LotOwners = owners,
                QualityLevels = qualityLevels,
                RevenueLocations = revenueLocations,
                WireMaterias = wireMaterials,
                ProcessLTSs = processLTSs,
                TestLocations = locations,
                ProbeStatus = probeStatus,
                EmailAddress = emails,
                RequesterLocations = requestLocations,
                ManagerEmails = emails,
                RequestedBy = CurrentName,
                ListSub = listSub,
            };

            return data;
        }

        /// <summary>
        /// Converts to.
        /// </summary>
        /// <param name="model">The model.</param>
        /// <param name="statusType">Type of the status.</param>
        /// <returns>EBRMasterDto.</returns>
        private EBRMasterDto ConvertTo(DashboardViewModel model, StatusType statusType)
        {
            return new EBRMasterDto()
            {
                Device = model.Device,
                Rev = model.Rev,
                FABDieRevision = model.FABDieRevision,
                PMPN = model.PMPN,
                TMPN = model.TMPN,
                AMPN = model.AMPN,
                FMPN = model.FMPN,
                CPN_SAP_Material = model.CPN_SAP_Material,
                PackageId = model.PackageId,
                PackageSize = model.PackageSize,
                Leads = model.Leads,
                Speed = model.Speed,
                EABI_EBR_Revision = model.EABI_EBR_Revision,
                WaferSizeId = model.WaferSizeId,
                CurrentWaferThickness = model.CurrentWaferThichness,
                InternalDevice = model.InternalDevice,
                FabCodeId = model.FabCodeId,
                Power_Voltage = model.Power_Voltage,
                DieBlankId = model.DieBlankId,
                AssemblyLocationId = model.AssemblyLocationId,
                FGLocationId = model.FGLocationId,
                AssemblyFlow = model.AssemblyFlow,
                PackageTypeId = model.PackageTypeId,
                TopSideMarkingId = model.TopSideMarkingId,
                MRL = model.MRL,
                NameOfMarkingFile = model.NameOfMarkingFile,
                RequiresSpecialMark = model.RequiresSpecialMark,
                RequiresAssEngrInput = model.RequiresAssEngrInput,
                MarkingCodeId = model.MarkingCodeId,
                Pin1Marking = model.Pin1Marking,
                TopLine = model.TopLine,
                TwoLine = model.TwoLine,
                ThreeLine = model.ThreeLine,
                FourLine = model.FourLine,
                FiveLine = model.FiveLine,
                SixLine = model.SixLine,
                ShipFinishedProductToId = model.ShipFinishedProductToId,
                AttentionFinished = model.AttentionFinished,
                ShipRejectedPartToId = model.ShipRejectedPartToId,
                AttentionRejected = model.AttentionRejected,
                ReturnWaferToId = model.ReturnWaferToId,
                VendorContactId = model.VendorContactId,
                VendorCodeId = model.VendorCodeId,
                PurposeOfBuildId = model.PurposeOfBuildId,
                LotOwnerId = model.LotOwnerId,
                RequestCycleTimeId = model.RequestCycleTimeId,
                PKGProcessId = model.PKGProcessId,
                QualityLevelId = model.QualityLevelId,
                RevenueLocationId = model.RevenueLocationId,
                BondDiagramAttached = model.BondDiagramAttached,
                ScrapExcessDie_Wafer = model.ScrapExcessDie_Wafer,
                UV_Erase = model.UV_Erase,
                DieCoat = model.DieCoat,
                WireMaterialId = model.WireMaterialId,
                ProcessLTSID = model.ProcessLTSID,
                ForecastMaterial = model.ForecastMaterial,
                BondDiagram = model.BondDiagram,
                BondDiagramRev = model.BondDiagramRev,
                NPILot = model.NPILot,
                IsCompleted = model.IsCompleted,
                EngineerTeam = model.EngineerTeam,
                TestLocationId = model.TestLocationId,
                ProbeStatusId = model.ProbeStatusId,
                PackageTestTypeId = model.PackageTestTypeId,
                TestProgram = model.TestProgram,
                TestProgamAvailable = model.TestProgamAvailable,
                CommentAvailable = model.CommentAvailable,
                Test_Special_Instruction = model.Test_Special_Instruction,
                RequestedBy = model.RequestedBy,
                EmailAddressId = model.EmailAddressId,
                Phone = model.Phone,
                RequesterLocationId = model.RequesterLocationId,
                BusinessUnit = model.BusinessUnit,
                ApprovingManager = model.ApprovingManager,
                ManagerEmailId = model.ManagerEmailId,
                TotalCost = model.TotalCost,
                RequestedShipDate = model.RequestedShipDate,
                RequiresTestPgmApproval = model.RequiresTestPgmApproval,
                IsDeleted = false,
                LastUpdatedBy = CurrentName,
                LastUpdated = DateTime.Now,
                StatusType = statusType
            };
        }

        /// <summary>
        /// Converts the sub.
        /// </summary>
        /// <param name="item">The item.</param>
        /// <returns>ListSubViewModel.</returns>
        private ListSubViewModel ConvertSub(EBRSubMasterDto item)
        {
            return new ListSubViewModel()
            {
                Id = item.Id,
                BuildQuality = item.BuildQty,
                Comment = item.Comment,
                DashboardId = item.DashboardId,
                LotNumber = item.MES_Lot_Number,
                BatchLotNumber = item.SAP_Batch_Lot_Number,
                WaferQty = item.WaferQty
            };
        }

        /// <summary>
        /// Changes the status.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <param name="statusType">Type of the status.</param>
        /// <returns>SaveResult.</returns>
        private SaveResult ChangeStatus(int id, StatusType statusType)
        {
            return MasterRep.ChangeStatus(id, statusType);
        }

        private bool TryCreateDir(int id)
        {
            string folderUpload = Server.MapPath("~/Uploads");
            try
            {
                if (!Directory.Exists(folderUpload))
                    Directory.CreateDirectory(folderUpload);

                string folderDashboard = Path.Combine(folderUpload, id.ToString().PadLeft(10, '0'));
                if (!Directory.Exists(folderDashboard))
                    Directory.CreateDirectory(folderDashboard);

                return true;
            }
            catch
            {
                return false;
            }
        }
        #endregion

        #region Inject
        [Inject]
        public IEBRMasterRepository MasterRep { get; set; }
        [Inject]
        public IEBRSubMasterRepository SubMasterRep { get; set; }
        [Inject]
        public IMSTAssLocRepository AssLocRep { get; set; }
        [Inject]
        public IMSTBuildReasonRepository BuildReasonRep { get; set; }
        [Inject]
        public IMSTDieBankRepository DieBankRep { get; set; }
        [Inject]
        public IMSTEmailAddressRepository EmailAddressRep { get; set; }
        [Inject]
        public IMSTFabCodeRepository FabCodeRep { get; set; }
        [Inject]
        public IMSTFGLocationRepository Location { get; set; }
        [Inject]
        public IMSTMarkingInstructionRepository MarkingInstructionRep { get; set; }
        [Inject]
        public IMSTMarkingSLRepository MarkingSLRep { get; set; }
        [Inject]
        public IMSTOwnerRepository OwnerRep { get; set; }
        [Inject]
        public IMSTPackageRepository PackageRep { get; set; }
        [Inject]
        public IMSTPackageTestTypeRepository PackageTestTypeRep { get; set; }
        [Inject]
        public IMSTPackageTypesRepository PackageTypeRep { get; set; }
        [Inject]
        public IMSTPriorityOfAssemblyBuildRepository PriorityOfAssBuildRep { get; set; }
        [Inject]
        public IMSTProbeStatusRepository ProbeStatusRep { get; set; }
        [Inject]
        public IMSTProcessLTSRepository ProcessLTSRep { get; set; }
        [Inject]
        public IMSTQualityLevelRepository QualityLevelRep { get; set; }
        [Inject]
        public IMSTRevenueLocationRepository RevenueLocationRep { get; set; }
        [Inject]
        public IMSTVendorCodeRepository VendorCodeRep { get; set; }
        [Inject]
        public IMSTVendorContactRepository VendorContactRep { get; set; }
        [Inject]
        public IMSTWaferSizeRepository WaferSizeRep { get; set; }
        [Inject]
        public IMSTWireMaterialRepository WireMaterialRep { get; set; }
        [Inject]
        public IMSTRequesterLocationRepository RequesterLocationRep { get; set; }
        [Inject]
        public IMSTPKProcessTypeRepository PKProcessTypeRep { get; set; }

        #endregion

    }
}
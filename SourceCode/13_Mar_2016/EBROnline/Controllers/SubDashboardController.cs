using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using EBROnline.ViewModel;
using Ninject;
using EBROnline.Model.Abstracts;
using EBROnline.Model.DTO;
using System.Threading.Tasks;
using System.Net;

namespace EBROnline.Controllers
{
    public class SubDashboardController : AppController
    {
        // GET: SubDashboard
        public ActionResult Index()
        {
            return View();
        }

        [HttpGet, Authorize]
        public PartialViewResult Edit(int id)
        {
            var ebrSub = SubMasterRep.GetById(id);
            var sub = new ListSubViewModel()
            {
                StackDieWaferNumbers = ebrSub.StackDieWaferNumbers,
                StackDieQty = ebrSub.StackDieQty,
                StackDiePMPN = ebrSub.StackDiePMPN,
                StackDieId = ebrSub.StackDieId,
                BatchLotNumber = ebrSub.SAP_Batch_Lot_Number,
                BuildQuality = ebrSub.BuildQty,
                Comment = ebrSub.Comment,
                DashboardId = ebrSub.DashboardId,
                Id = ebrSub.Id,
                LotNumber = ebrSub.MES_Lot_Number,
                WaferQty = ebrSub.WaferQty,
            };
            return PartialView("_PartialPageEdit", sub);
        }

        [HttpPost, Authorize]
        public async Task<JsonResult> Edit(int id, ListSubViewModel model)
        {
            Response.StatusCode = (int)HttpStatusCode.BadRequest;

            if (ModelState.IsValid)
            {
                EBRSubMasterDto ass = new EBRSubMasterDto()
                {
                    Id = id,
                    StackDieId = model.StackDieId,
                    StackDiePMPN = model.StackDiePMPN,
                    StackDieQty = model.StackDieQty,
                    StackDieWaferNumbers = model.StackDieWaferNumbers,
                    BuildQty = model.BuildQuality,
                    Comment = model.Comment,
                    DashboardId = model.DashboardId,
                    MES_Lot_Number = model.LotNumber,
                    SAP_Batch_Lot_Number = model.BatchLotNumber,
                    WaferQty = model.WaferQty,
                };

                var result = await SubMasterRep.UpdateAsync(ass);
                switch (result)
                {
                    case Model.SaveResult.SUCCESS:
                        Response.StatusCode = (int)HttpStatusCode.OK;
                        return new JsonResult()
                        {
                            JsonRequestBehavior = JsonRequestBehavior.AllowGet,
                            Data = new { code = "SB01" }
                        };
                    default:
                        return new JsonResult()
                        {
                            JsonRequestBehavior = JsonRequestBehavior.AllowGet,
                            Data = new { code = "SB02" }
                        };
                }
            }
            return new JsonResult()
            {
                JsonRequestBehavior = JsonRequestBehavior.AllowGet,
                Data = new { code = "SB02" }
            };
        }

        [HttpGet]
        public PartialViewResult ListEditSub(int id)//id: IdMaster
        {
            List<ListSubViewModel> items = new List<ListSubViewModel>();
            SubMasterRep.GetByParentId(id).ToList().ForEach(x =>
            {
                ListSubViewModel item = new ListSubViewModel();
                item.Id = x.Id;
                item.StackDieId = x.StackDieId;
                item.StackDiePMPN = x.StackDiePMPN;
                item.StackDieQty = x.StackDieQty;
                item.StackDieWaferNumbers = x.StackDieWaferNumbers;
                item.BuildQuality = x.BuildQty;
                item.Comment = x.Comment;
                item.DashboardId = x.DashboardId;
                item.LotNumber = x.MES_Lot_Number;
                item.BatchLotNumber = x.SAP_Batch_Lot_Number;
                item.WaferQty = x.WaferQty;
                item.IsAllow = (x.Dashboard.StatusType == Model.Types.StatusType.DRAFT) && (x.Dashboard.LastUpdatedBy == CurrentName);
                items.Add(item);
            });

            return PartialView("_PartialPageListSub", items);
        }

        /// <summary>
        /// Deletes the confirmed.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <returns></returns>
        [HttpPost, ActionName("Delete")]
        public async Task<JsonResult> DeleteConfirmed(int id)
        {
            if (id == 0)
            {
                Response.StatusCode = (int)HttpStatusCode.BadRequest;
                return Json("Bad Request", JsonRequestBehavior.AllowGet);
            }

            var result = await SubMasterRep.DeleteByAsync(id);
            switch (result)
            {
                case Model.SaveResult.SUCCESS:
                    Response.StatusCode = (int)HttpStatusCode.OK;
                    return Json("SUCCESS", JsonRequestBehavior.AllowGet);
                default:
                    Response.StatusCode = (int)HttpStatusCode.BadRequest;
                    return Json("FAILURE", JsonRequestBehavior.AllowGet);
            }
        }

        [HttpPost, ActionName("Add")]
        public async Task<JsonResult> AddSub(int id, ListSubViewModel model)//idMaster
        {
            Response.StatusCode = (int)HttpStatusCode.OK;

            var item = new EBRSubMasterDto()
            {
                StackDieWaferNumbers = model.StackDieWaferNumbers,
                StackDieQty = model.StackDieQty,
                StackDiePMPN = model.StackDiePMPN,
                StackDieId = model.StackDieId,
                BuildQty = model.BuildQuality,
                Comment = model.Comment,
                DashboardId = model.DashboardId,
                MES_Lot_Number = model.LotNumber,
                SAP_Batch_Lot_Number = model.BatchLotNumber,
                WaferQty = model.WaferQty,
            };
            var result = await SubMasterRep.AddAsync(item);
            switch (result)
            {
                case Model.SaveResult.SUCCESS:
                    return Json(new { data = "SB01" }, JsonRequestBehavior.AllowGet);
                case Model.SaveResult.FAILURE:
                    return Json(new { data = "SB02" }, JsonRequestBehavior.AllowGet);
            }

            return Json(new { data = "SB02" }, JsonRequestBehavior.AllowGet);
        }

        [Inject]
        public IEBRSubMasterRepository SubMasterRep { get; set; }
    }
}
using EBROnline.Infractructure;
using EBROnline.Model.Abstracts;
using EBROnline.Model.DTO;
using EBROnline.Model.Entities;
using EBROnline.ViewModel;
using Ninject;
using PagedList;
using System.Net;
using System.Threading.Tasks;
using System.Web.Mvc;
using System.Linq;
using System.Data.Entity;
using System.Collections.Generic;
using System;

/// <summary>
/// 
/// </summary>
namespace EBROnline.Controllers
{
    /// <summary>
    /// 
    /// </summary>
    [Authorize(Roles = AuthRole.Admin)]
    public class WaferSizeController : AppController
    {
        /// <summary>
        /// Indexes this instance.
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        public ActionResult Index()
        {
            return View();
        }

        /// <summary>
        /// Lists the specified page.
        /// </summary>
        /// <param name="page">The page.</param>
        /// <returns></returns>
        [HttpGet]
        public PartialViewResult List(int? page)
        {
            List<MSTWaferSizeDto> items = new List<MSTWaferSizeDto>();
            WaferSizeRep.GetAll().ToList().ForEach(x =>
             {
                 MSTWaferSizeDto item = new MSTWaferSizeDto();
                 ConvertToWay<EBR_MST_WaferSize, MSTWaferSizeDto>.ConvertTo(x, out item);
                 items.Add(item);
             });

            int pageNumber = page ?? 1;
            return PartialView(items.ToPagedList(pageNumber, EBROnlineConfig.PAGESIZE));
        }

        /// <summary>
        /// Creates this instance.
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        public ActionResult Create()
        {
            return View(new MSTViewModel());
        }

        /// <summary>
        /// Creates the specified model.
        /// </summary>
        /// <param name="model">The model.</param>
        /// <returns></returns>
        [HttpPost]
        public async Task<JsonResult> Create(MSTViewModel model)
        {
            Response.StatusCode = (int)HttpStatusCode.BadRequest;

            if (ModelState.IsValid)
            {
                MSTWaferSizeDto ass = new MSTWaferSizeDto()
                {
                    Name = model.Name,
                    Description = model.Description,
                    LastUpdatedBy = CurrentName,
                    LastUpdated = DateTime.Now
                };

                EBR_MST_WaferSize assDB = new EBR_MST_WaferSize();
                ConvertToWay<MSTWaferSizeDto, EBR_MST_WaferSize>.ConvertTo(ass, out assDB);
                var result = await WaferSizeRep.AddAsync(assDB);
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

        /// <summary>
        /// Edits the specified identifier.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <returns></returns>
        [HttpGet]
        public PartialViewResult Edit(int id)
        {
            MSTWaferSizeDto ass = new MSTWaferSizeDto();
            ConvertToWay<EBR_MST_WaferSize, MSTWaferSizeDto>.ConvertTo(WaferSizeRep.Single(id), out ass);

            MSTViewModel bind = new MSTViewModel
            {
                Id = id,
                Name = ass.Name,
                Description = ass.Description,
            };
            return PartialView("_PartialPageMSTEdit", bind);
        }

        /// <summary>
        /// Edits the specified identifier.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <param name="viewmodel">The viewmodel.</param>
        /// <returns></returns>
        [HttpPost]
        public async Task<JsonResult> Edit(int id, MSTViewModel model)
        {
            if (ModelState.IsValid)
            {
                Response.StatusCode = (int)HttpStatusCode.BadRequest;

                if (ModelState.IsValid)
                {
                    MSTWaferSizeDto ass = new MSTWaferSizeDto()
                    {
                        Id = id,
                        Name = model.Name,
                        Description = model.Description,
                        LastUpdatedBy = CurrentName,
                        LastUpdated = DateTime.Now
                    };

                    EBR_MST_WaferSize assDB = new EBR_MST_WaferSize();
                    ConvertToWay<MSTWaferSizeDto, EBR_MST_WaferSize>.ConvertTo(ass, out assDB);
                    var result = await WaferSizeRep.UpdateAsync(assDB);
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

            }
            return new JsonResult()
            {
                JsonRequestBehavior = JsonRequestBehavior.AllowGet,
                Data = new { code = "SB02" }
            };
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

            var result = await WaferSizeRep.DeleteByAsync(id);
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

        /// <summary>
        /// Gets or sets the wafer size rep.
        /// </summary>
        /// <value>
        /// The wafer size rep.
        /// </value>
        [Inject]
        public IMSTWaferSizeRepository WaferSizeRep { get; set; }
    }
}

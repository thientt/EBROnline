using EBROnline.Infractructure;
using EBROnline.Model.Abstracts;
using EBROnline.Model.DTO;
using EBROnline.ViewModel;
using Ninject;
using PagedList;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Threading.Tasks;
using System.Web.Mvc;
using EBROnline.Model.Entities;
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
    public class LocationController : AppController
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
            var items = new List<MSTFGLocationDto>();
            LocationRep.GetAll().ToList().ForEach(x =>
            {
                items.Add(x.ToEntity<MSTFGLocationDto, EBR_MST_FGLocation>());
            });

            int pageNumber = page ?? 1;
            return PartialView(items.ToPagedList(pageNumber, EBROnlineConfig.PAGESIZE));
        }

        /// <summary>
        /// Detailses the specified identifier.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <returns></returns>
        [HttpGet]
        public async Task<ActionResult> Detail(int id)
        {
            await LocationRep.GetAllAsync();

            if (id == 0)
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);

            var assDB = await LocationRep.SingleAsync(id);

            MSTFGLocationDto ass = new MSTFGLocationDto();// ConvertToDto(assDB);
            ConvertToWay<EBR_MST_FGLocation, MSTFGLocationDto>.ConvertTo(assDB, out ass);
            if (ass == null)
                return HttpNotFound();

            return View(ass);
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

            return await ExecuteWithErrorHandling(async () =>
            {
                var loc = model.ToBase()
                .WithUser(CurrentName)
                .TryToDto<MSTFGLocationDto>()
                .TryToEntity<EBR_MST_FGLocation, MSTFGLocationDto>();

                var result = await LocationRep.AddAsync(loc);

                return ExecuteResult(() =>
                 {
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
                 });
            });
        }

        /// <summary>
        /// Edits the specified identifier.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <returns></returns>
        [HttpGet]
        public PartialViewResult Edit(int id)
        {
            MSTFGLocationDto ass = LocationRep.Single(id).TryToEntity<MSTFGLocationDto, EBR_MST_FGLocation>();
            return PartialView("_PartialPageMSTEdit", ass.TryToShortViewModel(id));
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
            Response.StatusCode = (int)HttpStatusCode.BadRequest;

            return await ExecuteWithErrorHandling(async () =>
            {
                var entity = model.ToBase(id)
                        .WithUser(CurrentName)
                        .TryToDto<MSTFGLocationDto>()
                        .ToEntity<EBR_MST_FGLocation, MSTFGLocationDto>();

                var result = await LocationRep.UpdateAsync(entity);

                return ExecuteResult(() =>
                {
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
                });
            });
        }

        /// <summary>
        /// Deletes the specified identifier.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <param name="ass">The site.</param>
        /// <returns></returns>
        [HttpPost, ActionName("Delete")]
        public async Task<JsonResult> DeleteConfirmed(int id)
        {
            return await ExecuteWithErrorHandling(async () =>
            {
                if (id == 0)
                {
                    Response.StatusCode = (int)HttpStatusCode.BadRequest;
                    return Json("Bad Request", JsonRequestBehavior.AllowGet);
                }

                var result = await LocationRep.DeleteByAsync(id);
                return ExecuteResult(() =>
                {
                    switch (result)
                    {
                        case Model.SaveResult.SUCCESS:
                            Response.StatusCode = (int)HttpStatusCode.OK;
                            return Json("SUCCESS", JsonRequestBehavior.AllowGet);
                        default:
                            Response.StatusCode = (int)HttpStatusCode.BadRequest;
                            return Json("FAILURE", JsonRequestBehavior.AllowGet);
                    }
                });
            });
        }

        /// <summary>
        /// Gets or sets the AssemblyLocation Repository.
        /// </summary>
        /// <value>
        /// The ass loc rep.
        /// </value>
        [Inject]
        public IMSTFGLocationRepository LocationRep { get; set; }
    }
}

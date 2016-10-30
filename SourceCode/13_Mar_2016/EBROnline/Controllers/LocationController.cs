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
            var items = LocationRep
                .GetAll()
                .ToDataTransferObjects<MSTFGLocationDto, EBR_MST_FGLocation>();

            return PartialView(items.ToPagedList(page ?? 1, EBROnlineConfig.PAGESIZE));
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
            return await ExecuteWithErrorHandling(async () =>
            {
                Response.StatusCode = (int)HttpStatusCode.BadRequest;

                var loc = model.ToBase()
                .WithUser(CurrentName)
                .TryToDto<MSTFGLocationDto>()
                .TryToEntity<EBR_MST_FGLocation, MSTFGLocationDto>();

                return await ExecuteResultWithStatus(async () =>
                 {
                     return await LocationRep.AddAsync(loc);
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
            var loc = LocationRep.Single(id).TryToData<MSTFGLocationDto, EBR_MST_FGLocation>();
            return PartialView("_PartialPageMSTEdit", loc.TryToShortViewModel(id));
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
            return await ExecuteWithErrorHandling(async () =>
            {
                Response.StatusCode = (int)HttpStatusCode.BadRequest;

                var loc = model.ToBase(id)
                        .WithUser(CurrentName)
                        .TryToDto<MSTFGLocationDto>()
                        .ToEntity<EBR_MST_FGLocation, MSTFGLocationDto>();

                return await ExecuteResultWithStatus(async () =>
                {
                    return await LocationRep.UpdateAsync(loc);
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

                return await ExecuteResultDelete(async () =>
                {
                    return await LocationRep.DeleteByAsync(id);
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

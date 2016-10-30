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
    public class DieBankController : AppController
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
            var items = DieBankRep
                .GetAll()
                .ToDataTransferObjects<MSTDieBankDto, EBR_MST_DieBank>();

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

                var bank = model.ToBase()
                        .WithUser(CurrentName)
                        .TryToDto<MSTDieBankDto>()
                        .ToEntity<EBR_MST_DieBank, MSTDieBankDto>();

                return await ExecuteResultWithStatus(async () =>
                {
                    return await DieBankRep.AddAsync(bank);
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
            var bank = DieBankRep
                .Single(id)
                .TryToData<MSTDieBankDto, EBR_MST_DieBank>();

            return PartialView("_PartialPageMSTEdit", bank.ToShortViewModel(id));
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

                var bank = model
                .ToBase(id)
                .WithUser(CurrentName)
                .TryToDto<MSTDieBankDto>()
                .ToEntity<EBR_MST_DieBank, MSTDieBankDto>();

                return await ExecuteResultWithStatus(async () =>
                {
                    return await DieBankRep.UpdateAsync(bank);
                });
            });
        }

        /// <summary>
        /// Deletes the confirmed.
        /// </summary>
        /// <param name="id">The identifier.</param>
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
                    return await DieBankRep.DeleteByAsync(id);
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
        public IMSTDieBankRepository DieBankRep { get; set; }
    }
}

using EBROnline.Infractructure;
using EBROnline.Model;
using EBROnline.Model.DTO;
using EBROnline.ViewModel;
using Ninject;
using PagedList;
using System.Net;
using System.Threading.Tasks;
using System.Web.Mvc;

namespace EBROnline.Controllers
{
    public class ApiBaseController<TData, TEntity, TIRepository> : AppController where TData : MSTDto where TEntity : class where TIRepository : IMSTRepository<TEntity>
    {
        // GET: ApiBase
        public ActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public PartialViewResult List(int? page)
        {
            var items = Repository.GetAll().ToDataTransferObjects<TData, TEntity>();

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
                TEntity data = model
                    .ToBase()
                    .WithUser(CurrentName)
                    .TryToDto<TData>()
                    .ToEntity<TEntity, TData>();

                return await ExecuteResultWithStatus(async () =>
                {
                    return await Repository.AddAsync(data);
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
            var data = Repository.Single(id).TryToData<TData, TEntity>();

            return PartialView("_PartialPageMSTEdit", data.ToShortViewModel(id));
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
                var assemblyLocation = model.ToBase(id).WithUser(CurrentName).TryToDto<TData>().ToEntity<TEntity, TData>();

                return await ExecuteResultWithStatus(async () =>
                {
                    return await Repository.UpdateAsync(assemblyLocation);
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
                    return await Repository.DeleteByAsync(id);
                });
            });
        }

        [Inject]
        public TIRepository Repository { get; set; }
    }
}
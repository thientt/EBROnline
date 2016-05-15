using EBROnline.Infractructure;
using EBROnline.Model.Abstracts;
using EBROnline.Model.DTO;
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
    public class RolesController : AppController
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
        public ActionResult List(int? page)
        {
            var items = RolesRep.GetAll();
            int pageNumber = page ?? 1;
            return PartialView(items.ToPagedList(pageNumber, EBROnlineConfig.PAGESIZE));
        }

        /// <summary>
        /// Edits the specified identifier.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <returns></returns>
        [HttpGet, ActionName("Edit")]
        public async Task<ActionResult> Edit(int id)
        {
            if (id == 0)
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);

            SYSRolesDto role = await RolesRep.SingleAsync(id);

            if (role == null)
                return HttpNotFound();

            MSTViewModel bind = new MSTViewModel
            {
                Name = role.Name,
                Description = role.Description,
                LastUpdatedBy = role.LastUpdatedBy,
                LastUpdated = role.LastUpdated,
            };

            return PartialView("_PartialPageMSTEdit", bind);
        }

        /// <summary>
        /// Edits the specified identifier.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <param name="viewmodel">The viewmodel.</param>
        /// <returns></returns>
        [HttpPost, ActionName("Edit")]
        public async Task<JsonResult> ConfirmEdit(int id, MSTViewModel viewmodel)
        {
            Response.StatusCode = (int)HttpStatusCode.BadRequest;

            if (ModelState.IsValid)
            {
                var role = new SYSRolesDto
                {
                    Id = id,
                    Name = viewmodel.Name,
                    Description = viewmodel.Description,
                    LastUpdatedBy = CurrentName
                };
                var result = await RolesRep.UpdateAsync(role);
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
        /// Gets or sets the roles repository.
        /// </summary>
        /// <value>
        /// The roles repository.
        /// </value>
        [Inject]
        public ISYSRolesRepository RolesRep { get; set; }
    }
}

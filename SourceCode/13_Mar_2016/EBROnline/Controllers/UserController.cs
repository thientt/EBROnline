using EBROnline.Infractructure;
using EBROnline.Model.Abstracts;
using EBROnline.Model.DTO;
using EBROnline.ViewModel;
using Ninject;
using PagedList;
using System.Net;
using System.Threading.Tasks;
using System.Web.Mvc;

namespace EBROnline.Controllers
{
    [Authorize(Roles = AuthRole.Admin)]
    public class UserController : AppController
    {
        #region Admin
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
            var items = UserRep.GetAll();
            int pageNumber = page ?? 1;
            return PartialView(items.ToPagedList(pageNumber, EBROnlineConfig.PAGESIZE));
        }

        /// <summary>
        /// Unlockeds the specified identifier.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <param name="user">The user.</param>
        /// <returns></returns>
        [HttpPost, ActionName("Unlocked")]
        public async Task<ActionResult> ConfirmUnlocked(int id)
        {
            Response.StatusCode = (int)HttpStatusCode.BadRequest;

            if (id == 0)
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);

            var result = await UserRep.UnlockedAsync(id);
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

        /// <summary>
        /// Locks the specified identifier.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <returns></returns>
        [HttpPost, ActionName("Lock")]
        public async Task<ActionResult> ConfirmLock(int id)
        {
            Response.StatusCode = (int)HttpStatusCode.BadRequest;

            if (id == 0)
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);

            var result = await UserRep.LockedAsync(id);
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

        /// <summary>
        /// Sets the role.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <returns></returns>
        [HttpGet]
        public async Task<ActionResult> SetRole(int id)
        {
            if (id == 0)
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);

            var user = await UserRep.SingleAsync(id);
            if (user == null)
                return HttpNotFound();

            //Find all role
            var roles = RoleRep.GetAllAsync();

            UserViewModel bind = new UserViewModel()
            {
                Email = user.Email,
                Salt = user.Salt,
                RegistedDate = user.RegistedDate,
                IsLocked = user.IsLocked,
                Lastname = user.Lastname,
                Firstname = user.Firstname,
                Phone = user.Phone,
                //SiteId = user.SiteId,
                RoleId = user.RoleId,
                LastLoginDate = user.LastLoginDate
            };

            bind.Roles = await roles;

            return PartialView("_PartialPageSetRole", bind);
        }

        /// <summary>
        /// Sets the role.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <param name="viewmodel">The viewmodel.</param>
        /// <returns></returns>
        [HttpPost]
        public async Task<ActionResult> SetRole(int id, [Bind(Include = "RoleId")]UserViewModel viewmodel)
        {
            Response.StatusCode = (int)HttpStatusCode.BadRequest;
            var result = await UserRep.SetRoleAsync(id, (Model.Types.RoleType)viewmodel.RoleId);
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

        #endregion end Admin

        #region Inject
        /// <summary>
        /// Gets or sets the user repository.
        /// </summary>
        /// <value>
        /// The user repository.
        /// </value>
        [Inject]
        public ISYSUsersRepository UserRep { get; set; }

        /// <summary>
        /// Gets or sets the role repository.
        /// </summary>
        /// <value>
        /// The role repository.
        /// </value>
        [Inject]
        public ISYSRolesRepository RoleRep { get; set; }
        #endregion
    }
}
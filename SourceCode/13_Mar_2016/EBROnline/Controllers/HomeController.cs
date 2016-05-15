using System.Web.Mvc;
using EBROnline.Infractructure;

/// <summary>
/// 
/// </summary>
namespace EBROnline.Controllers
{
    /// <summary>
    /// 
    /// </summary>
    [AllowAnonymous]
    public class HomeController : AppController
    {
        /// <summary>
        /// Indexes this instance.
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        public ActionResult Index()
        {
            ViewBag.UserName = this.CurrentName;
            switch (Role)
            {
                case AuthRole.User:
                    return RedirectToAction("AsUser", "Dashboard");
                case AuthRole.Planner:
                    return RedirectToAction("AsPlanner", "Dashboard");
                case AuthRole.Admin:
                    return RedirectToAction("AsAdmin", "Dashboard");
                default:
                    return View();
            }
        }
    }
}
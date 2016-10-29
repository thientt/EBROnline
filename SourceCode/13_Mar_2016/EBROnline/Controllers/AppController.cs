using EBROnline.Model.DTO;
using EBROnline.Model.Entities;
using EBROnline.Utilities;
using Microsoft.Owin.Security;
using Ninject;
using System;
using System.Security.Claims;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;

/// <summary>
/// 
/// </summary>
namespace EBROnline.Controllers
{
    /// <summary>
    /// 
    /// </summary>
    public class AppController : Controller
    {
        /// <summary>
        /// Gets the authentication manager.
        /// </summary>
        /// <value>
        /// The authentication manager.
        /// </value>
        protected IAuthenticationManager AuthenticationManager
        {
            get
            {
                var ctx = Request.GetOwinContext();
                return ctx.Authentication;
            }
        }

        /// <summary>
        /// Gets the name of the current.
        /// </summary>
        /// <value>
        /// The name of the current.
        /// </value>
        protected string CurrentName
        {
            get
            {
                var claim = User as ClaimsPrincipal;
                if (claim != null)
                    return claim.FindFirst(ClaimTypes.Name).Value;
                else return string.Empty;
            }
        }

        protected string Role
        {
            get
            {
                var claim = User as ClaimsPrincipal;
                if (claim != null)
                {
                    Claim c = claim.FindFirst(ClaimTypes.Role);
                    if (c != null)
                        return c.Value;
                    else return string.Empty;
                }
                else return string.Empty;
            }
        }

        protected JsonResult ExecuteResult(Func<JsonResult> action)
        {
            return action();
        }

        protected JsonResult ExecuteWithErrorHandling(Func<JsonResult> action)
        {
            CheckModelState();

            if (action != null)
            {
                try
                {
                    return action();
                }
                catch (Exception ex)
                {
                    LogService.Error(ex);
                }
            }

            return new JsonResult()
            {
                JsonRequestBehavior = JsonRequestBehavior.AllowGet,
                Data = new { code = "SB02" }
            };
        }

        protected async Task<JsonResult> ExecuteWithErrorHandling(Func<Task<JsonResult>> action)
        {
            CheckModelState();

            if (action != null)
            {
                try
                {
                    return await action();
                }
                catch (Exception ex)
                {
                    LogService.Error(ex);
                }
            }

            return new JsonResult()
            {
                JsonRequestBehavior = JsonRequestBehavior.AllowGet,
                Data = new { code = "SB02" }
            };
        }

        private void CheckModelState()
        {
            if (!ModelState.IsValid)
            {
                throw new ArgumentException();
            }
        }

        [Inject]
        public ILogService LogService { get; set; }
    }
}
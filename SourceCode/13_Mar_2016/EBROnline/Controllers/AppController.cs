using EBROnline.Utilities;
using Microsoft.Owin.Security;
using Ninject;
using System;
using System.Net;
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

        protected JsonResult ExecuteResult(Func<JsonResult> func)
        {
            return func();
        }

        protected async Task<JsonResult> ExecuteResult(Func<Task<JsonResult>> func)
        {
            return await func();
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

        protected async Task<JsonResult> ExecuteResultWithStatus(Func<Task<Model.SaveResult>> func)
        {
            if (func == null)
                throw new Exception();

            var result = await func();

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

        protected async Task<JsonResult> ExecuteResultDelete(Func<Task<Model.SaveResult>> delete)
        {
            if (delete == null)
                throw new Exception();

            var result = await delete();
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

        [Inject]
        public ILogService LogService { get; set; }
    }
}
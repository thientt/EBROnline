using EBROnline.Model.DTO;
using EBROnline.Model.Entities;
using Microsoft.Owin.Security;
using System.Security.Claims;
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
        public IAuthenticationManager AuthenticationManager
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
        public string CurrentName
        {
            get
            {
                var claim = User as ClaimsPrincipal;
                if (claim != null)
                    return claim.FindFirst(ClaimTypes.Name).Value;
                else return string.Empty;
            }
        }

        public string Role
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

        //protected MSTAssLocDto ConvertToDto(EBR_MST_AssemblyLocation data)
        //{
        //    return new MSTAssLocDto()
        //    {
        //        Id = data.Id,
        //        Description = data.Description,
        //        IsDeleted = data.IsDeleted,
        //        LastUpdated = data.LastUpdated,
        //        LastUpdatedBy = data.LastUpdatedBy,
        //        Name = data.Name
        //    };
        //}

        //protected EBR_MST_AssemblyLocation ConvertToDB(MSTAssLocDto data)
        //{
        //    return new EBR_MST_AssemblyLocation()
        //    {
        //        Id = data.Id,
        //        Description = data.Description,
        //        IsDeleted = data.IsDeleted,
        //        LastUpdated = data.LastUpdated,
        //        LastUpdatedBy = data.LastUpdatedBy,
        //        Name = data.Name
        //    };
        //}

        //protected EBR_MST_Package ConvertToDB(MSTPackageDto data)
        //{
        //    return new EBR_MST_Package()
        //    {
        //        Id = data.Id,
        //        Description = data.Description,
        //        IsDeleted = data.IsDeleted,
        //        LastUpdated = data.LastUpdated,
        //        LastUpdatedBy = data.LastUpdatedBy,
        //        Name = data.Name
        //    };
        //}
    }
}
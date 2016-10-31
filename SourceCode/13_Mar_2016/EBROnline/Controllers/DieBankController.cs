using EBROnline.Infractructure;
using EBROnline.Model.Abstracts;
using EBROnline.Model.DTO;
using EBROnline.Model.Entities;
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
    public class DieBankController : ApiBaseController<MSTDieBankDto, EBR_MST_DieBank, IMSTDieBankRepository>
    {
    }
}

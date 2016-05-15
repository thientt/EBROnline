using EBROnline.Model.Abstracts;
using Ninject;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;

namespace EBROnline.Controllers
{
    public class SNPZFullMDController : Controller
    {
        // GET: SNPZFullMD
        [HttpGet]
        public JsonResult SearchByCNP(string term)
        {
            var items = FullMDRep.SearchCNP(term);

            Response.StatusCode = (int)HttpStatusCode.OK;
            return Json(items, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public JsonResult SearchBySLCode(string cnp, string slCode)
        {
            var items = FullMDRep.SearchSLCode(cnp, slCode);

            Response.StatusCode = (int)HttpStatusCode.OK;
            return new JsonResult()
            {
                Data = new { items = items },
                JsonRequestBehavior = JsonRequestBehavior.AllowGet
            };
        }

        [HttpGet]
        public JsonResult SearchEBR(string cnp, string sl)
        {
            var item = FullMDRep.GetEBR(cnp, sl);

            Response.StatusCode = (int)HttpStatusCode.OK;
            return new JsonResult()
            {
                Data = new { item = item },
                JsonRequestBehavior = JsonRequestBehavior.AllowGet
            };
        }

        [Inject]
        public ISNPFullMDRepository FullMDRep { get; set; }
    }
}
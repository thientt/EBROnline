using EBROnline.Model.Abstracts;
using EBROnline.Model.DTO;
using EBROnline.Model.Entities;
using EBROnline.Utilities;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;

namespace EBROnline.Model.Concretes
{
    /// <summary>
    /// 
    /// </summary>
    public class MSTWireMaterialRepository : MSTRepository<EBR_MST_WireMaterial>,IMSTWireMaterialRepository
    {
        public MSTWireMaterialRepository(ILogService logService)
            : base(logService)
        {

        }
    }
}

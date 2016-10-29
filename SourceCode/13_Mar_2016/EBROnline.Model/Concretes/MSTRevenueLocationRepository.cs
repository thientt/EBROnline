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
    public class MSTRevenueLocationRepository :MSTRepository<EBR_MST_RevenueLocation>, IMSTRevenueLocationRepository
    {
        public MSTRevenueLocationRepository(ILogService logService)
            : base(logService)
        {

        }
    }
}

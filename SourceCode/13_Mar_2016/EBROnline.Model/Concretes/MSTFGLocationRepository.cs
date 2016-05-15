using EBROnline.Model.Abstracts;
using EBROnline.Model.DTO;
using EBROnline.Model.Entities;
using EBROnline.Utilities;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;

/// <summary>
/// 
/// </summary>
namespace EBROnline.Model.Concretes
{
    /// <summary>
    /// 
    /// </summary>
    public class MSTFGLocationRepository:MSTRepository<EBR_MST_FGLocation>, IMSTFGLocationRepository{
        public MSTFGLocationRepository(ILogService logService)
            : base(logService)
        {

        }
    }
}

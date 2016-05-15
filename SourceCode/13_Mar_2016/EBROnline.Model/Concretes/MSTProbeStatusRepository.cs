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
    public class MSTProbeStatusRepository : MSTRepository<EBR_MST_ProbeStatus>,IMSTProbeStatusRepository
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="MSTProbeStatusRepository"/> class.
        /// </summary>
        /// <param name="logService">The log service.</param>
        public MSTProbeStatusRepository(ILogService logService)
            : base(logService)
        {

        }
    }
}

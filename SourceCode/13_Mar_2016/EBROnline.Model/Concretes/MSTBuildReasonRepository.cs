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
    public class MSTBuildReasonRepository :MSTRepository<EBR_MST_BuildReason>, IMSTBuildReasonRepository{
        /// <summary>
        /// Initializes a new instance of the <see cref="MSTBuildReasonRepository"/> class.
        /// </summary>
        /// <param name="logService">The log service.</param>
        public MSTBuildReasonRepository(ILogService logService)
            : base(logService)
        {
        }
    }
}

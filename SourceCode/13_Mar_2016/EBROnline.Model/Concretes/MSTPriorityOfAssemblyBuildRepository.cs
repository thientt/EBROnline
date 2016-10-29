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
    public class MSTPriorityOfAssemblyBuildRepository : MSTRepository<EBR_MST_PriorityOfAssemblyBuild>,IMSTPriorityOfAssemblyBuildRepository
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="MSTPriorityOfAssemblyBuildRepository"/> class.
        /// </summary>
        /// <param name="logService">The log service.</param>
        public MSTPriorityOfAssemblyBuildRepository(ILogService logService)
            : base(logService)
        {

        }
    }
}

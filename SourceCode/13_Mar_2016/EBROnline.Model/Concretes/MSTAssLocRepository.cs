using EBROnline.Model.Abstracts;
using EBROnline.Model.DTO;
using EBROnline.Model.Entities;
using EBROnline.Utilities;

/// <summary>
/// 
/// </summary>
namespace EBROnline.Model.Concretes
{
    /// <summary>
    /// 
    /// </summary>
    public class MSTAssLocRepository : MSTRepository<EBR_MST_AssemblyLocation>, IMSTAssLocRepository
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="SYSUsersRepository"/> class.
        /// </summary>
        /// <param name="logService">The log service.</param>
        public MSTAssLocRepository(ILogService logService)
            : base(logService)
        {
        }
    }
}

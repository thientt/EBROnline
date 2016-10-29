using EBROnline.Model.DTO;
using System.Collections.Generic;
using System.Threading.Tasks;

/// <summary>
/// 
/// </summary>
namespace EBROnline.Model.Abstracts
{
    /// <summary>
    /// 
    /// </summary>
    public interface IEBRSubMasterRepository : IGet<EBRSubMasterDto>, IAdd<EBRSubMasterDto>, IUpdate<EBRSubMasterDto>,IDelete<EBRSubMasterDto>
    {
        /// <summary>
        /// Gets the by parent identifier.
        /// </summary>
        /// <param name="idMaster">The identifier master.</param>
        /// <returns></returns>
        IEnumerable<EBRSubMasterDto> GetByParentId(int idMaster);

        /// <summary>
        /// Gets the by parent identifier asynchronous.
        /// </summary>
        /// <param name="idMaster">The identifier master.</param>
        /// <returns></returns>
        Task<IEnumerable<EBRSubMasterDto>> GetByParentIdAsync(int idMaster);
    }
}

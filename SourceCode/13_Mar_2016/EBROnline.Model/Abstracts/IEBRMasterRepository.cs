// ***********************************************************************
// Assembly         : EBROnline.Model
// Author           : tranthiencdsp@gmail.com
// Created          : 02-25-2016
//
// Last Modified By : tranthiencdsp@gmail.com
// Last Modified On : 03-13-2016
// ***********************************************************************
// <copyright file="IEBRMasterRepository.cs" company="Atmel Corporation">
//     Copyright © Atmel 2016
// </copyright>
// <summary></summary>
// ***********************************************************************

using EBROnline.Model.DTO;
using EBROnline.Model.Types;
using System.Threading.Tasks;

/// <summary>
/// The Abstracts namespace.
/// </summary>
namespace EBROnline.Model.Abstracts
{
    /// <summary>
    /// Interface IEBRMasterRepository
    /// </summary>
    public interface IEBRMasterRepository : IGet<EBRMasterDto>, IAdd<EBRMasterDto>, IUpdate<EBRMasterDto>
    {
        /// <summary>
        /// Inserts the specified entity.
        /// </summary>
        /// <param name="entity">The entity.</param>
        /// <returns>System.Int32.</returns>
        int Insert(EBRMasterDto entity);

        /// <summary>
        /// Inserts the asynchronous.
        /// </summary>
        /// <param name="entity">The entity.</param>
        /// <returns>Task&lt;System.Int32&gt;.</returns>
        Task<int> InsertAsync(EBRMasterDto entity);

        /// <summary>
        /// Changes the status.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <returns>System.Int32.</returns>
        
        SaveResult ChangeStatus(int id,StatusType statusType );
        /// <summary>
        /// Changes the status asynchronous.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <returns>Task&lt;System.Int32&gt;.</returns>
        Task<SaveResult> ChangeStatusAsync(int id, StatusType statusType);
    }
}

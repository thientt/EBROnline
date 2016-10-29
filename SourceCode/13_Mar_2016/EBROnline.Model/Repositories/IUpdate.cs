// ***********************************************************************
// Assembly         : EBROnline.Model
// Author           : tranthiencdsp@gmail.com
// Created          : 02-25-2016
//
// Last Modified By : tranthiencdsp@gmail.com
// Last Modified On : 03-13-2016
// ***********************************************************************
// <copyright file="IUpdate.cs" company="Atmel Corporation">
//     Copyright © Atmel 2016
// </copyright>
// <summary></summary>
// ***********************************************************************
using EBROnline.Model.DTO;
using System.Threading.Tasks;

/// <summary>
/// The Model namespace.
/// </summary>
namespace EBROnline.Model
{
    /// <summary>
    /// Interface IUpdate
    /// </summary>
    /// <typeparam name="TEntity">The type of the t entity.</typeparam>
    public interface IUpdate<TEntity> where TEntity : class
    {
        /// <summary>
        /// Updates the specified entity.
        /// </summary>
        /// <param name="entity">The entity.</param>
        /// <returns></returns>
        SaveResult Update(TEntity entity);

        /// <summary>
        /// Updates the asynchronous.
        /// </summary>
        /// <param name="entity">The entity.</param>
        /// <returns></returns>
        Task<SaveResult> UpdateAsync(TEntity entity);
    }
}

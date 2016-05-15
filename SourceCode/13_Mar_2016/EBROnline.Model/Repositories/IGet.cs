// ***********************************************************************
// Assembly         : EBROnline.Model
// Author           : tranthiencdsp@gmail.com
// Created          : 02-25-2016
//
// Last Modified By : tranthiencdsp@gmail.com
// Last Modified On : 03-13-2016
// ***********************************************************************
// <copyright file="IGet.cs" company="Atmel Corporation">
//     Copyright © Atmel 2016
// </copyright>
// <summary></summary>
// ***********************************************************************
using EBROnline.Model.DTO;
using System.Collections.Generic;
using System.Threading.Tasks;

/// <summary>
/// The Model namespace.
/// </summary>
namespace EBROnline.Model
{
    /// <summary>
    /// Interface IGet
    /// </summary>
    /// <typeparam name="TEntity">The type of the t entity.</typeparam>
    public interface IGet<TEntity> where TEntity : class
    {
        /// <summary>
        /// Gets all.
        /// </summary>
        /// <returns></returns>
        IEnumerable<TEntity> GetAll();

        /// <summary>
        /// Gets all asynchronous.
        /// </summary>
        /// <returns></returns>
        Task<IEnumerable<TEntity>> GetAllAsync();

        /// <summary>
        /// Gets the by identifier.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <returns></returns>
        TEntity GetById(int id);

        /// <summary>
        /// Gets the by identifier asynchronous.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <returns></returns>
        Task<TEntity> GetByIdAsync(int id);
    }
}

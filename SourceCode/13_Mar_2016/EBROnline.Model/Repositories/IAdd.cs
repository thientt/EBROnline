// ***********************************************************************
// Assembly         : EBROnline.Model
// Author           : tranthiencdsp@gmail.com
// Created          : 02-25-2016
//
// Last Modified By : tranthiencdsp@gmail.com
// Last Modified On : 03-13-2016
// ***********************************************************************
// <copyright file="IAdd.cs" company="Atmel Corporation">
//     Copyright © Atmel 2016
// </copyright>
// <summary></summary>
// ***********************************************************************
using System.Threading.Tasks;

/// <summary>
/// The Model namespace.
/// </summary>
namespace EBROnline.Model
{
    /// <summary>
    /// Interface IAdd
    /// </summary>
    /// <typeparam name="TEntity">The type of the t entity.</typeparam>
    public interface IAdd<TEntity> where TEntity : class
    {
        /// <summary>
        /// Adds the specified entity.
        /// </summary>
        /// <param name="entity">The entity.</param>
        /// <returns></returns>
        SaveResult Add(TEntity entity);

        /// <summary>
        /// Adds the asynchronous.
        /// </summary>
        /// <param name="entity">The entity.</param>
        /// <returns></returns>
        Task<SaveResult> AddAsync(TEntity entity);
    }
}

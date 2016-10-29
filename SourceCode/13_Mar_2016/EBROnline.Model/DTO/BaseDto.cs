// ***********************************************************************
// Assembly         : EBROnline.Model
// Author           : tranthiencdsp@gmail.com
// Created          : 02-25-2016
//
// Last Modified By : tranthiencdsp@gmail.com
// Last Modified On : 02-21-2016
// ***********************************************************************
// <copyright file="BaseDto.cs" company="Atmel Corporation">
//     Copyright © Atmel 2016
// </copyright>
// <summary></summary>
// ***********************************************************************
using System;

/// <summary>
/// The DTO namespace.
/// </summary>
namespace EBROnline.Model.DTO
{
    /// <summary>
    /// Class BaseDto.
    /// </summary>
    public class BaseDto
    {
        /// <summary>
        /// Gets or sets the identifier.
        /// </summary>
        /// <value>
        /// The identifier.
        /// </value>
        public int Id { get; set; }
        /// <summary>
        /// Gets or sets the inserted by.
        /// </summary>
        /// <value>
        /// The inserted by.
        /// </value>
        public string LastUpdatedBy { get; set; }
        /// <summary>
        /// Gets or sets the inserted on.
        /// </summary>
        /// <value>
        /// The inserted on.
        /// </value>
        public DateTime LastUpdated { get; set; }
        /// <summary>
        /// Gets or sets a value indicating whether this instance is deleted.
        /// </summary>
        /// <value>
        /// <c>true</c> if this instance is deleted; otherwise, <c>false</c>.
        /// </value>
        public bool IsDeleted { get; set; }
    }
}

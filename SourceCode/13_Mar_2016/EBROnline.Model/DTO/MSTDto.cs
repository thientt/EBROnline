// ***********************************************************************
// Assembly         : EBROnline.Model
// Author           : tranthiencdsp@gmail.com
// Created          : 02-25-2016
//
// Last Modified By : tranthiencdsp@gmail.com
// Last Modified On : 03-14-2016
// ***********************************************************************
// <copyright file="MSTDto.cs" company="Atmel Corporation">
//     Copyright © Atmel 2016
// </copyright>
// <summary></summary>
// ***********************************************************************

/// <summary>
/// The DTO namespace.
/// </summary>
namespace EBROnline.Model.DTO
{
    /// <summary>
    /// Class MSTDto.
    /// </summary>
    public class MSTDto : BaseDto
    {
        /// <summary>
        /// Gets or sets the name.
        /// </summary>
        /// <value>The name.</value>
        public string Name { get; set; }
        /// <summary>
        /// Gets or sets the description.
        /// </summary>
        /// <value>The description.</value>
        public string Description { get; set; }
    }
}

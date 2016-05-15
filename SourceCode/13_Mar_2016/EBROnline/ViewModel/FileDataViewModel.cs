// ***********************************************************************
// Assembly         : EBROnlineV0
// Author           : tranthiencdsp@gmail.com
// Created          : 03-16-2016
//
// Last Modified By : tranthiencdsp@gmail.com
// Last Modified On : 03-16-2016
// ***********************************************************************
// <copyright file="FileDataViewModel.cs" company="Atmel">
//     Copyright © Atmel 2016
// </copyright>
// <summary></summary>
// ***********************************************************************
using System.Collections.Generic;

/// <summary>
/// The ViewModel namespace.
/// </summary>
namespace EBROnline.ViewModel
{
    /// <summary>
    /// Class FileDataViewModel.
    /// </summary>
    public class FileDataViewModel
    {
        /// <summary>
        /// Gets or sets the identifier.
        /// </summary>
        /// <value>The identifier.</value>
        public int Id { get; set; }
        /// <summary>
        /// Gets or sets the files.
        /// </summary>
        /// <value>The files.</value>
        public List<string> Files { get; set; }
    }
}
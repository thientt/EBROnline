// ***********************************************************************
// Assembly         : EBROnline.Model
// Author           : tranthiencdsp@gmail.com
// Created          : 02-25-2016
//
// Last Modified By : tranthiencdsp@gmail.com
// Last Modified On : 03-13-2016
// ***********************************************************************
// <copyright file="StatusType.cs" company="Atmel">
//     Copyright © Microsoft 2016
// </copyright>
// <summary></summary>
// ***********************************************************************

/// <summary>
/// The Types namespace.
/// </summary>
namespace EBROnline.Model.Types
{
    /// <summary>
    /// Enum StatusType
    /// </summary>
    public enum StatusType
    {
        /// <summary>
        /// The draft
        /// </summary>
        DRAFT = 0,
        /// <summary>
        /// The summit
        /// </summary>
        SUBMITTED = 1,

        /// <summary>
        /// The rejected
        /// </summary>
        REJECTED = 2, //(Action, returns EBR back to Draft, increases REV by 1)

        /// <summary>
        /// The accepted
        /// </summary>
        ACCEPTED = 3,

        /// <summary>
        /// The completed
        /// </summary>
        COMPLETED = 4,

        /// <summary>
        /// The canceled
        /// </summary>
        CANCELLED = 5
    }
}

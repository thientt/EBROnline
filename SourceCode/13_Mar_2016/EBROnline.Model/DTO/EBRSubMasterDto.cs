// ***********************************************************************
// Assembly         : EBROnline.Model
// Author           : tranthiencdsp@gmail.com
// Created          : 02-25-2016
//
// Last Modified By : tranthiencdsp@gmail.com
// Last Modified On : 03-15-2016
// ***********************************************************************
// <copyright file="EBRSubMasterDto.cs" company="Atmel Corporation">
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
    /// Class EBRSubMasterDto.
    /// </summary>
    public class EBRSubMasterDto
    {
        /// <summary>
        /// Gets or sets the identifier.
        /// </summary>
        /// <value>The identifier.</value>
        public int Id { get; set; }

        /// <summary>
        /// Gets or sets the stack die identifier.
        /// </summary>
        /// <value>The stack die identifier.</value>
        public string StackDieId { get; set; }

        /// <summary>
        /// Gets or sets the stack die PMPN.
        /// </summary>
        /// <value>The stack die PMPN.</value>
        public string StackDiePMPN { get; set; }

        /// <summary>
        /// Gets or sets the stack die qty.
        /// </summary>
        /// <value>The stack die qty.</value>
        public double StackDieQty { get; set; }

        /// <summary>
        /// Gets or sets the stack die wafer numbers.
        /// </summary>
        /// <value>The stack die wafer numbers.</value>
        public string StackDieWaferNumbers { get; set; }

        /// <summary>
        /// Gets or sets the dashboard identifier.
        /// </summary>
        /// <value>The dashboard identifier.</value>
        public int DashboardId { get; set; }

        /// <summary>
        /// Gets or sets me s_ lot_ number.
        /// </summary>
        /// <value>Mes lot number.</value>
        public string MES_Lot_Number { get; set; }

        /// <summary>
        /// Gets or sets the sa p_ batch_ lot_ number.
        /// </summary>
        /// <value>
        /// The sa p_ batch_ lot_ number.
        /// </value>
        public string SAP_Batch_Lot_Number { get; set; }

        /// <summary>
        /// Gets or sets the wafer qty.
        /// </summary>
        /// <value>
        /// The wafer qty.
        /// </value>
        public double WaferQty { get; set; }

        /// <summary>
        /// Gets or sets the build qty.
        /// </summary>
        /// <value>
        /// The build qty.
        /// </value>
        public double BuildQty { get; set; }

        /// <summary>
        /// Gets or sets the comment.
        /// </summary>
        /// <value>
        /// The comment.
        /// </value>
        public string Comment { get; set; }

        /// <summary>
        /// Gets or sets the dashboard.
        /// </summary>
        /// <value>
        /// The dashboard.
        /// </value>
        public EBRMasterDto Dashboard { get; set; }
    }
}
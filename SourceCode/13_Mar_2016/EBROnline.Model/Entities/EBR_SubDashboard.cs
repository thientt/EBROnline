//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace EBROnline.Model.Entities
{
    using System;
    using System.Collections.Generic;
    
    public partial class EBR_SubDashboard
    {
        public int Id { get; set; }
        public int DashBoardId { get; set; }
        public string MES_Lot_Number { get; set; }
        public string SAP_Batch_Lot_Number { get; set; }
        public double WaferQty { get; set; }
        public double BuildQty { get; set; }
        public string Comment { get; set; }
        public string StackDieId { get; set; }
        public string StackDiePMPN { get; set; }
        public double StackDieQty { get; set; }
        public string StackDieWaferNumbers { get; set; }
    
        public virtual EBR_Dashboard EBR_Dashboard { get; set; }
    }
}

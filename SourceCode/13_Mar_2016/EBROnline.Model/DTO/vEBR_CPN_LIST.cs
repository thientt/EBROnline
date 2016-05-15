
namespace EBROnline.Model.DTO
{
    public class vEBR_CPN_LIST
    {
        public string CNP { get; set; }//A.CPN as CNP
        public string SL { get; set; }//A.SL as SL
        public string Product { get; set; }//A.product as Product
        public string Phase { get; set; }//A.phase as Phase
        public string GPC { get; set; }//A.GPC as GPC
        public string ColA { get; set; }//B.ColA as ColA
        public string GlobalPackageCode { get; set; }//B.[Global Package Code (GPC)] as GlobalPackageCode
        public string PackageFamily { get; set; } //B.[Package Family] as PackageFamily
        public int LeadCount { get; set; }  //B.[Lead Count] as LeadCount
        public string BodyXDim { get; set; }//B.[Body  X Dim] as BodyXDim
        public string SizeYDim { get; set; }// B.[Size Y Dim] as SizeYDim
        public string BodyThickness { get; set; }// B.[Body Thickness] as BodyThickness
        public string LeadPitch { get; set; }//B.[Lead Pitch] as LeadPitch
        public string FormOption { get; set; }// B.[Form Option/ Lead Length/ Array] as FormOptionpub
        public string Matrix { get; set; }//B.Matrix as Matrix
        public string Description { get; set; }//B.[Description] as Description
        public string JEDEC_DWG_Or_ATMEL { get; set; }//B.[JEDEC DWG#  or ATMEL #] as JEDEC_DWG_Or_ATMEL
        public string Obsolete { get; set; }//B.Obsolete as Obsolete
        public string CSO { get; set; }//B.CSO as CSO
        public string SJO { get; set; }//B.SJO as SJO
        public string RFO { get; set; }//B.RFO as RFO
        public string NTO { get; set; }//B.NTO as NTO
        public string NTO_POD { get; set; }//B.[NTO POD] as NTO_POD
        public string Comments { get; set; }//B.Comments as Comments
        public string SJO_POD { get; set; }//B.SJO_POD as SJO_POD
        public string CSO_POD { get; set; }//B.CSO_POD as CSO_POD
        public string HNO_POD { get; set; }//B.HNO_POD as HNO_POD
        public string ColX { get; set; }//B.ColX as ColX
    }
}

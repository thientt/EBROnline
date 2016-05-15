using EBROnline.Model.DTO;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace EBROnline.ViewModel
{
    public class DeviceDetailsViewModel : BaseDto
    {
        public string FARNumber { get; set; }

        [Required]
        public int MasterId { get; set; }

        [Required(ErrorMessage = "LotNo is required!")]
        [StringLength(20, ErrorMessage = "Max length of Lotno is 20 chars!")]
        public string LotNo { get; set; }

        [StringLength(25, ErrorMessage = "Max length of MfgPartNo is 25 chars!")]
        public string MfgPartNo { get; set; }

        [StringLength(50, ErrorMessage = "Max length of Technology is 50 chars!")]
        public string Technology { get; set; }

        [Required(ErrorMessage = "Please the option Packge type!")]
        public int PackageTypeId { get; set; }
        public IEnumerable<MSTMarkingInstructionDto> PackgeTypes { get; set; }

        [Required(ErrorMessage = "Please the option Assembly type!")]
        public int AssembliesTypeId { get; set; }
        public IEnumerable<MSTPKGProcessTypeDto> AssembliesTypes { get; set; }

        [Required(ErrorMessage = "Please the option Fab Site!")]
        public int FabSiteId { get; set; }
        public IEnumerable<MSTAssLocDto> FabSites { get; set; }

        [Required(ErrorMessage = "Please the option FA Service")]
        public int ServiceId { get; set; }
        public IEnumerable<MSTMarkingSLDto> Services { get; set; }

        [StringLength(4, ErrorMessage = "Max length of DateCode is 4 chars!")]
        public string DateCode { get; set; }
        public int? Quantity { get; set; }

        //[StringLength(10, ErrorMessage = "Max length of Stage is 10 chars!")]
        //public bool Stage { get; set; }

        [Required]
        public int StageId { get; set; }
    }
}
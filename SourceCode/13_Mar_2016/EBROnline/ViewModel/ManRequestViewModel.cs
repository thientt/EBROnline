using EBROnline.Model.DTO;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Web;

namespace EBROnline.ViewModel
{
    public class ManRequestViewModel : BaseDto
    {
        [Display(Name = "FAR Number")]
        public string FARNumber { get; set; }

        [Display(Name = "Reference No. ")]
        public string RefNo { get; set; }

        [Display(Name = "Failure Rate ")]
        public byte FailureRate { get; set; }

        [Display(Name = "Request Date ")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:MM/dd/yyyy}")]
        public DateTime RequestDate { get; set; }

        [Display(Name = "Samples Arrived Date ")]
        public DateTime? SamplesArriveDate { get; set; }

        [Display(Name = "Initial Report Target Date ")]
        public DateTime? InitialReportTargetDate { get; set; }

        [Display(Name = "Final Report Target Date ")]
        public DateTime? FinalReportTargetDate { get; set; }

        [Display(Name = "Failure Description ")]
        public string FailureDesc { get; set; }

        public int OriginId { get; set; }
        public IEnumerable<MSTFabCodeDto> Origins { get; set; }

        public int StatusId { get; set; }
        [Display(Name = "Status")]
        public IEnumerable<MSTOwnerDto> Status { get; set; }

        public int BUId { get; set; }
        [Display(Name = "Business Unit")]
        public IEnumerable<MSTBuildReasonDto> BUs { get; set; }

        public int FailureTypeId { get; set; }
        [Display(Name = "Failure Type ")]
        public IEnumerable<MSTPackageTestTypeDto> FailureTypes { get; set; }

        public int FailureOriginId { get; set; }
        [Display(Name = "Failure Origin")]
        public IEnumerable<MSTEmailAddressDto> FailureOrigins { get; set; }

        public int ProductId { get; set; }
        [Display(Name = "Product Line ")]
        public IEnumerable<MSTProductDto> Products { get; set; }

        [Required(ErrorMessage = "Please the option Priority value!")]
        public int PriorityId { get; set; }
        [Display(Name = "Priority ")]
        public IEnumerable<MSTPackageDto> Priorities { get; set; }

        [Display(Name = "Requestor")]
        public string Requestor { get; set; }

        [Display(Name = "Requestor Site ")]
        public string Site { get; set; }

        public bool Submitted { get; set; }

        [Display(Name = "Analyst")]
        public string Analyst { get; set; }

        [Required(ErrorMessage = "Please the option analyst")]
        public int UserId { get; set; }
        [Display(Name = "FA Analyst ")]
        public IEnumerable<SYSUsersDto> Users { get; set; }

        public int ReasonId { get; set; }
        public IEnumerable<DelayReasonDto> Reasons { get; set; }

        public string Reports { get; set; }
    }
}
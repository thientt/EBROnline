﻿using EBROnline.Model.DTO;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Web;

namespace EBROnline.ViewModel
{
    public class FARRequestViewModel : BaseDto
    {
        [Display(Name = "FAR Number")]
        public string FARNumber { get; set; }

        [Required(ErrorMessage = "Please enter Reference No value!")]
        [Display(Name = "Reference No. ")]
        public string RefNo { get; set; }

        [Display(Name = "Failure Rate ")]
        [Required(ErrorMessage = "Please enter value for Failure Rate!", AllowEmptyStrings = false)]
        [Range(1, 100, ErrorMessage = "Value of Failure Rate from 1% to 100%")]
        public byte FailureRate { get; set; }

        private DateTime requestDate = DateTime.Now;
        [Display(Name = "Request Date ")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:MM/dd/yyyy}")]
        public DateTime RequestDate
        {
            get
            {
                return requestDate;
            }
            set
            {
                requestDate = value;
            }
        }

        [Display(Name = "Samples Arrived Date ")]
        public DateTime? SamplesArriveDate { get; set; }

        [Display(Name = "Initial Report Target Date ")]
        [DataType(DataType.DateTime)]
        public DateTime? InitialReportTargetDate { get; set; }

        [Display(Name = "Final Report Target Date ")]
        [DataType(DataType.DateTime)]
        public DateTime? FinalReportTargetDate { get; set; }

        [Display(Name = "Failure Description ")]
        [Required(ErrorMessage = "Please enter value for Failure Description")]
        [StringLength(250, MinimumLength = 10, ErrorMessage = "Please enter value for Failure Description with max length 250 chars and min 10 chars!")]
        public string FailureDesc { get; set; }

        [Required(ErrorMessage = "Please the options Origin type")]
        public int OriginId { get; set; }
        public IEnumerable<MSTFabCodeDto> Origins { get; set; }

        [Required(ErrorMessage = "Please the options status type")]
        public int StatusId { get; set; }
        [Display(Name = "Status")]
        public IEnumerable<MSTOwnerDto> Status { get; set; }

        [Required(ErrorMessage = "Please the options business unit type")]
        public int BUId { get; set; }
        [Display(Name = "Business Unit")]
        public IEnumerable<MSTBuildReasonDto> BUs { get; set; }

        [Required(ErrorMessage = "Please the option Failure Type")]
        public int FailureTypeId { get; set; }
        [Display(Name = "Failure Type ")]
        public IEnumerable<MSTPackageTestTypeDto> FailureTypes { get; set; }

        [Required(ErrorMessage = "Please the option Failure Origin")]
        public int FailureOriginId { get; set; }
        [Display(Name = "Failure Origin")]
        public IEnumerable<MSTEmailAddressDto> FailureOrigins { get; set; }

        [Required(ErrorMessage = "Please the options product type")]
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

        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:MM/dd/yyyy}")]
        public DateTime Now
        {
            get
            {
                return DateTime.Now;
            }
        }

        /// <summary>
        /// Gets or sets a value indicating whether this <see cref="FARRequestViewModel"/> is submitted.
        /// </summary>
        /// <value>
        ///   <c>true</c> if submitted; otherwise, <c>false</c>.
        /// </value>
        public bool Submitted { get; set; }

        /// <summary>
        /// Gets or sets the analyst.
        /// </summary>
        /// <value>
        /// The analyst.
        /// </value>
        [Display(Name = "Analyst")]
        public string Analyst { get; set; }

        //public HttpPostedFileBase File { get; set; }

        /*Add 24-Oct-15*/
        /// <summary>
        /// Gets or sets the customer.
        /// </summary>
        /// <value>
        /// The customer.
        /// </value>
        [Display(Name = "Customer")]
        public string Customer { get; set; }

        /*Add 24-Oct-15*/
        /// <summary>
        /// Gets or sets the lab site.
        /// </summary>
        /// <value>
        /// The lab site.
        /// </value>
        [Display(Name = "Lab Site")]
        public int LabSiteId { get; set; }

        /// <summary>
        /// Gets or sets the lab sites.
        /// </summary>
        /// <value>
        /// The lab sites.
        /// </value>
        public IEnumerable<MSTFGLocationDto> LabSites { get; set; }

        public string Gu
        {
            get;
            set;
        }
    }
}
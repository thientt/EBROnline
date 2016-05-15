using EBROnline.Model.DTO;
using System.ComponentModel.DataAnnotations;

namespace EBROnline.ViewModel
{
    public class DelayReasonViewModel : BaseDto
    {
        [Required]
        [StringLength(255, ErrorMessage = "Max length max is 255")]
        public string Description { get; set; }
    }
}
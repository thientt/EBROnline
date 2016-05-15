using EBROnline.Model.DTO;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;

namespace EBROnline.ViewModel
{
    public class RegisterViewModel
    {
        [Required, Display(Name = "First Name"), StringLength(50, MinimumLength = 1, ErrorMessage = "FirstName length in the range 1 to 50 char")]
        public string FirstName { get; set; }

        [Required, Display(Name = "Last Name"), StringLength(50, MinimumLength = 1, ErrorMessage = "FirstName length in the range 1 to 50 char")]
        public string LastName { get; set; }

        [Required, EmailAddress, Display(Name = "Email"), StringLength(50, MinimumLength = 3)]
        public string Email { get; set; }

        [Display(Name = "Password")]
        [Required, StringLength(25, MinimumLength = 6, ErrorMessage = "Password length in the range 6 to 25 char")]
        [DataType(DataType.Password)]
        public string Password { get; set; }

        [Display(Name = "Confirm Password")]
        [Required, StringLength(25, MinimumLength = 6, ErrorMessage = "Password length in the range 6 to 25 char")]
        [Compare("Password")]
        [DataType(DataType.Password)]
        public string ConfirmPassword { get; set; }
    }
}
using EBROnline.Model.DTO;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace EBROnline.ViewModel
{
    public class UserViewModel : BaseDto
    {
        [Required]
        public string Email { get; set; }

        public string Salt { get; set; }

        public DateTime RegistedDate { get; set; }

        public bool IsLocked { get; set; }

        public string Lastname { get; set; }

        public string Firstname { get; set; }

        public string Phone { get; set; }

        public int DepartmentId { get; set; }

        public int SiteId { get; set; }

        public int RoleId { get; set; }

        public DateTime? LastLoginDate { get; set; }
        public string FullName
        {
            get
            {
                return Firstname + " " + Lastname;
            }

        }
        public IEnumerable<SYSRolesDto> Roles { get; set; }
    }
}
using EBROnline.Model.DTO;
using System.Collections.Generic;

namespace EBROnline.ViewModel
{
    public class PrintViewModel
    {
        public EBRMasterDto Master { get; set; }
        public IEnumerable<EBRSubMasterDto> SubMaster { get; set; }
    }
}
using EBROnline.Model.DTO;
using System.Collections.Generic;

namespace EBROnline.Model.Abstracts
{
    public interface ISNPFullMDRepository
    {
        IEnumerable<string> SearchCNP(string cnp);

        IEnumerable<string> SearchSLCode(string cnp, string sl);

        vEBR_CPN_LIST GetEBR(string cnp, string sl);
    }
}

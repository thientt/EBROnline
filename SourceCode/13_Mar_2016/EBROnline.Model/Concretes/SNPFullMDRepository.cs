using EBROnline.Model.Abstracts;
using EBROnline.Model.DTO;
using EBROnline.Model.Entities;
using EBROnline.Utilities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EBROnline.Model.Concretes
{
    public class SNPFullMDRepository : ISNPFullMDRepository
    {
        /// <summary>
        /// The _log service
        /// </summary>
        private ILogService _logService;

        /// <summary>
        /// Initializes a new instance of the <see cref="SYSRolesRepository"/> class.
        /// </summary>
        /// <param name="logService">The log service.</param>
        public SNPFullMDRepository(ILogService logService)
        {
            this._logService = logService;
        }

        /// <summary>
        /// Search list cnp by contain it.
        /// </summary>
        /// <param name="cnp"></param>
        /// <returns></returns>
        public IEnumerable<string> SearchCNP(string cnp)
        {
            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    StringBuilder sqlCommand = new StringBuilder();
                    sqlCommand.Append("SELECT DISTINCT TOP 100 A.CPN FROM SNP_ZFULLMD A LEFT OUTER JOIN GPC_TEMP B on A.GPC = B.[Global Package Code (GPC)] WHERE LEN(A.CPN) > 1");
                    sqlCommand.AppendFormat(" AND A.CPN LIKE '{0}%'", cnp);
                    return context.Database.SqlQuery<string>(sqlCommand.ToString()).ToList<string>();
                }
            }
            catch (Exception ex)
            {
                _logService.Error(ex.Message, ex);
                return null;
            }
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="cnp"></param>
        /// <param name="sl"></param>
        /// <returns></returns>
        public IEnumerable<string> SearchSLCode(string cnp, string sl)
        {
            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    StringBuilder sqlCommand = new StringBuilder();
                    sqlCommand.Append("SELECT DISTINCT TOP 100 A.SL FROM SNP_ZFULLMD A LEFT OUTER JOIN GPC_TEMP B on A.GPC = B.[Global Package Code (GPC)] WHERE LEN(A.CPN) > 1");
                    sqlCommand.AppendFormat(" AND A.CPN = '{0}' AND A.SL LIKE '{1}%'", cnp, sl);
                    return context.Database.SqlQuery<string>(sqlCommand.ToString()).ToList<string>();
                }
            }
            catch (Exception ex)
            {
                _logService.Error(ex.Message, ex);
                return null;
            }
        }

        public vEBR_CPN_LIST GetEBR(string cnp, string sl)
        {
            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    StringBuilder sqlCommand = new StringBuilder();
                    sqlCommand.Append(" SELECT DISTINCT TOP 1 A.CPN as CNP, A.SL as SL, A.product as Product, A.phase as Phase, A.GPC as GPC,");
                    sqlCommand.Append(" B.ColA as ColA, B.[Global Package Code (GPC)] as GlobalPackageCode,B.[Package Family] as PackageFamily, ");
                    sqlCommand.Append(" B.[Lead Count] as LeadCount, B.[Body  X Dim] as BodyXDim,B.[Size Y Dim] as SizeYDim, ");
                    sqlCommand.Append(" B.[Body Thickness] as BodyThickness,B.[Lead Pitch] as LeadPitch,B.[Form Option/ Lead Length/ Array] as FormOption,");
                    sqlCommand.Append(" B.Matrix as Matrix,B.[Description] as Description, B.[JEDEC DWG#  or ATMEL #] as JEDEC_DWG_Or_ATMEL,");
                    sqlCommand.Append(" B.Obsolete as Obsolete,B.CSO as CSO,B.SJO as SJO, B.RFO as RFO, B.NTO as NTO,B.[NTO POD] as NTO_POD,");
                    sqlCommand.Append(" B.Comments as Comments, B.SJO_POD as SJO_POD, B.CSO_POD as CSO_POD,B.HNO_POD as HNO_POD,B.ColX as ColX");
                    sqlCommand.Append("    FROM SNP_ZFULLMD A left outer join GPC_TEMP B ON A. GPC = B.[Global Package Code (GPC)]");
                    sqlCommand.Append("    WHERE LEN(A.CPN) > 1");
                    sqlCommand.AppendFormat("    AND A.CPN = '{0}' AND A.SL = '{1}'", cnp, sl);

                    return context.Database.SqlQuery<vEBR_CPN_LIST>(sqlCommand.ToString()).FirstOrDefault();
                }
            }
            catch (Exception ex)
            {
                _logService.Error(ex.Message, ex);
                return null;
            }
        }
    }
}

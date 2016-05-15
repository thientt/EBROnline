using EBROnline.Model.Abstracts;
using EBROnline.Model.DTO;
using EBROnline.Model.Entities;
using EBROnline.Model.Types;
using EBROnline.Utilities;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;

/// <summary>
/// 
/// </summary>
namespace EBROnline.Model.Concretes
{
    /// <summary>
    /// 
    /// </summary>
    public class MSTMarkingSLRepository :MSTRepository<EBR_MST_MarkingSL>, IMSTMarkingSLRepository{
        public MSTMarkingSLRepository (ILogService logService)
            : base(logService)
	{

	}}
}

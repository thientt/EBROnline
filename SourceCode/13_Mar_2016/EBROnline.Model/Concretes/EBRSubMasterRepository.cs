// ***********************************************************************
// Assembly         : EBROnline.Model
// Author           : tranthiencdsp@gmail.com
// Created          : 02-25-2016
//
// Last Modified By : tranthiencdsp@gmail.com
// Last Modified On : 03-15-2016
// ***********************************************************************
// <copyright file="EBRSubMasterRepository.cs" company="Atmel Corporation">
//     Copyright © Atmel 2016
// </copyright>
// <summary></summary>
// ***********************************************************************
using EBROnline.Model.Abstracts;
using EBROnline.Model.DTO;
using EBROnline.Model.Entities;
using EBROnline.Utilities;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;

/// <summary>
/// The Concretes namespace.
/// </summary>
namespace EBROnline.Model.Concretes
{
    /// <summary>
    /// Class EBRSubMasterRepository.
    /// </summary>
    public class EBRSubMasterRepository : IEBRSubMasterRepository
    {

        /// <summary>
        /// The _log service
        /// </summary>
        private ILogService _logService;

        /// <summary>
        /// Initializes a new instance of the <see cref="EBRSubMasterRepository" /> class.
        /// </summary>
        /// <param name="logService">The log service.</param>
        public EBRSubMasterRepository(ILogService logService)
        {
            this._logService = logService;
        }

        /// <summary>
        /// Gets all.
        /// </summary>
        /// <returns>IEnumerable&lt;EBRSubMasterDto&gt;.</returns>
        public IEnumerable<EBRSubMasterDto> GetAll()
        {
            IEnumerable<EBRSubMasterDto> result = null;

            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    result = (from item in context.EBR_SubDashboard
                              select new EBRSubMasterDto()
                              {
                                  Id = item.Id,
                                  StackDieId = item.StackDieId,
                                  StackDiePMPN = item.StackDiePMPN,
                                  StackDieQty = item.StackDieQty,
                                  StackDieWaferNumbers = item.StackDieWaferNumbers,
                                  BuildQty = item.BuildQty,
                                  Comment = item.Comment,
                                  DashboardId = item.DashBoardId,
                                  MES_Lot_Number = item.MES_Lot_Number,
                                  SAP_Batch_Lot_Number = item.SAP_Batch_Lot_Number,
                                  WaferQty = item.WaferQty
                              }).ToList();
                }
            }
            catch (Exception ex)
            {
                _logService.Error(ex.Message, ex);
            }

            return result;
        }

        /// <summary>
        /// get all as an asynchronous operation.
        /// </summary>
        /// <returns>Task&lt;IEnumerable&lt;EBRSubMasterDto&gt;&gt;.</returns>
        public async Task<IEnumerable<EBRSubMasterDto>> GetAllAsync()
        {
            IEnumerable<EBRSubMasterDto> result = null;

            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    result = await (from item in context.EBR_SubDashboard
                                    select new EBRSubMasterDto()
                                    {
                                        Id = item.Id,
                                        StackDieId = item.StackDieId,
                                        StackDiePMPN = item.StackDiePMPN,
                                        StackDieQty = item.StackDieQty,
                                        StackDieWaferNumbers = item.StackDieWaferNumbers,
                                        BuildQty = item.BuildQty,
                                        Comment = item.Comment,
                                        DashboardId = item.DashBoardId,
                                        MES_Lot_Number = item.MES_Lot_Number,
                                        SAP_Batch_Lot_Number = item.SAP_Batch_Lot_Number,
                                        WaferQty = item.WaferQty
                                    }).ToListAsync();
                }
            }
            catch (Exception ex)
            {
                _logService.Error(ex.Message, ex);
            }

            return result;
        }

        /// <summary>
        /// Gets the by identifier.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <returns>EBRSubMasterDto.</returns>
        public EBRSubMasterDto GetById(int id)
        {
            EBRSubMasterDto result = null;

            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    result = (from item in context.EBR_SubDashboard
                              where item.Id == id
                              select new EBRSubMasterDto()
                              {
                                  Id = item.Id,
                                  StackDieId = item.StackDieId,
                                  StackDiePMPN = item.StackDiePMPN,
                                  StackDieQty = item.StackDieQty,
                                  StackDieWaferNumbers = item.StackDieWaferNumbers,
                                  BuildQty = item.BuildQty,
                                  Comment = item.Comment,
                                  DashboardId = item.DashBoardId,
                                  MES_Lot_Number = item.MES_Lot_Number,
                                  SAP_Batch_Lot_Number = item.SAP_Batch_Lot_Number,
                                  WaferQty = item.WaferQty
                              }).Single();
                }
            }
            catch (Exception ex)
            {
                _logService.Error(ex.Message, ex);
            }

            return result;
        }

        /// <summary>
        /// get by identifier as an asynchronous operation.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <returns>Task&lt;EBRSubMasterDto&gt;.</returns>
        public async Task<EBRSubMasterDto> GetByIdAsync(int id)
        {
            EBRSubMasterDto result = null;

            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    result = await (from item in context.EBR_SubDashboard
                                    where item.Id == id
                                    select new EBRSubMasterDto()
                                    {
                                        Id = item.Id,
                                        StackDieId = item.StackDieId,
                                        StackDiePMPN = item.StackDiePMPN,
                                        StackDieQty = item.StackDieQty,
                                        StackDieWaferNumbers = item.StackDieWaferNumbers,
                                        BuildQty = item.BuildQty,
                                        Comment = item.Comment,
                                        DashboardId = item.DashBoardId,
                                        MES_Lot_Number = item.MES_Lot_Number,
                                        SAP_Batch_Lot_Number = item.SAP_Batch_Lot_Number,
                                        WaferQty = item.WaferQty
                                    }).SingleAsync();
                }
            }
            catch (Exception ex)
            {
                _logService.Error(ex.Message, ex);
            }

            return result;
        }

        /// <summary>
        /// Adds the specified entity.
        /// </summary>
        /// <param name="entity">The entity.</param>
        /// <returns>SaveResult.</returns>
        public SaveResult Add(EBRSubMasterDto entity)
        {
            var result = SaveResult.FAILURE;
            try
            {
                var item = ConvertTo(entity);
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    context.Entry<EBR_SubDashboard>(item).State = EntityState.Added;
                    result = context.SaveChanges() > 0 ? SaveResult.SUCCESS : SaveResult.FAILURE;
                }
            }
            catch (Exception ex)
            {
                _logService.Error(ex.Message, ex);
            }

            return result;
        }

        /// <summary>
        /// add as an asynchronous operation.
        /// </summary>
        /// <param name="entity">The entity.</param>
        /// <returns>Task&lt;SaveResult&gt;.</returns>
        public async Task<SaveResult> AddAsync(EBRSubMasterDto entity)
        {
            var result = SaveResult.FAILURE;
            try
            {
                var item = ConvertTo(entity);
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    context.Entry<EBR_SubDashboard>(item).State = EntityState.Added;
                    result = await context.SaveChangesAsync() > 0 ? SaveResult.SUCCESS : SaveResult.FAILURE;
                }
            }
            catch (Exception ex)
            {
                _logService.Error(ex.Message, ex);
            }

            return result;
        }

        /// <summary>
        /// Updates the specified entity.
        /// </summary>
        /// <param name="entity">The entity.</param>
        /// <returns>SaveResult.</returns>
        public SaveResult Update(EBRSubMasterDto entity)
        {
            var result = SaveResult.FAILURE;
            try
            {
                var item = ConvertTo(entity);
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    context.Entry<EBR_SubDashboard>(item).State = EntityState.Modified;
                    result = context.SaveChanges() > 0 ? SaveResult.SUCCESS : SaveResult.FAILURE;
                }
            }
            catch (Exception ex)
            {
                _logService.Error(ex.Message, ex);
            }

            return result;
        }

        /// <summary>
        /// update as an asynchronous operation.
        /// </summary>
        /// <param name="entity">The entity.</param>
        /// <returns>Task&lt;SaveResult&gt;.</returns>
        public async Task<SaveResult> UpdateAsync(EBRSubMasterDto entity)
        {
            var result = SaveResult.FAILURE;
            try
            {
                var item = ConvertTo(entity);
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    context.Entry<EBR_SubDashboard>(item).State = EntityState.Modified;
                    result = await context.SaveChangesAsync() > 0 ? SaveResult.SUCCESS : SaveResult.FAILURE;
                }
            }
            catch (Exception ex)
            {
                _logService.Error(ex.Message, ex);
            }

            return result;
        }

        #region Implement IDelete
        /// <summary>
        /// Deletes the specified entity.
        /// </summary>
        /// <param name="entity">The entity.</param>
        /// <returns></returns>
        public SaveResult Delete(EBRSubMasterDto entity)
        {
            var result = SaveResult.FAILURE;
            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    var obj = (from item in context.EBR_SubDashboard
                               where item.Id == entity.Id
                               select item).Single();

                    context.Entry(obj).State = EntityState.Deleted;
                    result = context.SaveChanges() > 0 ? SaveResult.SUCCESS : SaveResult.FAILURE;
                }
            }
            catch (Exception ex)
            {
                _logService.Error(ex.Message, ex);
            }
            return result;
        }

        /// <summary>
        /// Deletes the asynchronous.
        /// </summary>
        /// <param name="entity">The entity.</param>
        /// <returns></returns>
        public async Task<SaveResult> DeleteAsync(EBRSubMasterDto entity)
        {
            var result = SaveResult.FAILURE;
            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    var obj = (from item in context.EBR_SubDashboard
                               where item.Id == entity.Id
                               select item).Single();

                    context.Entry(obj).State = EntityState.Deleted;
                    result = await context.SaveChangesAsync() > 0 ? SaveResult.SUCCESS : SaveResult.FAILURE;
                }
            }
            catch (Exception ex)
            {
                _logService.Error(ex.Message, ex);
            }
            return result;
        }

        /// <summary>
        /// Deletes the by.
        /// </summary>
        /// <param name="Id">The identifier.</param>
        /// <returns></returns>
        public SaveResult DeleteBy(int Id)
        {
            var result = SaveResult.FAILURE;
            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    var obj = (from item in context.EBR_SubDashboard
                               where item.Id == Id
                               select item).Single();

                    context.Entry(obj).State = EntityState.Deleted;
                    result = context.SaveChanges() > 0 ? SaveResult.SUCCESS : SaveResult.FAILURE;
                }
            }
            catch (Exception ex)
            {
                _logService.Error(ex.Message, ex);
            }
            return result;
        }

        /// <summary>
        /// Deletes the by asynchronous.
        /// </summary>
        /// <param name="Id">The identifier.</param>
        /// <returns></returns>
        public async Task<SaveResult> DeleteByAsync(int Id)
        {
            var result = SaveResult.FAILURE;
            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    var obj = (from item in context.EBR_SubDashboard
                               where item.Id == Id
                               select item).Single();

                    context.Entry(obj).State = EntityState.Deleted;
                    result = await context.SaveChangesAsync() > 0 ? SaveResult.SUCCESS : SaveResult.FAILURE;
                }
            }
            catch (Exception ex)
            {
                _logService.Error(ex.Message, ex);
            }
            return result;
        }
        #endregion

        /// <summary>
        /// Gets the by parent identifier.
        /// </summary>
        /// <param name="idMaster">The identifier master.</param>
        /// <returns>IEnumerable&lt;EBRSubMasterDto&gt;.</returns>
        public IEnumerable<EBRSubMasterDto> GetByParentId(int idMaster)
        {
            IEnumerable<EBRSubMasterDto> results = null;

            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    results = (from item in context.EBR_SubDashboard
                               where item.DashBoardId == idMaster
                               select new EBRSubMasterDto()
                               {
                                   Id = item.Id,
                                   StackDieId = item.StackDieId,
                                   StackDiePMPN = item.StackDiePMPN,
                                   StackDieQty = item.StackDieQty,
                                   StackDieWaferNumbers = item.StackDieWaferNumbers,
                                   BuildQty = item.BuildQty,
                                   Comment = item.Comment,
                                   DashboardId = item.DashBoardId,
                                   MES_Lot_Number = item.MES_Lot_Number,
                                   SAP_Batch_Lot_Number = item.SAP_Batch_Lot_Number,
                                   WaferQty = item.WaferQty,
                                   Dashboard = new EBRMasterDto()
                                   {
                                       StatusType = (Types.StatusType)item.EBR_Dashboard.StatusType,
                                       LastUpdatedBy = item.EBR_Dashboard.LastUpdatedBy,
                                   }
                               }).ToList();
                }
            }
            catch (Exception ex)
            {
                _logService.Error(ex.Message, ex);
            }

            return results;
        }

        /// <summary>
        /// Gets the by parent identifier asynchronous.
        /// </summary>
        /// <param name="idMaster">The identifier master.</param>
        /// <returns>Task&lt;IEnumerable&lt;EBRSubMasterDto&gt;&gt;.</returns>
        public async Task<IEnumerable<EBRSubMasterDto>> GetByParentIdAsync(int idMaster)
        {
            IEnumerable<EBRSubMasterDto> results = null;

            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    results = await (from item in context.EBR_SubDashboard
                                     where item.DashBoardId == idMaster
                                     select new EBRSubMasterDto()
                                     {
                                         Id = item.Id,
                                         StackDieId = item.StackDieId,
                                         StackDiePMPN = item.StackDiePMPN,
                                         StackDieQty = item.StackDieQty,
                                         StackDieWaferNumbers = item.StackDieWaferNumbers,
                                         BuildQty = item.BuildQty,
                                         Comment = item.Comment,
                                         DashboardId = item.DashBoardId,
                                         MES_Lot_Number = item.MES_Lot_Number,
                                         SAP_Batch_Lot_Number = item.SAP_Batch_Lot_Number,
                                         WaferQty = item.WaferQty
                                     }).ToListAsync();
                }
            }
            catch (Exception ex)
            {
                _logService.Error(ex.Message, ex);
            }

            return results;
        }

        /// <summary>
        /// Converts to.
        /// </summary>
        /// <param name="item">The item.</param>
        /// <returns>EBR_SubDashboard.</returns>
        private EBR_SubDashboard ConvertTo(EBRSubMasterDto item)
        {
            return new EBR_SubDashboard()
            {
                Id = item.Id,
                StackDieId = item.StackDieId,
                StackDiePMPN = item.StackDiePMPN,
                StackDieQty = item.StackDieQty,
                StackDieWaferNumbers = item.StackDieWaferNumbers,
                BuildQty = item.BuildQty,
                Comment = item.Comment,
                DashBoardId = item.DashboardId,
                MES_Lot_Number = item.MES_Lot_Number,
                SAP_Batch_Lot_Number = item.SAP_Batch_Lot_Number,
                WaferQty = item.WaferQty
            };
        }
    }
}

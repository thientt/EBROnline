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
/// 
/// </summary>
namespace EBROnline.Model.Concretes
{
    /// <summary>
    /// 
    /// </summary>
    public class SYSRolesRepository : ISYSRolesRepository
    {
        /// <summary>
        /// The _log service
        /// </summary>
        private ILogService _logService;

        /// <summary>
        /// Initializes a new instance of the <see cref="SYSRolesRepository"/> class.
        /// </summary>
        /// <param name="logService">The log service.</param>
        public SYSRolesRepository(ILogService logService)
        {
            this._logService = logService;
        }

        /// <summary>
        /// Finds the specified identifier.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <returns></returns>
        public SYSRolesDto Single(int id)
        {
            SYSRolesDto result = null;
            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    result = (from item in context.EBR_SYS_Roles
                              where item.IsDeleted == false && item.Id == id
                              select new SYSRolesDto()
                              {
                                  Id = item.Id,
                                  Name = item.Name,
                                  Description = item.Description,
                                  IsDeleted = item.IsDeleted,
                                  LastUpdatedBy = item.LastUpdatedBy,
                                  LastUpdated = item.LastUpdated,
                              }).Single();
                }
            }
            catch (Exception ex)
            {
                _logService.Error(ex.Message, ex);
                result = null;
            }
            return result;
        }

        /// <summary>
        /// Finds the asynchronous.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <returns></returns>
        public async Task<SYSRolesDto> SingleAsync(int id)
        {
            SYSRolesDto result = null;
            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    result = await (from item in context.EBR_SYS_Roles
                                    where item.IsDeleted == false && item.Id == id
                                    select new SYSRolesDto()
                                    {
                                        Id = item.Id,
                                        Name = item.Name,
                                        Description = item.Description,
                                        IsDeleted = item.IsDeleted,
                                        LastUpdatedBy = item.LastUpdatedBy,
                                        LastUpdated = item.LastUpdated,
                                    }).SingleAsync();
                }
            }
            catch (Exception ex)
            {
                _logService.Error(ex.Message, ex);
                result = null;
            }
            return result;
        }

        /// <summary>
        /// Gets all.
        /// </summary>
        /// <returns></returns>
        public IEnumerable<SYSRolesDto> GetAll()
        {
            IEnumerable<SYSRolesDto> results = null;
            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    results = (from item in context.EBR_SYS_Roles
                               where item.IsDeleted == false
                               select new SYSRolesDto()
                               {
                                   Id = item.Id,
                                   Name = item.Name,
                                   Description = item.Description,
                                   IsDeleted = item.IsDeleted,
                                   LastUpdatedBy = item.LastUpdatedBy,
                                   LastUpdated = item.LastUpdated,
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
        /// Gets all asynchronous.
        /// </summary>
        /// <returns></returns>
        public async Task<IEnumerable<SYSRolesDto>> GetAllAsync()
        {
            IEnumerable<SYSRolesDto> results = null;
            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    results = await (from item in context.EBR_SYS_Roles
                                     where item.IsDeleted == false
                                     select new SYSRolesDto()
                                     {
                                         Id = item.Id,
                                         Name = item.Name,
                                         Description = item.Description,
                                         IsDeleted = item.IsDeleted,
                                         LastUpdatedBy = item.LastUpdatedBy,
                                         LastUpdated = item.LastUpdated,
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
        /// Updates the specified entity.
        /// </summary>
        /// <param name="entity">The entity.</param>
        /// <returns></returns>
        public SaveResult Update(SYSRolesDto entity)
        {
            SaveResult result = SaveResult.FAILURE;

            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    var role = context.EBR_SYS_Roles.Single(x => x.Id == entity.Id && x.IsDeleted == false);

                    role.Name = entity.Name;
                    role.IsDeleted = entity.IsDeleted;
                    role.Description = entity.Description;
                    role.LastUpdatedBy = entity.LastUpdatedBy;
                    role.LastUpdated = DateTime.Now;

                    context.Entry<EBR_SYS_Roles>(role).State = System.Data.Entity.EntityState.Modified;
                    result = context.SaveChanges() > 0 ? SaveResult.SUCCESS : SaveResult.FAILURE;
                }
            }
            catch (Exception ex)
            {
                _logService.Error(ex.Message, ex);
                result = SaveResult.FAILURE;
            }

            return result;
        }

        /// <summary>
        /// Updates the asynchronous.
        /// </summary>
        /// <param name="entity">The entity.</param>
        /// <returns></returns>
        public async Task<SaveResult> UpdateAsync(SYSRolesDto entity)
        {
            SaveResult result = SaveResult.FAILURE;

            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    var role = context.EBR_SYS_Roles.Single(x => x.Id == entity.Id && x.IsDeleted == false);

                    role.Name = entity.Name;
                    role.IsDeleted = entity.IsDeleted;
                    role.Description = entity.Description;
                    role.LastUpdatedBy = entity.LastUpdatedBy;
                    role.LastUpdated = DateTime.Now;

                    context.Entry<EBR_SYS_Roles>(role).State = System.Data.Entity.EntityState.Modified;
                    result = await context.SaveChangesAsync() > 0 ? SaveResult.SUCCESS : SaveResult.FAILURE;
                }
            }
            catch (Exception ex)
            {
                _logService.Error(ex.Message, ex);
                result = SaveResult.FAILURE;
            }

            return result;
        }

        /// <summary>
        /// Adds the specified entity.
        /// </summary>
        /// <param name="entity">The entity.</param>
        /// <returns></returns>
        public SaveResult Add(SYSRolesDto entity)
        {
            SaveResult result = SaveResult.FAILURE;
            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    EBR_SYS_Roles add = context.EBR_SYS_Roles.Create();

                    add.Description = entity.Description;
                    add.IsDeleted = false;
                    add.Name = entity.Name;
                    add.LastUpdatedBy = entity.LastUpdatedBy;
                    add.LastUpdated = DateTime.Now;

                    context.Entry<EBR_SYS_Roles>(add).State = System.Data.Entity.EntityState.Added;
                    result = context.SaveChanges() > 0 ? SaveResult.SUCCESS : SaveResult.FAILURE;
                }
            }
            catch (Exception ex)
            {
                _logService.Error(ex.Message, ex);
                result = SaveResult.FAILURE;
            }
            return result;
        }

        /// <summary>
        /// Adds the asynchronous.
        /// </summary>
        /// <param name="entity">The entity.</param>
        /// <returns></returns>
        public async Task<SaveResult> AddAsync(SYSRolesDto entity)
        {
            SaveResult result = SaveResult.FAILURE;
            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    EBR_SYS_Roles add = context.EBR_SYS_Roles.Create();

                    add.Description = entity.Description;
                    add.Name = entity.Name;
                    add.IsDeleted = false;
                    add.LastUpdatedBy = entity.LastUpdatedBy;
                    add.LastUpdated = DateTime.Now;

                    context.Entry<EBR_SYS_Roles>(add).State = System.Data.Entity.EntityState.Added;
                    result = await context.SaveChangesAsync() > 0 ? SaveResult.SUCCESS : SaveResult.FAILURE;
                }
            }
            catch (Exception ex)
            {
                _logService.Error(ex.Message, ex);
                result = SaveResult.FAILURE;
            }
            return result;
        }

        /// <summary>
        /// Adds the range.
        /// </summary>
        /// <param name="entities">The entities.</param>
        /// <returns></returns>
        public SaveResult AddRange(IEnumerable<SYSRolesDto> entities)
        {
            SaveResult result = SaveResult.FAILURE;
            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    EBR_SYS_Roles add = null;
                    foreach (var entity in entities)
                    {
                        add = context.EBR_SYS_Roles.Create();

                        add.Description = entity.Description;
                        add.IsDeleted = false;
                        add.Name = entity.Name;
                        add.LastUpdatedBy = entity.LastUpdatedBy;
                        add.LastUpdated = DateTime.Now;

                        context.Entry<EBR_SYS_Roles>(add).State = System.Data.Entity.EntityState.Added;
                    }
                    result = context.SaveChanges() > 0 ? SaveResult.SUCCESS : SaveResult.FAILURE;
                }
            }
            catch (Exception ex)
            {
                _logService.Error(ex.Message, ex);
                result = SaveResult.FAILURE;
            }
            return result;
        }

        /// <summary>
        /// Adds the range asynchronous.
        /// </summary>
        /// <param name="entities">The entities.</param>
        /// <returns></returns>
        public async Task<SaveResult> AddRangeAsync(IEnumerable<SYSRolesDto> entities)
        {
            SaveResult result = SaveResult.FAILURE;
            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    EBR_SYS_Roles add = null;
                    foreach (var entity in entities)
                    {
                        add = context.EBR_SYS_Roles.Create();

                        add.Description = entity.Description;
                        add.IsDeleted = false;
                        add.Name = entity.Name;
                        add.LastUpdatedBy = entity.LastUpdatedBy;
                        add.LastUpdated = DateTime.Now;

                        context.Entry<EBR_SYS_Roles>(add).State = System.Data.Entity.EntityState.Added;
                    }
                    result = await context.SaveChangesAsync() > 0 ? SaveResult.SUCCESS : SaveResult.FAILURE;
                }
            }
            catch (Exception ex)
            {
                _logService.Error(ex.Message, ex);
                result = SaveResult.FAILURE;
            }
            return result;
        }

        /// <summary>
        /// Deletes the specified entity.
        /// </summary>
        /// <param name="entity">The entity.</param>
        /// <returns></returns>
        public SaveResult Delete(SYSRolesDto entity)
        {
            SaveResult result = SaveResult.FAILURE;

            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    var role = context.EBR_SYS_Roles.Single(x => x.Id == entity.Id && x.IsDeleted == false);
                    role.IsDeleted = true;
                    role.LastUpdated = DateTime.Now;
                    role.LastUpdatedBy = entity.LastUpdatedBy;

                    context.Entry<EBR_SYS_Roles>(role).State = System.Data.Entity.EntityState.Modified;
                    result = context.SaveChanges() > 0 ? SaveResult.SUCCESS : SaveResult.FAILURE;
                }
            }
            catch (Exception ex)
            {
                _logService.Error(ex.Message, ex);
                result = SaveResult.FAILURE;
            }

            return result;
        }

        /// <summary>
        /// Deletes the asynchronous.
        /// </summary>
        /// <param name="entity">The entity.</param>
        /// <returns></returns>
        public async Task<SaveResult> DeleteAsync(SYSRolesDto entity)
        {
            SaveResult result = SaveResult.FAILURE;

            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    var role = context.EBR_SYS_Roles.Single(x => x.Id == entity.Id && x.IsDeleted == false);
                    role.IsDeleted = true;
                    role.LastUpdated = DateTime.Now;
                    role.LastUpdatedBy = entity.LastUpdatedBy;

                    context.Entry<EBR_SYS_Roles>(role).State = System.Data.Entity.EntityState.Modified;
                    result = await context.SaveChangesAsync() > 0 ? SaveResult.SUCCESS : SaveResult.FAILURE;
                }
            }
            catch (Exception ex)
            {
                _logService.Error(ex.Message, ex);
                result = SaveResult.FAILURE;
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
            SaveResult result = SaveResult.FAILURE;

            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    var role = context.EBR_SYS_Roles.Single(x => x.Id == Id && x.IsDeleted == false);
                    role.IsDeleted = true;
                    role.LastUpdated = DateTime.Now;

                    context.Entry<EBR_SYS_Roles>(role).State = System.Data.Entity.EntityState.Modified;
                    result = context.SaveChanges() > 0 ? SaveResult.SUCCESS : SaveResult.FAILURE;
                }
            }
            catch (Exception ex)
            {
                _logService.Error(ex.Message, ex);
                result = SaveResult.FAILURE;
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
            SaveResult result = SaveResult.FAILURE;

            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    var role = context.EBR_SYS_Roles.Single(x => x.Id == Id && x.IsDeleted == false);
                    role.IsDeleted = true;
                    role.LastUpdated = DateTime.Now;

                    context.Entry<EBR_SYS_Roles>(role).State = System.Data.Entity.EntityState.Modified;
                    result = await context.SaveChangesAsync() > 0 ? SaveResult.SUCCESS : SaveResult.FAILURE;
                }
            }
            catch (Exception ex)
            {
                _logService.Error(ex.Message, ex);
                result = SaveResult.FAILURE;
            }

            return result;
        }
    }
}

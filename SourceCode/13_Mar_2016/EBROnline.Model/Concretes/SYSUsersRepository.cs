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
    public class SYSUsersRepository : ISYSUsersRepository
    {
        #region Constructor
        /// <summary>
        /// The _log service
        /// </summary>
        private ILogService _logService;

        /// <summary>
        /// Initializes a new instance of the <see cref="SYSUsersRepository"/> class.
        /// </summary>
        /// <param name="logService">The log service.</param>
        public SYSUsersRepository(ILogService logService)
        {
            this._logService = logService;
        }
        #endregion

        #region Implement Single
        /// <summary>
        /// Finds the specified identifier.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <returns></returns>
        public SYSUsersDto Single(int id)
        {
            SYSUsersDto result = null;
            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    result = (from item in context.EBR_SYS_Users
                              where item.IsDeleted == false && item.Id == id
                              select new SYSUsersDto()
                              {
                                  Id = item.Id,
                                  Email = item.Email,
                                  Salt = item.Salt,
                                  RegistedDate = item.RegistedDate,
                                  Phone = item.Phone,
                                  IsLocked = item.IsLocked,
                                  Firstname = item.Firstname,
                                  Lastname = item.Lastname,
                                  RoleId = item.RoleId,
                                  Role = new SYSRolesDto() { Id = item.EBR_SYS_Roles.Id, Name = item.EBR_SYS_Roles.Name, Description = item.EBR_SYS_Roles.Description },
                                  LastLoginDate = item.LastLoginDate,
                                  IsDeleted = item.IsDeleted,
                                  IsConfirmedEmail = item.IsComfiredEmail,
                                  LastUpdatedBy = item.LastUpdatedBy,
                                  LastUpdated = item.LastUpdate,


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
        /// Finds the asynchronous.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <returns></returns>
        public async Task<SYSUsersDto> SingleAsync(int id)
        {
            SYSUsersDto result = null;
            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    result = await (from item in context.EBR_SYS_Users
                                    where item.IsDeleted == false && item.Id == id
                                    select new SYSUsersDto()
                                    {
                                        Id = item.Id,
                                        Email = item.Email,
                                        Salt = item.Salt,
                                        RegistedDate = item.RegistedDate,
                                        Phone = item.Phone,
                                        IsLocked = item.IsLocked,
                                        Firstname = item.Firstname,
                                        Lastname = item.Lastname,
                                        RoleId = item.RoleId,
                                        Role = new SYSRolesDto() { Id = item.EBR_SYS_Roles.Id, Name = item.EBR_SYS_Roles.Name, Description = item.EBR_SYS_Roles.Description },
                                        LastLoginDate = item.LastLoginDate,
                                        IsDeleted = item.IsDeleted,
                                        IsConfirmedEmail = item.IsComfiredEmail,
                                        LastUpdatedBy = item.LastUpdatedBy,
                                        LastUpdated = item.LastUpdate,


                                    }).SingleAsync();
                }
            }
            catch (Exception ex)
            {
                _logService.Error(ex.Message, ex);
            }
            return result;
        }
        #endregion

        #region Implement Get
        /// <summary>
        /// Gets all.
        /// </summary>
        /// <returns></returns>
        public IEnumerable<SYSUsersDto> GetAll()
        {
            IEnumerable<SYSUsersDto> results = null;
            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    results = (from item in context.EBR_SYS_Users
                               where item.IsDeleted == false
                               orderby item.Email
                               select new SYSUsersDto()
                               {
                                   Id = item.Id,
                                   Email = item.Email,
                                   Salt = item.Salt,
                                   RegistedDate = item.RegistedDate,
                                   Phone = item.Phone,
                                   IsLocked = item.IsLocked,
                                   Firstname = item.Firstname,
                                   Lastname = item.Lastname,
                                   RoleId = item.RoleId,
                                   Role = new SYSRolesDto() { Id = item.EBR_SYS_Roles.Id, Name = item.EBR_SYS_Roles.Name, Description = item.EBR_SYS_Roles.Description },
                                   LastLoginDate = item.LastLoginDate,
                                   IsDeleted = item.IsDeleted,
                                   IsConfirmedEmail = item.IsComfiredEmail,
                                   LastUpdatedBy = item.LastUpdatedBy,
                                   LastUpdated = item.LastUpdate,
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
        public async Task<IEnumerable<SYSUsersDto>> GetAllAsync()
        {
            IEnumerable<SYSUsersDto> results = null;
            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    results = await (from item in context.EBR_SYS_Users
                                     where item.IsDeleted == false
                                     orderby item.Email
                                     select new SYSUsersDto()
                                     {
                                         Id = item.Id,
                                         Email = item.Email,
                                         Salt = item.Salt,
                                         RegistedDate = item.RegistedDate,
                                         Phone = item.Phone,
                                         IsLocked = item.IsLocked,
                                         Firstname = item.Firstname,
                                         Lastname = item.Lastname,
                                         RoleId = item.RoleId,
                                         Role = new SYSRolesDto() { Id = item.EBR_SYS_Roles.Id, Name = item.EBR_SYS_Roles.Name, Description = item.EBR_SYS_Roles.Description },
                                         LastLoginDate = item.LastLoginDate,
                                         IsConfirmedEmail = item.IsComfiredEmail,
                                         IsDeleted = item.IsDeleted,
                                         LastUpdatedBy = item.LastUpdatedBy,
                                         LastUpdated = item.LastUpdate,
                                     }).ToListAsync();
                }
            }
            catch (Exception ex)
            {
                _logService.Error(ex.Message, ex);
            }
            return results;
        }
        #endregion

        #region Implement Update
        /// <summary>
        /// Updates the specified entity.
        /// </summary>
        /// <param name="entity">The entity.</param>
        /// <returns></returns>
        public SaveResult Update(SYSUsersDto entity)
        {
            SaveResult result = SaveResult.FAILURE;

            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    var update = context.EBR_SYS_Users.Single(x => x.Id == entity.Id && x.IsDeleted == false);

                    update.RoleId = entity.RoleId;
                    update.Salt = entity.Salt;
                    update.Phone = entity.Phone;
                    update.IsLocked = entity.IsLocked;
                    update.Firstname = entity.Firstname;
                    update.Lastname = entity.Lastname;
                    update.IsComfiredEmail = entity.IsConfirmedEmail;
                    update.RecoverPass = entity.RecoverPass;
                    update.Guid = entity.Guid;
                    update.IsDeleted = entity.IsDeleted;
                    update.LastUpdatedBy = entity.LastUpdatedBy;
                    update.LastUpdate = DateTime.Now;

                    context.Entry<EBR_SYS_Users>(update).State = System.Data.Entity.EntityState.Modified;
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
        public async Task<SaveResult> UpdateAsync(SYSUsersDto entity)
        {
            SaveResult result = SaveResult.FAILURE;

            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    var update = context.EBR_SYS_Users.Single(x => x.Id == entity.Id && x.IsDeleted == false);

                    update.Salt = entity.Salt;
                    update.RoleId = entity.RoleId;
                    update.Phone = entity.Phone;
                    update.IsLocked = entity.IsLocked;
                    update.Firstname = entity.Firstname;
                    update.Lastname = entity.Lastname;
                    update.IsComfiredEmail = entity.IsConfirmedEmail;
                    update.RecoverPass = entity.RecoverPass;
                    update.Guid = entity.Guid;
                    update.IsDeleted = entity.IsDeleted;
                    update.LastUpdatedBy = entity.LastUpdatedBy;
                    update.LastUpdate = DateTime.Now;

                    context.Entry<EBR_SYS_Users>(update).State = System.Data.Entity.EntityState.Modified;
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
        #endregion

        #region Implement Add
        /// <summary>
        /// Adds the specified entity.
        /// </summary>
        /// <param name="entity">The entity.</param>
        /// <returns></returns>
        public SaveResult Add(SYSUsersDto entity)
        {
            SaveResult result = SaveResult.FAILURE;
            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    EBR_SYS_Users add = context.EBR_SYS_Users.Create();

                    add.Email = entity.Email;
                    add.PasswordHash = AppCipher.EncryptCipher(entity.PasswordHash);
                    add.RecoverPass = entity.RecoverPass;
                    add.RoleId = entity.RoleId;
                    add.Salt = entity.Salt;
                    add.RegistedDate = entity.RegistedDate;
                    add.Phone = entity.Phone;
                    add.IsLocked = entity.IsLocked;
                    add.Firstname = entity.Firstname;
                    add.Lastname = entity.Lastname;
                    add.LastLoginDate = entity.LastLoginDate;
                    add.IsComfiredEmail = entity.IsConfirmedEmail;
                    add.Guid = entity.Guid;
                    add.IsDeleted = entity.IsDeleted;
                    add.LastUpdatedBy = entity.LastUpdatedBy;
                    add.LastUpdate = DateTime.Now;

                    context.Entry<EBR_SYS_Users>(add).State = System.Data.Entity.EntityState.Added;
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
        public async Task<SaveResult> AddAsync(SYSUsersDto entity)
        {
            SaveResult result = SaveResult.FAILURE;
            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    EBR_SYS_Users add = context.EBR_SYS_Users.Create();

                    add.Email = entity.Email;
                    add.PasswordHash = AppCipher.EncryptCipher(entity.PasswordHash);
                    add.RecoverPass = entity.RecoverPass;
                    add.RoleId = entity.RoleId;
                    add.Salt = entity.Salt;
                    add.RegistedDate = entity.RegistedDate;
                    add.Phone = entity.Phone;
                    add.IsLocked = entity.IsLocked;
                    add.Firstname = entity.Firstname;
                    add.Lastname = entity.Lastname;
                    add.LastLoginDate = entity.LastLoginDate;
                    add.IsComfiredEmail = entity.IsConfirmedEmail;
                    add.Guid = entity.Guid;
                    add.IsDeleted = entity.IsDeleted;
                    add.LastUpdatedBy = entity.LastUpdatedBy;
                    add.LastUpdate = DateTime.Now;

                    context.Entry<EBR_SYS_Users>(add).State = System.Data.Entity.EntityState.Added;
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
        public SaveResult AddRange(IEnumerable<SYSUsersDto> entities)
        {
            SaveResult result = SaveResult.FAILURE;
            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    EBR_SYS_Users add = null;
                    foreach (var entity in entities)
                    {
                        add = context.EBR_SYS_Users.Create();

                        add.Email = entity.Email;
                        add.PasswordHash = AppCipher.EncryptCipher(entity.PasswordHash);
                        add.RecoverPass = entity.RecoverPass;
                        add.RoleId = entity.RoleId;
                        add.Salt = entity.Salt;
                        add.RegistedDate = entity.RegistedDate;
                        add.Phone = entity.Phone;
                        add.IsLocked = entity.IsLocked;
                        add.Firstname = entity.Firstname;
                        add.Lastname = entity.Lastname;
                        add.LastLoginDate = entity.LastLoginDate;
                        add.IsComfiredEmail = entity.IsConfirmedEmail;
                        add.Guid = entity.Guid;
                        add.IsDeleted = entity.IsDeleted;
                        add.LastUpdatedBy = entity.LastUpdatedBy;
                        add.LastUpdate = DateTime.Now;

                        context.Entry<EBR_SYS_Users>(add).State = System.Data.Entity.EntityState.Added;
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
        public async Task<SaveResult> AddRangeAsync(IEnumerable<SYSUsersDto> entities)
        {
            SaveResult result = SaveResult.FAILURE;
            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    EBR_SYS_Users add = null;
                    foreach (var entity in entities)
                    {
                        add = context.EBR_SYS_Users.Create();

                        add.Email = entity.Email;
                        add.PasswordHash = AppCipher.EncryptCipher(entity.PasswordHash);
                        add.RecoverPass = entity.RecoverPass;
                        add.RoleId = entity.RoleId;
                        add.Salt = entity.Salt;
                        add.RegistedDate = entity.RegistedDate;
                        add.Phone = entity.Phone;
                        add.IsLocked = entity.IsLocked;
                        add.Firstname = entity.Firstname;
                        add.Lastname = entity.Lastname;
                        add.LastLoginDate = entity.LastLoginDate;
                        add.IsComfiredEmail = entity.IsConfirmedEmail;
                        add.Guid = entity.Guid;
                        add.IsDeleted = entity.IsDeleted;
                        add.LastUpdatedBy = entity.LastUpdatedBy;
                        add.LastUpdate = DateTime.Now;

                        context.Entry<EBR_SYS_Users>(add).State = System.Data.Entity.EntityState.Added;
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
        #endregion

        #region Implement Delete
        /// <summary>
        /// Deletes the specified entity.
        /// </summary>
        /// <param name="entity">The entity.</param>
        /// <returns></returns>
        public SaveResult Delete(SYSUsersDto entity)
        {
            SaveResult result = SaveResult.FAILURE;

            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    var assembly = context.EBR_SYS_Users.Single(x => x.Id == entity.Id && x.IsDeleted == false);
                    assembly.IsDeleted = true;

                    context.Entry<EBR_SYS_Users>(assembly).State = System.Data.Entity.EntityState.Modified;
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
        public async Task<SaveResult> DeleteAsync(SYSUsersDto entity)
        {
            SaveResult result = SaveResult.FAILURE;

            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    var assembly = context.EBR_SYS_Users.Single(x => x.Id == entity.Id && x.IsDeleted == false);
                    assembly.IsDeleted = true;

                    context.Entry<EBR_SYS_Users>(assembly).State = System.Data.Entity.EntityState.Modified;
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
                    var assembly = context.EBR_SYS_Users.Single(x => x.Id == Id && x.IsDeleted == false);
                    assembly.IsDeleted = true;

                    context.Entry<EBR_SYS_Users>(assembly).State = System.Data.Entity.EntityState.Modified;
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
                    var assembly = context.EBR_SYS_Users.Single(x => x.Id == Id && x.IsDeleted == false);
                    assembly.IsDeleted = true;

                    context.Entry<EBR_SYS_Users>(assembly).State = System.Data.Entity.EntityState.Modified;
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
        #endregion

        #region Implement Login
        /// <summary>
        /// Logins the specified email.
        /// </summary>
        /// <param name="email">The email.</param>
        /// <param name="password">The password.</param>
        /// <returns></returns>
        public SYSUsersDto Login(string email, string password)
        {
            SYSUsersDto result = null;

            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    string passHash = AppCipher.EncryptCipher(password);
                    result = (from item in context.EBR_SYS_Users
                              where item.Email == email &&
                              item.PasswordHash == passHash
                              select new SYSUsersDto()
                              {
                                  Id = item.Id,
                                  Email = item.Email,
                                  Firstname = item.Firstname,
                                  Lastname = item.Lastname,
                                  Phone = item.Phone,
                                  RegistedDate = item.RegistedDate,
                                  Salt = item.Salt,
                                  IsConfirmedEmail = item.IsComfiredEmail,
                                  RoleId = item.RoleId,
                                  Role = new SYSRolesDto() { Id = item.EBR_SYS_Roles.Id, Name = item.EBR_SYS_Roles.Name, Description = item.EBR_SYS_Roles.Description },
                              }).Single();

                    try
                    {
                        var updateLogin = context.EBR_SYS_Users.Single(x => x.Id == result.Id);
                        updateLogin.LastLoginDate = DateTime.Now;

                        context.Entry<EBR_SYS_Users>(updateLogin).State = EntityState.Modified;
                        context.SaveChanges();
                    }
                    catch (Exception up)
                    {
                        _logService.Error(up.Message, up);
                    }
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
        /// Logins the asynchronous.
        /// </summary>
        /// <param name="email">The email.</param>
        /// <param name="password">The password.</param>
        /// <returns></returns>
        public async Task<SYSUsersDto> LoginAsync(string email, string password)
        {
            SYSUsersDto result = null;

            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    string passHash = AppCipher.EncryptCipher(password);
                    result = await (from item in context.EBR_SYS_Users
                                    where item.Email == email &&
                                    item.PasswordHash == passHash
                                    select new SYSUsersDto()
                                    {
                                        Id = item.Id,
                                        Email = item.Email,
                                        Firstname = item.Firstname,
                                        Lastname = item.Lastname,
                                        Phone = item.Phone,
                                        RegistedDate = item.RegistedDate,
                                        Salt = item.Salt,
                                        IsConfirmedEmail = item.IsComfiredEmail,
                                        RoleId = item.RoleId,
                                        Role = new SYSRolesDto() { Id = item.EBR_SYS_Roles.Id, Name = item.EBR_SYS_Roles.Name, Description = item.EBR_SYS_Roles.Description },
                                    }).SingleAsync();
                    try
                    {
                        var updateLogin = context.EBR_SYS_Users.Single(x => x.Id == result.Id);
                        updateLogin.LastLoginDate = DateTime.Now;

                        context.Entry<EBR_SYS_Users>(updateLogin).State = EntityState.Modified;
                        context.SaveChanges();
                    }
                    catch (Exception up)
                    {
                        _logService.Error(up.Message, up);
                    }
                }
            }
            catch (Exception ex)
            {
                _logService.Error(ex.Message, ex);
                result = null;
            }

            return result;
        }
        #endregion

        #region Implmenet Unlock and Lock
        /// <summary>
        /// Unlockeds the specified identifier.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <returns></returns>
        public SaveResult Unlocked(int id)
        {
            SaveResult result = SaveResult.FAILURE;

            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    var assembly = context.EBR_SYS_Users.Single(x => x.Id == id && x.IsDeleted == false);

                    assembly.IsLocked = false;
                    assembly.LastUpdate = DateTime.Now;

                    context.Entry<EBR_SYS_Users>(assembly).State = System.Data.Entity.EntityState.Modified;
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
        /// Lockeds the specified identifier.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <returns></returns>
        public SaveResult Locked(int id)
        {
            SaveResult result = SaveResult.FAILURE;

            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    var assembly = context.EBR_SYS_Users.Single(x => x.Id == id && x.IsDeleted == false);

                    assembly.IsLocked = true;
                    assembly.LastUpdate = DateTime.Now;

                    context.Entry<EBR_SYS_Users>(assembly).State = System.Data.Entity.EntityState.Modified;
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
        /// Unlockeds the asynchronous.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <returns></returns>
        public async Task<SaveResult> UnlockedAsync(int id)
        {
            SaveResult result = SaveResult.FAILURE;

            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    var assembly = context.EBR_SYS_Users.Single(x => x.Id == id && x.IsDeleted == false);

                    assembly.IsLocked = false;
                    assembly.LastUpdate = DateTime.Now;

                    context.Entry<EBR_SYS_Users>(assembly).State = System.Data.Entity.EntityState.Modified;
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
        /// Lockeds the asynchronous.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <returns></returns>
        public async Task<SaveResult> LockedAsync(int id)
        {
            SaveResult result = SaveResult.FAILURE;

            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    var assembly = context.EBR_SYS_Users.Single(x => x.Id == id && x.IsDeleted == false);

                    assembly.IsLocked = true;
                    assembly.LastUpdate = DateTime.Now;

                    context.Entry<EBR_SYS_Users>(assembly).State = System.Data.Entity.EntityState.Modified;
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
        /// Gets all unlocked.
        /// </summary>
        /// <returns></returns>
        public IEnumerable<SYSUsersDto> FindAllUnlocked()
        {
            IEnumerable<SYSUsersDto> results = null;
            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    results = (from item in context.EBR_SYS_Users
                               where item.IsDeleted == false && item.IsLocked == false
                               select new SYSUsersDto()
                               {
                                   Id = item.Id,
                                   Email = item.Email,
                                   Salt = item.Salt,
                                   RegistedDate = item.RegistedDate,
                                   Phone = item.Phone,
                                   IsLocked = item.IsLocked,
                                   Firstname = item.Firstname,
                                   Lastname = item.Lastname,
                                   LastLoginDate = item.LastLoginDate,
                                   IsDeleted = item.IsDeleted,
                                   LastUpdatedBy = item.LastUpdatedBy,
                                   LastUpdated = item.LastUpdate,


                               });
                }
            }
            catch (Exception ex)
            {
                _logService.Error(ex.Message, ex);
                results = null;
            }
            return results;
        }

        /// <summary>
        /// Gets all unlocked asynchronous.
        /// </summary>
        /// <returns></returns>
        public async Task<IEnumerable<SYSUsersDto>> FindAllUnlockedAsync()
        {
            IEnumerable<SYSUsersDto> results = null;
            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    results = await (from item in context.EBR_SYS_Users
                                     where item.IsDeleted == false && item.IsLocked == false
                                     select new SYSUsersDto()
                                     {
                                         Id = item.Id,
                                         Email = item.Email,
                                         Salt = item.Salt,
                                         RegistedDate = item.RegistedDate,
                                         Phone = item.Phone,
                                         IsLocked = item.IsLocked,
                                         Firstname = item.Firstname,
                                         Lastname = item.Lastname,
                                         LastLoginDate = item.LastLoginDate,
                                         IsDeleted = item.IsDeleted,
                                         LastUpdatedBy = item.LastUpdatedBy,
                                         LastUpdated = item.LastUpdate,


                                     }).ToListAsync();
                }
            }
            catch (Exception ex)
            {
                _logService.Error(ex.Message, ex);
                results = null;
            }
            return results;
        }

        /// <summary>
        /// Gets all locked.
        /// </summary>
        /// <returns></returns>
        public IEnumerable<SYSUsersDto> FindAllLocked()
        {
            IEnumerable<SYSUsersDto> results = null;
            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    results = (from item in context.EBR_SYS_Users
                               where item.IsDeleted == false && item.IsLocked == true
                               select new SYSUsersDto()
                               {
                                   Id = item.Id,
                                   Email = item.Email,
                                   Salt = item.Salt,
                                   RegistedDate = item.RegistedDate,
                                   Phone = item.Phone,
                                   IsLocked = item.IsLocked,
                                   Firstname = item.Firstname,
                                   Lastname = item.Lastname,
                                   LastLoginDate = item.LastLoginDate,
                                   IsDeleted = item.IsDeleted,
                                   LastUpdatedBy = item.LastUpdatedBy,
                                   LastUpdated = item.LastUpdate,


                               });
                }
            }
            catch (Exception ex)
            {
                _logService.Error(ex.Message, ex);
                results = null;
            }
            return results;
        }

        /// <summary>
        /// Gets all locked asynchronous.
        /// </summary>
        /// <returns></returns>
        public async Task<IEnumerable<SYSUsersDto>> FindAllLockedAsync()
        {
            IEnumerable<SYSUsersDto> results = null;
            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    results = await (from item in context.EBR_SYS_Users
                                     where item.IsDeleted == false && item.IsLocked == true
                                     select new SYSUsersDto()
                                     {
                                         Id = item.Id,
                                         Email = item.Email,
                                         Salt = item.Salt,
                                         RegistedDate = item.RegistedDate,
                                         Phone = item.Phone,
                                         IsLocked = item.IsLocked,
                                         Firstname = item.Firstname,
                                         Lastname = item.Lastname,
                                         LastLoginDate = item.LastLoginDate,
                                         IsDeleted = item.IsDeleted,
                                         LastUpdatedBy = item.LastUpdatedBy,
                                         LastUpdated = item.LastUpdate,


                                     }).ToListAsync();
                }
            }
            catch (Exception ex)
            {
                _logService.Error(ex.Message, ex);
                results = null;
            }
            return results;
        }
        #endregion

        #region Implement Role
        /// <summary>
        /// Sets the role.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <param name="roleType">Type of the role.</param>
        /// <returns></returns>
        public SaveResult SetRole(int id, RoleType roleType)
        {
            SaveResult result = SaveResult.FAILURE;

            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    var user = context.EBR_SYS_Users.Single(x => x.Id == id && x.IsDeleted == false);

                    user.RoleId = (int)roleType;
                    user.LastUpdate = DateTime.Now;

                    context.Entry<EBR_SYS_Users>(user).State = System.Data.Entity.EntityState.Modified;
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
        /// Sets the role asynchronous.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <param name="roleType">Type of the role.</param>
        /// <returns></returns>
        public async Task<SaveResult> SetRoleAsync(int id, RoleType roleType)
        {
            SaveResult result = SaveResult.FAILURE;

            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    var user = context.EBR_SYS_Users.Single(x => x.Id == id && x.IsDeleted == false);

                    user.RoleId = (int)roleType;
                    user.LastUpdate = DateTime.Now;

                    context.Entry<EBR_SYS_Users>(user).State = System.Data.Entity.EntityState.Modified;
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
        #endregion

        #region Implement Check email avaliable
        /// <summary>
        /// Checks the exist email.
        /// </summary>
        /// <param name="email">The email.</param>
        /// <returns></returns>
        public SYSUsersDto CheckExistEmail(string email)
        {
            SYSUsersDto exist = null;
            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    var user = context.EBR_SYS_Users.SingleOrDefault(x => x.Email == email);
                    if (user != null)
                        exist = new SYSUsersDto
                        {
                            Id = user.Id,
                            Email = user.Email,
                            Salt = user.Salt,
                            RegistedDate = user.RegistedDate,
                            Phone = user.Phone,
                            IsLocked = user.IsLocked,
                            Firstname = user.Firstname,
                            Lastname = user.Lastname,
                            RoleId = user.RoleId,
                            Role = new SYSRolesDto() { Id = user.EBR_SYS_Roles.Id, Name = user.EBR_SYS_Roles.Name, Description = user.EBR_SYS_Roles.Description },
                            LastLoginDate = user.LastLoginDate,
                            IsDeleted = user.IsDeleted,
                            IsConfirmedEmail = user.IsComfiredEmail,
                            LastUpdatedBy = user.LastUpdatedBy,
                            LastUpdated = user.LastUpdate,
                        };
                }
            }
            catch (Exception ex)
            {
                _logService.Error(ex.Message, ex);
                exist = null;
            }
            return exist;
        }

        /// <summary>
        /// Checks the exist email asynchronous.
        /// </summary>
        /// <param name="email">The email.</param>
        /// <returns></returns>
        public async Task<SYSUsersDto> CheckExistEmailAsync(string email)
        {
            SYSUsersDto exist = null;
            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    var user = await context.EBR_SYS_Users.SingleOrDefaultAsync(x => x.Email == email);
                    if (user != null)
                        exist = new SYSUsersDto
                        {
                            Id = user.Id,
                            Email = user.Email,
                            Salt = user.Salt,
                            RegistedDate = user.RegistedDate,
                            Phone = user.Phone,
                            IsLocked = user.IsLocked,
                            Firstname = user.Firstname,
                            Lastname = user.Lastname,
                            RoleId = user.RoleId,
                            Role = new SYSRolesDto() { Id = user.EBR_SYS_Roles.Id, Name = user.EBR_SYS_Roles.Name, Description = user.EBR_SYS_Roles.Description },
                            LastLoginDate = user.LastLoginDate,
                            IsDeleted = user.IsDeleted,
                            IsConfirmedEmail = user.IsComfiredEmail,
                            LastUpdatedBy = user.LastUpdatedBy,
                            LastUpdated = user.LastUpdate,
                        };
                }
            }
            catch (Exception ex)
            {
                _logService.Error(ex.Message, ex);
                exist = null;
            }
            return exist;
        }
        #endregion

        #region Implement Reset password
        /// <summary>
        /// Resets the password.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <param name="newPassword">The new password.</param>
        /// <returns></returns>
        public SaveResult ResetPassword(int id, string newPassword)
        {
            SaveResult result = SaveResult.FAILURE;

            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    var update = context.EBR_SYS_Users.Single(x => x.Id == id && x.IsDeleted == false);

                    update.PasswordHash = AppCipher.EncryptCipher(newPassword);

                    context.Entry<EBR_SYS_Users>(update).State = System.Data.Entity.EntityState.Modified;
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
        /// Resets the password asynchronous.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <param name="newPassword">The new password.</param>
        /// <returns></returns>
        public async Task<SaveResult> ResetPasswordAsync(int id, string newPassword)
        {
            SaveResult result = SaveResult.FAILURE;

            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    var update = context.EBR_SYS_Users.Single(x => x.Id == id && x.IsDeleted == false);

                    update.PasswordHash = AppCipher.EncryptCipher(newPassword);

                    context.Entry<EBR_SYS_Users>(update).State = System.Data.Entity.EntityState.Modified;
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
        #endregion

        #region Implement Register account
        /// <summary>
        /// Confirms the register.
        /// </summary>
        /// <param name="guid">The unique identifier.</param>
        /// <returns></returns>
        public SaveResult ConfirmRegister(string guid)
        {
            SaveResult result = SaveResult.FAILURE;

            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    var user = context.EBR_SYS_Users.Single(w => w.Guid == guid);
                    user.IsComfiredEmail = true;
                    context.Entry<EBR_SYS_Users>(user).State = EntityState.Modified;
                    context.SaveChanges();

                    result = SaveResult.SUCCESS;
                }
            }
            catch (Exception ex)
            {
                result = SaveResult.FAILURE;
                _logService.Error(ex.Message, ex);
            }
            return result;
        }

        /// <summary>
        /// Confirms the register asynchronous.
        /// </summary>
        /// <param name="guid">The unique identifier.</param>
        /// <returns></returns>
        public async Task<SaveResult> ConfirmRegisterAsync(string guid)
        {
            SaveResult result = SaveResult.FAILURE;

            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    var user = await context.EBR_SYS_Users.SingleAsync(w => w.Guid == guid);
                    user.IsComfiredEmail = true;
                    context.Entry<EBR_SYS_Users>(user).State = EntityState.Modified;
                    await context.SaveChangesAsync();

                    result = SaveResult.SUCCESS;
                }
            }
            catch (Exception ex)
            {
                result = SaveResult.FAILURE;
                _logService.Error(ex.Message, ex);
            }
            return result;
        }
        #endregion

        #region Implement Recover pass
        /// <summary>
        /// Confirms the recover pass.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <param name="guid">The unique identifier.</param>
        /// <returns></returns>
        public SaveResult ConfirmRecoverPass(int id, string guid)
        {
            SaveResult result = SaveResult.FAILURE;

            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    var user = context.EBR_SYS_Users.Single(w => w.Id == id && w.Guid == guid);
                    string newPass = AppCipher.EncryptCipher(user.RecoverPass);
                    user.PasswordHash = newPass;
                    user.RecoverPass = null;

                    context.Entry<EBR_SYS_Users>(user).State = EntityState.Modified;
                    context.SaveChanges();

                    result = SaveResult.SUCCESS;
                }
            }
            catch (Exception ex)
            {
                result = SaveResult.FAILURE;
                _logService.Error(ex.Message, ex);
            }
            return result;
        }

        /// <summary>
        /// Confirms the recover pass asynchronous.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <param name="guid">The unique identifier.</param>
        /// <returns></returns>
        public async Task<SaveResult> ConfirmRecoverPassAsync(int id, string guid)
        {
            SaveResult result = SaveResult.FAILURE;

            try
            {
                using (EBROnlineEntities context = new EBROnlineEntities())
                {
                    var user = await context.EBR_SYS_Users.SingleAsync(w => w.Id == id && w.Guid == guid);
                    string newPass = AppCipher.EncryptCipher(user.RecoverPass);
                    user.PasswordHash = newPass;
                    user.RecoverPass = null;

                    context.Entry<EBR_SYS_Users>(user).State = EntityState.Modified;
                    await context.SaveChangesAsync();

                    result = SaveResult.SUCCESS;
                }
            }
            catch (Exception ex)
            {
                result = SaveResult.FAILURE;
                _logService.Error(ex.Message, ex);
            }
            return result;
        }
        #endregion
    }
}

using EBROnline.Model.DTO;
using System.Threading.Tasks;
using System.Collections.Generic;
using EBROnline.Model.Types;

/// <summary>
/// 
/// </summary>
namespace EBROnline.Model.Abstracts
{
    /// <summary>
    /// 
    /// </summary>
    public interface ISYSUsersRepository : IRepository<SYSUsersDto>
    {
        /// <summary>
        /// Logins the specified email.
        /// </summary>
        /// <param name="email">The email.</param>
        /// <param name="password">The password.</param>
        /// <returns></returns>
        SYSUsersDto Login(string email, string password);

        /// <summary>
        /// Logins the asynchronous.
        /// </summary>
        /// <param name="email">The email.</param>
        /// <param name="password">The password.</param>
        /// <returns></returns>
        Task<SYSUsersDto> LoginAsync(string email, string password);

        /// <summary>
        /// Unlockeds the specified identifier.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <returns></returns>
        SaveResult Unlocked(int id);

        /// <summary>
        /// Lockeds the specified identifier.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <returns></returns>
        SaveResult Locked(int id);

        /// <summary>
        /// Unlockeds the asynchronous.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <returns></returns>
        Task<SaveResult> UnlockedAsync(int id);

        /// <summary>
        /// Lockeds the asynchronous.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <returns></returns>
        Task<SaveResult> LockedAsync(int id);

        /// <summary>
        /// Gets all unlocked.
        /// </summary>
        /// <returns></returns>
        IEnumerable<SYSUsersDto> FindAllUnlocked();

        /// <summary>
        /// Gets all unlocked asynchronous.
        /// </summary>
        /// <returns></returns>
        Task<IEnumerable<SYSUsersDto>> FindAllUnlockedAsync();

        /// <summary>
        /// Gets all locked.
        /// </summary>
        /// <returns></returns>
        IEnumerable<SYSUsersDto> FindAllLocked();

        /// <summary>
        /// Gets all locked asynchronous.
        /// </summary>
        /// <returns></returns>
        Task<IEnumerable<SYSUsersDto>> FindAllLockedAsync();

        /// <summary>
        /// Sets the role.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <param name="roleType">Type of the role.</param>
        /// <returns></returns>
        SaveResult SetRole(int id, RoleType roleType);

        /// <summary>
        /// Sets the role asynchronous.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <param name="roleType">Type of the role.</param>
        /// <returns></returns>
        Task<SaveResult> SetRoleAsync(int id, RoleType roleType);

        /// <summary>
        /// Checks the exist email.
        /// </summary>
        /// <param name="email">The email.</param>
        /// <returns></returns>
        SYSUsersDto CheckExistEmail(string email);

        /// <summary>
        /// Checks the exist email asynchronous.
        /// </summary>
        /// <param name="email">The email.</param>
        /// <returns></returns>
        Task<SYSUsersDto> CheckExistEmailAsync(string email);

        /// <summary>
        /// Resets the password.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <param name="newPassword">The new password.</param>
        /// <returns></returns>
        SaveResult ResetPassword(int id, string newPassword);

        /// <summary>
        /// Resets the password asynchronous.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <param name="newPassword">The new password.</param>
        /// <returns></returns>
        Task<SaveResult> ResetPasswordAsync(int id, string newPassword);

        /// <summary>
        /// Confirms the register.
        /// </summary>
        /// <param name="guid">The unique identifier.</param>
        /// <returns></returns>
        SaveResult ConfirmRegister(string guid);

        /// <summary>
        /// Confirms the register asynchronous.
        /// </summary>
        /// <param name="guid">The unique identifier.</param>
        /// <returns></returns>
        Task<SaveResult> ConfirmRegisterAsync(string guid);

        /// <summary>
        /// Confirms the recover pass.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <param name="guid">The unique identifier.</param>
        /// <returns></returns>
        SaveResult ConfirmRecoverPass(int id, string guid);

        /// <summary>
        /// Confirms the recover pass asynchronous.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <param name="guid">The unique identifier.</param>
        /// <returns></returns>
        Task<SaveResult> ConfirmRecoverPassAsync(int id, string guid);
    }
}

using EBROnline.Infractructure;
using EBROnline.Model.Abstracts;
using EBROnline.Model.DTO;
using EBROnline.Model.Types;
using EBROnline.Utilities;
using EBROnline.ViewModel;
using Ninject;
using System;
using System.Net;
using System.Security.Claims;
using System.Threading.Tasks;
using System.Web.Mvc;

/// <summary>
/// 
/// </summary>
namespace EBROnline.Controllers
{
    /// <summary>
    /// 
    /// </summary>
    public class AccountController : AppController
    {
        /// <summary>
        /// Indexes this instance.
        /// </summary>
        /// <returns></returns>
        [HttpGet, Authorize]
        public async Task<ActionResult> Index()
        {
            var currentEmail = this.CurrentName;
            var mySelf = await UserRepository.CheckExistEmailAsync(currentEmail);
            return View(mySelf);
        }

        /// <summary>
        /// Registrations this instance.
        /// </summary>
        /// <returns></returns>
        [HttpGet, AllowAnonymous]
        public ActionResult Registration()
        {
            var newUser = new RegisterViewModel();
            newUser.Email = Request.LogonUserIdentity.Name;
            return View(newUser);
        }

        /// <summary>
        /// Registrations the specified register.
        /// </summary>
        /// <param name="register">The register.</param>
        /// <returns></returns>
        [HttpPost, AllowAnonymous]
        public async Task<ActionResult> Registration(RegisterViewModel register)
        {
            if (!ModelState.IsValid)
            {
                return View(register);
            }

            //Check email exist in system
            var user = UserRepository.CheckExistEmail(register.Email);
            if (user != null)
            {
                ModelState.AddModelError("EXISTED", "Email existed in system, Please enter email!");
                return View(register);
            }

            SYSUsersDto add = new SYSUsersDto();
            add.Email = register.Email;
            add.Firstname = register.FirstName;
            add.Lastname = register.LastName;
            add.PasswordHash = register.Password;
            add.RoleId = (int)RoleType.REQUESTOR;
            add.RecoverPass = null;
            add.IsConfirmedEmail = false;
            add.IsLocked = false;
            add.RegistedDate = DateTime.Now;
            add.Salt = "My1stC#MVCProject2015";
            add.LastLoginDate = null;
            add.LastUpdatedBy = "MySelf";
            add.Guid = Guid.NewGuid().ToString() + "-" + Guid.NewGuid().ToString();

            var result = await UserRepository.AddAsync(add);
            if (result == Model.SaveResult.SUCCESS)
            {
                //TODO SendMail
                string link = Request.Url.AbsoluteUri.Replace(Request.Url.AbsolutePath, "") + Url.Action("ConfirmRegister", new { guid = add.Guid });
                try
                {
                    Mail.SendRegister(register.Email, "[EBROnline] Confirm Register", link);
                }
                catch (Exception ex)
                {
                    LogService.Error(ex.Message, ex);
                }

                return RedirectToAction("LogIn", "Account");
            }
            else
            {
                return View(register);
            }
        }

        /// <summary>
        /// Confirms the register.
        /// </summary>
        /// <param name="guid">The unique identifier.</param>
        /// <returns></returns>
        [HttpGet, AllowAnonymous]
        public ActionResult ConfirmRegister(string guid)
        {
            var result = UserRepository.ConfirmRegister(guid);
            if (result == Model.SaveResult.SUCCESS)
                return RedirectToAction("LogIn", "Account");
            else
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
        }

        /// <summary>
        /// Recovers the password.
        /// </summary>
        /// <returns></returns>
        [HttpGet, AllowAnonymous]
        public ActionResult RecoverPassword()
        {
            TempData["Message"] = null;
            return View();
        }

        /// <summary>
        /// Recovers the password.
        /// </summary>
        /// <param name="viewmodel">The view model.</param>
        /// <returns></returns>
        [HttpPost, AllowAnonymous]
        public async Task<ActionResult> RecoverPassword(RecoverPasswordViewModel viewmodel)
        {
            if (!ModelState.IsValid)
                return View();

            TempData["Message"] = null;
            var exist = await UserRepository.CheckExistEmailAsync(viewmodel.Email);
            if (exist != null)
            {
                string guid = Guid.NewGuid().ToString() + "-" + Guid.NewGuid().ToString();
                string passwordTemp = guid.Substring(0, 7);
                //Update password temp;
                exist.RecoverPass = passwordTemp;
                exist.Guid = guid;

                var result = await UserRepository.UpdateAsync(exist);
                if (result == Model.SaveResult.SUCCESS)
                {
                    //TODO SendEmail
                    string link = Request.Url.AbsoluteUri.Replace(Request.Url.AbsolutePath, "") + Url.Action("ConfirmRecoverPass", new { id = exist.Id, guid = guid });
                    try
                    {
                        Mail.SendRecoverPassword(viewmodel.Email, "[EBROnline] Password Recovery", link, passwordTemp);
                    }
                    catch (Exception ex)
                    {
                        LogService.Error(ex.Message, ex);
                    }

                    return RedirectToAction("LogIn", "Account");
                }
                else
                {
                    ViewBag.Success = 0;
                    TempData["Message"] = "Please retry!";
                }
            }
            else
            {
                ViewBag.Success = 0;
                TempData["Message"] = "User does not exist!";
            }

            return View();
        }

        /// <summary>
        /// Confirms the recover pass.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <param name="guid">The unique identifier.</param>
        /// <returns></returns>
        [HttpGet, AllowAnonymous]
        public ActionResult ConfirmRecoverPass(int id, string guid)
        {
            var result = UserRepository.ConfirmRecoverPass(id, guid);
            if (result == Model.SaveResult.SUCCESS)
                return RedirectToAction("LogIn", "Account");
            else
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
        }

        /// <summary>
        /// Edits the profile.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <returns></returns>
        [HttpGet, Authorize]
        public async Task<ActionResult> EditProfile(int id)
        {
            var acc = new AccountViewModel();
            var mySelf = await UserRepository.SingleAsync(id);
            if (mySelf != null)
            {
                acc.Id = mySelf.Id;
                acc.Email = mySelf.Email;
                acc.FirstName = mySelf.Firstname;
                acc.LastName = mySelf.Lastname;
                acc.RoleName = mySelf.Role.Name;
                acc.RoleId = mySelf.RoleId;
                acc.RegisterDate = mySelf.RegistedDate;
                acc.Phone = mySelf.Phone;
            }
            return View(acc);
        }

        /// <summary>
        /// Edits the profile.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <param name="viewmodel">The view model.</param>
        /// <returns></returns>
        [HttpPost, Authorize]
        public async Task<ActionResult> EditProfile(int id, AccountViewModel viewmodel)
        {

            var user = await UserRepository.SingleAsync(id);
            user.Firstname = viewmodel.FirstName;
            user.Lastname = viewmodel.LastName;
            user.Phone = viewmodel.Phone;

            if (ModelState.IsValid)
            {
                var result = await UserRepository.UpdateAsync(user);
                if (result == Model.SaveResult.SUCCESS)
                    ViewData["Result"] = "SUCESS";
                else
                    ViewData["Result"] = "FAILURE";
            }
            return View(viewmodel);
        }

        /// <summary>
        /// Changes the password.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <returns></returns>
        [HttpGet, Authorize]
        public async Task<ActionResult> ChangePassword(int id)
        {
            var cp = new ChangePasswordViewModel();
            var user = await UserRepository.SingleAsync(id);
            if (user != null)
            {
                cp.Email = user.Email;
                cp.NewPassword = "";
                cp.NewConfirmPassword = "";
                cp.PasswordCurrent = "";
            }
            return View(cp);
        }

        /// <summary>
        /// Changes the password.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <param name="viewmodel">The view model.</param>
        /// <returns></returns>
        [HttpPost, Authorize]
        public async Task<ActionResult> ChangePassword(int id, ChangePasswordViewModel viewmodel)
        {
            TempData["Result"] = null;

            if (!ModelState.IsValid)
                return View(viewmodel);

            var user = await UserRepository.LoginAsync(viewmodel.Email, viewmodel.PasswordCurrent);
            if (user == null)
                TempData["Result"] = "Please check password!";

            var result = await UserRepository.ResetPasswordAsync(user.Id, viewmodel.NewConfirmPassword);
            if (result == Model.SaveResult.SUCCESS)
            {
                //"Password successfully changed.";
                //User logout and Login
                AuthenticationManager.SignOut("ApplicationCookie");
                return RedirectToAction("LogIn");
            }
            else
            {
                TempData["Result"] = "Password fail change";
            }

            return View(viewmodel);
        }

        /// <summary>
        /// Logs the in.
        /// </summary>
        /// <param name="ReturnUrl">The return URL.</param>
        /// <returns></returns>
        [HttpGet, AllowAnonymous]
        public ActionResult LogIn(string ReturnUrl)
        {
            var userLogin = new UserLoginViewModel()
            {
                ReturnUrl = ReturnUrl
            };

            return View(userLogin);
        }

        /// <summary>
        /// Logins the specified user.
        /// </summary>
        /// <param name="user">The user.</param>
        /// <returns></returns>
        [HttpPost, AllowAnonymous]
        public async Task<ActionResult> Login(UserLoginViewModel user)
        {
            if (!ModelState.IsValid)
                return View(user);

            if (ModelState.IsValid)
            {
                //1. check user as status?
                var checkUser = UserRepository.CheckExistEmail(user.Email);
                if (checkUser != null)
                {
                    if (checkUser.IsLocked)
                    {
                        ModelState.AddModelError("Locked", "Your account is currently locked. Please contact System Administrator!");
                        return View(user);
                    }

                    if (!checkUser.IsConfirmedEmail)
                    {
                        ModelState.AddModelError("Confirm", "Your account is currently deactive, please activate your account email.");
                        return View(user);
                    }

                    var userLogin = await UserRepository.LoginAsync(user.Email, user.Password);
                    if (userLogin != null)
                    {
                        var identities = new ClaimsIdentity(new[] {
                    new Claim(ClaimTypes.Name,userLogin.Email),
                    new Claim(ClaimTypes.Role,userLogin.Role.Name),
                    new Claim(ClaimTypes.Email, user.Email),},
                        "ApplicationCookie", ClaimTypes.Name, ClaimTypes.Role);
                        AuthenticationManager.SignIn(identities);

                        return Redirect(GetRedirectUrl(user.ReturnUrl));
                    }
                    else
                    {
                        ModelState.AddModelError("", "Login data is incorrect or User is not yet allowed. Contact System Administrator!");
                        return View(user);
                    }
                }
                else
                {
                    ModelState.AddModelError("", "Login data is incorrect or User is not yet allowed. Contact System Administrator!");
                    return View(user);
                }
            }
            return View();
        }

        /// <summary>
        /// Logs the out.
        /// </summary>
        /// <returns></returns>
        [HttpPost, Authorize]
        public ActionResult LogOut()
        {
            AuthenticationManager.SignOut("ApplicationCookie");

            return RedirectToAction(actionName: "LogIn", controllerName: "Account");
        }

        #region Inject
        /// <summary>
        /// Gets or sets the user repository.
        /// </summary>
        /// <value>
        /// The user repository.
        /// </value>
        [Inject]
        public ISYSUsersRepository UserRepository { get; set; }

        #endregion

        /// <summary>
        /// Gets the redirect URL.
        /// </summary>
        /// <param name="returnUrl">The return URL.</param>
        /// <returns></returns>
        private string GetRedirectUrl(string returnUrl)
        {
            if (String.IsNullOrEmpty(returnUrl) || !Url.IsLocalUrl(returnUrl))
            {
                var user = User;
                return Url.Action("Index", "Home");
            }

            return returnUrl;
        }
    }
}

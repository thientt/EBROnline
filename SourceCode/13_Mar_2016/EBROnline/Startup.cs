using Microsoft.Owin;
using Microsoft.Owin.Security.Cookies;
using Owin;
using System;
[assembly: OwinStartup(typeof(EBROnline.Startup))]

namespace EBROnline
{
    public class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            app.UseCookieAuthentication(new CookieAuthenticationOptions()
            {
                AuthenticationType = "ApplicationCookie",
                LoginPath = new PathString("/Account/LogIn"),
                SlidingExpiration = false,
                ExpireTimeSpan = TimeSpan.FromDays(7),
            });
        }
    }
}
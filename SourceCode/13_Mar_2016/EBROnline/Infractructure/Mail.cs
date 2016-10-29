using EBROnline.Utilities;
using System.Net.Mail;

/// <summary>
/// 
/// </summary>
namespace EBROnline.Infractructure
{
    /// <summary>
    /// 
    /// </summary>
    public class Mail
    {
        public static void SendRegister(string email, string subject, string linkConfirm)
        {
            int port = EBROnlineConfig.PORT;
            string host = EBROnlineConfig.HOST;
            string from = EBROnlineConfig.FROM;
            string user = EBROnlineConfig.USERNAME;
            string pass = EBROnlineConfig.PASSWORD;

            SmtpMailSender.Email(host, email, "", subject, from, "no-reply@atmel.com", user, pass, null, linkConfirm, null, MailType.Register, MailPriority.High);
        }

        public static void SendRecoverPassword(string email, string subject, string linkConfirm, string plainText)
        {
            int port = EBROnlineConfig.PORT;
            string host = EBROnlineConfig.HOST;
            string from = EBROnlineConfig.FROM;
            string user = EBROnlineConfig.USERNAME;
            string pass = EBROnlineConfig.PASSWORD;

            SmtpMailSender.Email(host, email, "", subject, from, "no-reply@atmel.com", user, pass, null, linkConfirm, plainText, MailType.RecoverPass, MailPriority.High);
        }

        public static void Send(string to, string subject, string body)
        {
            int port = EBROnlineConfig.PORT;
            string host = EBROnlineConfig.HOST;
            string from = EBROnlineConfig.FROM;
            string user = EBROnlineConfig.USERNAME;
            string pass = EBROnlineConfig.PASSWORD;
            SmtpMailSender.Email(host, to, body, subject, from, "no-reply@atmel.com", user, pass, null, null, null, MailType.Normal, MailPriority.Normal);
        }

        public static void SendAsync(string to, string subject, string body)
        {
            int port = EBROnlineConfig.PORT;
            string host = EBROnlineConfig.HOST;
            string from = EBROnlineConfig.FROM;
            string user = EBROnlineConfig.USERNAME;
            string pass = EBROnlineConfig.PASSWORD;
            SmtpMailSender.EmailAsync(host, to, body, subject, from, "no-reply@atmel.com", user, pass, null, null, null, MailType.Normal, MailPriority.Normal);
        }
    }
}
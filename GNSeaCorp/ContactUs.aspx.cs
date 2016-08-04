using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GN.Common.DataItem;
using GNSeaCorp.cm;

namespace GNSeaCorp
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void SendEmail(EmailItem emailItem)
        {
            try
            {
                SmtpClient smtpClient = new SmtpClient();
                MailMessage mailMessage = new MailMessage();
                smtpClient.Credentials = new NetworkCredential(emailItem.From_Email_Address, emailItem.From_Email_Password);
                smtpClient.Port = 587;
                smtpClient.Host = "smtp.gmail.com";
                smtpClient.EnableSsl = true;
                mailMessage.From = new MailAddress(emailItem.From_Email_Address, emailItem.From_Display);
                mailMessage.To.Add(emailItem.To_Email_Address);
                mailMessage.Subject = emailItem.Subject;
                mailMessage.Body = emailItem.Body;
                mailMessage.BodyEncoding = System.Text.Encoding.UTF8;
                mailMessage.SubjectEncoding = System.Text.Encoding.UTF8;
                smtpClient.Send(mailMessage);
                MessageBox.Show("Tin nhắn của bạn đã được gửi đi.", this);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString(), this);
            }

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            try
            {

                EmailItem emailItem = new EmailItem();
                emailItem.From_Email_Address = "gnseacorp28@gmail.com";
                emailItem.From_Email_Password = "gnseacorp";
                emailItem.From_Display = txtName.Text;
                emailItem.To_Email_Address = txtEmail.Text.Trim();
                emailItem.Subject = txtSubject.Text.Trim();
                emailItem.Body = txtContent.Text.Trim();
                SendEmail(emailItem);
                txtName.Text = "";
                txtEmail.Text = "";
                txtSubject.Text = "";
                txtContent.Text = "";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString(), this);
            }
        }
    }
}
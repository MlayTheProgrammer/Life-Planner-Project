using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace LifePlanner
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            MailMessage mail = new MailMessage();
            mail.To.Add("mglasscock519@gmail.com");
            mail.From = new MailAddress(txtEmail.Text);
            mail.Subject = txtLastName.Text + ", " + txtFirstName.Text + "Client Server Programming Project";
            mail.Body = Request.Form["txtMessage"];
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.UseDefaultCredentials = false;
            smtp.Credentials = new System.Net.NetworkCredential("mglasscock519@gmail.com", "2ChezBalz");
            smtp.EnableSsl = true;

            smtp.Send(mail);

            Response.Redirect("ContactUs.aspx");
        }
    }
}
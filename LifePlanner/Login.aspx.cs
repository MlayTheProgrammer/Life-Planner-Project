using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace LifePlanner
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string username = txtUsername.Text.Trim();
                string password = txtPassword.Text.Trim();

                string hashedPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(password, "SHA1");

                if (VerifyLogin(username, hashedPassword))
                {
                    Session["username"] = username;
                    Session["password"] = hashedPassword;
                    Response.Redirect("Tasks.aspx");
                }
                else
                {
                    lblLoginFailed.Visible = true;
                    lblLoginFailed.Text = "Login failed. Try again";
                }
            }
        }

        protected bool VerifyLogin(string username, string password)
        {
            using (SqlConnection conn = new SqlConnection())
            {
                conn.ConnectionString = WebConfigurationManager.ConnectionStrings["LifePlanerConnectionString"].ConnectionString;

                SqlCommand cmd = new SqlCommand();

                cmd.CommandText = "SELECT * FROM Users WHERE Username=@username AND Password=@password";
                cmd.Parameters.AddWithValue("@username", txtUsername.Text.Trim());
                cmd.Parameters.AddWithValue("@password",  password);
                cmd.Connection = conn;
                conn.Open();

                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.HasRows)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
        }
    }
}
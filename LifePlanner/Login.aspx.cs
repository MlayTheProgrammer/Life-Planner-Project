using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;

namespace LifePlanner
{
    public partial class Login : System.Web.UI.Page
    {
        private int userId;

        public int IdToTasks()
        {
            return userId;
        }

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

                string queryStr = "SELECT * FROM Users WHERE Username=@username AND Password=@password";
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = WebConfigurationManager.ConnectionStrings["LifePlanerConnectionString"].ConnectionString;
                SqlCommand cmd = new SqlCommand(queryStr, conn);
                cmd.Parameters.AddWithValue("@username", username);
                cmd.Parameters.AddWithValue("@password", hashedPassword);

                int id;
                conn.Open();
                id = (int)cmd.ExecuteScalar();
                conn.Close();

                userId = id;

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
                cmd.Parameters.AddWithValue("@password", password);
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
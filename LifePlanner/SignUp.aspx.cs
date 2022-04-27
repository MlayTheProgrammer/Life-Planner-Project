using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;
using System.Web.Security;

namespace LifePlanner
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnSignUpClick(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string email = txtEmail.Text.Trim();
                string password = txtPassword.Text.Trim();

                if (!IsEmailRegistered(email))
                {
                    // Register the user
                    RegisterUser(email, password);
                }
                else
                {
                    // Does not allow registration
                    lblFeedback.Visible = true;
                    lblFeedback.Text = "Looks like you have already registered your email. Click 'Log in' to sign in";
                }
            }
        }
       



        private void RegisterUser(string email, string password)
        {
            using (SqlConnection conn = new SqlConnection())
            {
                conn.ConnectionString = WebConfigurationManager.ConnectionStrings["LifePlanerConnectionString"].ConnectionString;
#pragma warning disable CS0618 
                string hashedPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(txtPassword.Text, "SHA1");
#pragma warning disable CS0618 
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "INSERT INTO Users(Email,Username,Password) " +
                  "Values(@Email, @Username, @hashedPassword)";      
                //cmd.CommandType = CommandType.StoredProcedure;
                //cmd.CommandText = ("sp_AddUser");
                //cmd.Parameters.AddWithValue("@FirstName", txtFirstName.Text);
                //cmd.Parameters.AddWithValue("@LastName", txtLastName.Text);
                //cmd.Parameters.AddWithValue("@PhoneNumber", txtPhone.Text);
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                cmd.Parameters.AddWithValue("@Username", txtUsername.Text);
                cmd.Parameters.AddWithValue("@hashedPassword", hashedPassword);

                cmd.Connection = conn;
                SqlDataAdapter sda = new SqlDataAdapter();
                sda.SelectCommand = cmd;
                //DataTable dt = new DataTable();
                conn.Open();
                //sda.Fill(dt);
                //cmd.ExecuteNonQuery();
                if (cmd.ExecuteNonQuery() == 1)
                {
                    Response.Redirect("Login.aspx");
                }
                else
                {
                   
                    lblFeedback.Visible = true;
                    lblFeedback.Text = "Registration failed. Try again.";
                }
               
               

                conn.Close();
            }

        }
            private bool IsEmailRegistered(string email)
        {
            using (SqlConnection conn = new SqlConnection())
            {
                conn.ConnectionString = WebConfigurationManager.ConnectionStrings["LifePlanerConnectionString"].ConnectionString;

                // 2. Create a SqlCommand object
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "SELECT * FROM Users WHERE Email = '" + email + "'";
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }
    }
}
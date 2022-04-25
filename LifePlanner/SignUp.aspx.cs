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
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = WebConfigurationManager.ConnectionStrings["LifePlanerConnectionString"].ConnectionString;

                string hashedPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(txtPassword.Text, "SHA1");

                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "INSERT INTO Users(Firstname,LastName,PhoneNumber,Email,Username,Password) " +
                    "Values(@FirstName, @LastName, @PhoneNumber, @Email, @Username, @Password)";

                cmd.Parameters.AddWithValue("@FirstName", txtFirstName.Text);
                cmd.Parameters.AddWithValue("@LastName", txtLastName.Text);
                cmd.Parameters.AddWithValue("@PhoneNumber", txtPhone.Text);
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@Username", txtUsername.Text);
                cmd.Parameters.AddWithValue("@Password", hashedPassword);
                
                cmd.Connection = conn;
                SqlDataAdapter sda = new SqlDataAdapter();
                sda.SelectCommand = cmd;
                //DataTable dt = new DataTable();
                conn.Open();
                //sda.Fill(dt);
                cmd.ExecuteNonQuery();
                lblFeedback.Visible = true;
                lblFeedback.Text = "User added successfully";

                conn.Close();
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LifePlanner
{
	public partial class Dashboard : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
            if (!Page.IsPostBack)
            {
                BindTask();
            }
        }

        protected void BindTask()
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = WebConfigurationManager.ConnectionStrings["LifePlanerConnectionString"].ConnectionString;
            //int listId = int.Parse(Request.Cookies["ListId"].Value);
           // int listId = int.Parse(Request.QueryString["Parameter"]);
            // 2. Create a SqlCommand object
            SqlCommand cmd = new SqlCommand();
           
            cmd.CommandText = "SELECT * FROM Task WHERE DueDate <= DATEADD(day, 7, GETDATE()) AND DueDate>= GETDATE();";
            cmd.Connection = conn;

            SqlDataAdapter sda = new SqlDataAdapter();
            sda.SelectCommand = cmd;

            DataTable dt = new DataTable();
            conn.Open();

            sda.Fill(dt);
            gvDashboard.DataSource = dt;
            gvDashboard.DataBind();
            conn.Close();
        }

       
        protected void get_dashboard(object sender, EventArgs e)
		{
			Response.Redirect("~/Dashboard.aspx");
		}

		protected void get_task(object sender, EventArgs e)
		{
			Response.Redirect("~/Tasks.aspx");
		}
	}
}
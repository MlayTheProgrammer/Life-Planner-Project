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
	public partial class Events : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
            if (!Page.IsPostBack)
            {
                BindEvents();
            }
        }

        protected void BindEvents()
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = WebConfigurationManager.ConnectionStrings["LifePlanerConnectionString"].ConnectionString;

            // 2. Create a SqlCommand object
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "SELECT * FROM Event";
            cmd.Connection = conn;

            SqlDataAdapter sda = new SqlDataAdapter();
            sda.SelectCommand = cmd;

            DataTable dt = new DataTable();
            conn.Open();

            sda.Fill(dt);

            events.DataSource = dt;
            events.DataBind();
            conn.Close();
        }

        protected void gvList_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Button deleteButton = e.Row.FindControl("btnDelete") as Button;
 
                deleteButton.CommandArgument = e.Row.Cells[0].Text;

            }
        }

        //will be fired whenever a button is clicked
        protected void gvList_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            int eventId = 0;
            if (e.CommandName == "DeleteEvent") // the Delete button was clicked
            {
                eventId = int.Parse(e.CommandArgument.ToString());
                using (SqlConnection conn = new SqlConnection())
                {
                    conn.ConnectionString = WebConfigurationManager.ConnectionStrings["LifePlanerConnectionString"].ConnectionString;

                    // 2. Create a SqlCommand object
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = "DELETE FROM Event WHERE EventId = " + eventId;
                    cmd.Connection = conn;
                    conn.Open();

                    cmd.ExecuteNonQuery();

                    BindEvents();
                }
            }
            
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;

namespace LifePlanner
{
	public partial class Tasks : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
            if (!Page.IsPostBack)
            {
                BindTaskList();
            }
        }

		protected void AddTask(object sender, EventArgs e)
		{
            if (Page.IsValid)
            {
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = WebConfigurationManager.ConnectionStrings["LifePlanerConnectionString"].ConnectionString;

                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "INSERT INTO List(Title) " +
                    "Values(@Title)";

                cmd.Parameters.AddWithValue("@Title", txtTitle.Text);

                cmd.Connection = conn;
                SqlDataAdapter sda = new SqlDataAdapter();
                sda.SelectCommand = cmd;
                //DataTable dt = new DataTable();
                conn.Open();
                //sda.Fill(dt);
                cmd.ExecuteNonQuery();
                //lblFeedback.Visible = true;
                //lblFeedback.Text = "User added successfully";

                conn.Close();
                BindTaskList();
            }
        }

        protected void BindTaskList()
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = WebConfigurationManager.ConnectionStrings["LifePlanerConnectionString"].ConnectionString;

            // 2. Create a SqlCommand object
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "SELECT * FROM List";
            cmd.Connection = conn;

            SqlDataAdapter sda = new SqlDataAdapter();
            sda.SelectCommand = cmd;

            DataTable dt = new DataTable();
            conn.Open();

            sda.Fill(dt);

            addingList.DataSource = dt;
            addingList.DataBind();
            conn.Close();
        }

        protected void gvList_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Button editButton = e.Row.FindControl("btnEdit") as Button;
                Button deleteButton = e.Row.FindControl("btnDelete") as Button;
                Button showButton = e.Row.FindControl("btnShow") as Button;

                editButton.CommandArgument = e.Row.Cells[0].Text; //taking the Id of the selected row
                deleteButton.CommandArgument = e.Row.Cells[0].Text;
                showButton.CommandArgument = e.Row.Cells[0].Text;
            }
        }

        //will be fired whenever a button is clicked
        protected void gvList_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            
            int listId = 0;
            if (e.CommandName == "EditList") // the Edit button was clicked
            {
                listId = int.Parse(e.CommandArgument.ToString());
                lblListId.Text = e.CommandArgument.ToString();
                EditListById(listId);
                

            }
            else if (e.CommandName == "DeleteList") // the Delete button was clicked
            {
                listId = int.Parse(e.CommandArgument.ToString());
                using (SqlConnection conn = new SqlConnection())
                {
                    conn.ConnectionString = WebConfigurationManager.ConnectionStrings["LifePlanerConnectionString"].ConnectionString;

                    // 2. Create a SqlCommand object
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = "DELETE FROM List WHERE ListId = " + listId;
                    cmd.Connection = conn;
                    conn.Open();

                    cmd.ExecuteNonQuery();

                    BindTaskList();
                }
            }
            else if (e.CommandName == "ShowList") // the Show button was clicked
			{
                listId = int.Parse(e.CommandArgument.ToString());
                using (SqlConnection conn = new SqlConnection())
                {
                    conn.ConnectionString = WebConfigurationManager.ConnectionStrings["LifePlanerConnectionString"].ConnectionString;

                    // 2. Create a SqlCommand object
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = "SELECT FROM Task WHERE ListId = " + listId;
                    cmd.Connection = conn;
                    SqlDataAdapter sda = new SqlDataAdapter();
                    sda.SelectCommand = cmd;

                    DataTable dt = new DataTable();

                    conn.Open();

                    sda.Fill(dt);

                    //addingTask.DataSource = dt;
                    //addingTask.DataBind();
                    conn.Close();

                   // BindTaskList();
                }
            }


        }

        private void EditListById(int listId)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = WebConfigurationManager.ConnectionStrings["LifePlanerConnectionString"].ConnectionString;

            // 2. Create a SqlCommand object
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "SELECT * FROM List WHERE ListId = " + listId;
            cmd.Connection = conn;
            conn.Open();

            SqlDataReader sdr = cmd.ExecuteReader();

            if (sdr.Read())
            {
                txtTitleEdit.Text = sdr["Title"].ToString();
            }

            //btnAddCategory.Visible = false;
            //btnSaveCategory.Visible = true;
            //btnCancel.Visible = true;
            //pnlCategoryList.Visible = false;
        }

		protected void btnSaveList_Click(object sender, EventArgs e)
		{
            int listId = int.Parse(lblListId.Text);

            SaveCategoryById(listId);
        }

        private void SaveCategoryById(int listId)
        {
            using (SqlConnection conn = new SqlConnection())
            {
                conn.ConnectionString = WebConfigurationManager.ConnectionStrings["LifePlanerConnectionString"].ConnectionString;

                // 2. Create a SqlCommand object
                SqlCommand cmd = new SqlCommand();
                ///TODO
                /// we need to change the following statement to avoid
                /// sql injection attacks
                cmd.CommandText = "UPDATE List SET Title='" + txtTitleEdit.Text + "' WHERE ListId = " + listId;
                cmd.Connection = conn;
                conn.Open();

                cmd.ExecuteNonQuery();

                BindTaskList();

                //btnAddCategory.Visible = true;
                //btnSaveCategory.Visible = false;
                //btnCancel.Visible = false;
                //pnlCategoryList.Visible = true;
                //txtCategoryName.Text = "";
            }

        }
    }
}
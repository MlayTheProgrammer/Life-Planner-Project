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
	public partial class ListTasks : System.Web.UI.Page
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
            int listId = int.Parse(Request.QueryString["Parameter"]);
            // 2. Create a SqlCommand object
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "SELECT * FROM Task WHERE ListId ="+ listId;
            cmd.Connection = conn;

            SqlDataAdapter sda = new SqlDataAdapter();
            sda.SelectCommand = cmd;

            DataTable dt = new DataTable();
            conn.Open();

            sda.Fill(dt);
            addingTask.DataSource = dt;
            addingTask.DataBind();
            conn.Close();
        }


        protected void gvList_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Button editButton = e.Row.FindControl("btnEdit") as Button;
                //CheckBox cbDone = e.Row.FindControl("cbDone") as CheckBox;
                Button deleteButton = e.Row.FindControl("btnDelete") as Button;
                
                editButton.CommandArgument = e.Row.Cells[0].Text; //taking the Id of the selected row
                deleteButton.CommandArgument = e.Row.Cells[0].Text;
    //            int status = 0;
                
    //            if (cbDone.Checked)
				//{
    //                status = 1;
				//}
				//else
				//{
    //                status = 0;
				//}
    //            HttpCookie checkedValue = new HttpCookie("checked");
    //            checkedValue.Value = status.ToString();
                HttpCookie taskId = new HttpCookie("taskId");
                taskId.Value = e.Row.Cells[0].Text;

            }
        }


        //will be fired whenever a button is clicked
        protected void gvList_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            int TaskId = 0;
            if (e.CommandName == "EditList") // the Edit button was clicked
            {
                TaskId = int.Parse(e.CommandArgument.ToString());
                lblTaskId.Text = e.CommandArgument.ToString();
                EditListById(TaskId);


            }
            else if (e.CommandName == "DeleteList") // the Delete button was clicked
            {
                TaskId = int.Parse(e.CommandArgument.ToString());
                using (SqlConnection conn = new SqlConnection())
                {
                    conn.ConnectionString = WebConfigurationManager.ConnectionStrings["LifePlanerConnectionString"].ConnectionString;

                    // 2. Create a SqlCommand object
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = "DELETE FROM Task WHERE TaskId = " + TaskId;
                    cmd.Connection = conn;
                    conn.Open();

                    cmd.ExecuteNonQuery();

                    BindTask();
                }
            }
           
        }

        private void EditListById(int taskId)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = WebConfigurationManager.ConnectionStrings["LifePlanerConnectionString"].ConnectionString;

            // 2. Create a SqlCommand object
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "SELECT * FROM Task WHERE TaskId = " + taskId;
            cmd.Connection = conn;
            conn.Open();

            SqlDataReader sdr = cmd.ExecuteReader();

            if (sdr.Read())
            {
                txtTitleEdit.Text = sdr["Title"].ToString();
                CalendarEdit.SelectedDate= (DateTime)sdr["DueDate"];
                string st = sdr["Status"].ToString();
                if (st == 0.ToString())
				{
                    cbDone.Checked = false;
                }
				else
				{
                    cbDone.Checked = true;
                }
                
            }

        }


        protected void cbDone_CheckedChanged(object sender, EventArgs e)
		{

            using (SqlConnection conn = new SqlConnection())
            {
                conn.ConnectionString = WebConfigurationManager.ConnectionStrings["LifePlanerConnectionString"].ConnectionString;
                int listId = int.Parse(Request.Cookies["ListId"].Value);
                int checkedVal = int.Parse(Request.Cookies["checked"].Value);
                int taskId = int.Parse(Request.Cookies["taskId"].Value);
                // 2. Create a SqlCommand object
                SqlCommand cmd = new SqlCommand();
                ///TODO
                /// we need to change the following statement to avoid
                /// sql injection attacks
                cmd.CommandText = "UPDATE Task SET Status='" + checkedVal.ToString() + "' WHERE ListId = " + listId+" AND TaskId = "+taskId;
                cmd.Connection = conn;
                conn.Open();

                cmd.ExecuteNonQuery();

                BindTask();

               
            }
        }


		protected void addingTask_SelectedIndexChanged(object sender, EventArgs e)
		{

		}



		protected void AddTask(object sender, EventArgs e)
		{
            if (Page.IsValid)
            {
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = WebConfigurationManager.ConnectionStrings["LifePlanerConnectionString"].ConnectionString;
                string d = Calendar.SelectedDate.ToShortDateString();
                int listId = int.Parse(Request.QueryString["Parameter"]);
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "INSERT INTO Task(Title,DueDate,ListId) " +
                    "Values(@Title,@Date,@ListId)";
                
                cmd.Parameters.AddWithValue("@Title", txtTitle.Text);
                cmd.Parameters.AddWithValue("@Date", d);
                cmd.Parameters.AddWithValue("@ListId", listId);
                cmd.Connection = conn;
                SqlDataAdapter sda = new SqlDataAdapter();
                sda.SelectCommand = cmd;
                //DataTable dt = new DataTable();
                conn.Open();
                //sda.Fill(dt);
                cmd.ExecuteNonQuery();
                //lblFeedback.Visible = true;
                //lblFeedback.Text = "User added successfully";
                myForm.Visible = false;
                conn.Close();
                BindTask();
            }
        }

        protected void Calendar_SelectionChanged(object sender, EventArgs e)
        {
            myForm.Visible = true;
            string d = Calendar.SelectedDate.ToShortDateString();
            //addDate(d);
        }

        protected void Calendar_SelectionChangedEdit(object sender, EventArgs e)
		{
           // myForm.Visible = true;
            string d = Calendar.SelectedDate.ToShortDateString();
            //addDate(d);
		}

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AboutUs.aspx");
        }

		protected void AddTaskList(object sender, EventArgs e)
		{
            myForm.Visible = true;
		}

		protected void cancelAddTask(object sender, EventArgs e)
		{
            myForm.Visible = false;
		}
        protected void EditTask(object sender, EventArgs e)
        {
            editForm.Visible = true;
        }

		protected void cancelEditTask(object sender, EventArgs e)
		{
            editForm.Visible = false;
		}

		protected void btnSaveList_Click(object sender, EventArgs e)
		{
            int taskId = int.Parse(lblTaskId.Text);
            SaveCategoryById(taskId);
            editForm.Visible = false;
        }

        private void SaveCategoryById(int taskId)
		{
            int status = 0;

			if (cbDone.Checked)
			{
				status = 1;
			}
			else
			{
				status = 0;
			}

            string d = CalendarEdit.SelectedDate.ToShortDateString();

            using (SqlConnection conn = new SqlConnection())
            {
                conn.ConnectionString = WebConfigurationManager.ConnectionStrings["LifePlanerConnectionString"].ConnectionString;

                // 2. Create a SqlCommand object
                SqlCommand cmd = new SqlCommand();
                ///TODO
                /// we need to change the following statement to avoid
                /// sql injection attacks
                cmd.CommandText = "UPDATE Task SET Title='" + txtTitleEdit.Text + "', Status='"+status+ "', DueDate='"+d+ "'WHERE TaskId = " + taskId;
                cmd.Connection = conn;
                conn.Open();

                cmd.ExecuteNonQuery();

                BindTask();


            }
        }

		protected void back_Click(object sender, EventArgs e)
		{
            Response.Redirect("~/Tasks.aspx");
        }
	}
}
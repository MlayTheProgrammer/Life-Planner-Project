using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LifePlanner
{
    public partial class AddEvent : System.Web.UI.Page
    {
        public int userId;
        protected void Page_Load(object sender, EventArgs e)
        {
            var fromEvents = new Events();
            userId = fromEvents.IdToAddEvent();
        }

        protected void btnCancle_Click(object sender, EventArgs e)
        {
            Response.Redirect("Events.aspx");
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                System.DateTime startDate = getStartDate();
                System.DateTime endDate = getEndDate();

                using (SqlConnection conn = new SqlConnection())
                {
                    conn.ConnectionString = WebConfigurationManager.ConnectionStrings["LifePlanerConnectionString"].ConnectionString;
                    
                    SqlCommand cmd = new SqlCommand();

                    cmd.CommandText = "INSERT INTO Event(Title, StartDate, EndDate, Location, Description, UserId) Values(@Title, @StartDate, @EndDate, @Location, @Description, @userId)";
                    cmd.Parameters.AddWithValue("@Title", txtEventTitle.Text);
                    cmd.Parameters.AddWithValue("@StartDate", startDate);
                    cmd.Parameters.AddWithValue("@EndDate", endDate);
                    cmd.Parameters.AddWithValue("@Location", txtLocation.Text);
                    cmd.Parameters.AddWithValue("@Description", txtDescription.Text);
                    cmd.Parameters.AddWithValue("@UserId", userId);

                    cmd.Connection = conn;
                    conn.Open();

                    cmd.ExecuteNonQuery();

                    Response.Redirect("~/Tasks.aspx");
                }
            }
        }

        internal void Show()
        {
            throw new NotImplementedException();
        }

        protected System.DateTime getStartDate()
        {
            int year = DateTime.Now.Year;
            int month = Convert.ToInt32(sltStartMonth.Items[sltStartMonth.SelectedIndex].Value);
            int day = Convert.ToInt32(sltStartDay.Items[sltStartDay.SelectedIndex].Text);
            int hour = getHour(sltStartTime.Items[sltStartTime.SelectedIndex].Text);
            int minute = getMinute(sltStartTime.Items[sltStartTime.SelectedIndex].Text);
            System.DateTime startdate = new System.DateTime(year, month, day, hour, minute, 0);
            return startdate;
        }

        protected System.DateTime getEndDate()
        {
            int year = DateTime.Now.Year;
            int month = Convert.ToInt32(sltEndMonth.Items[sltEndMonth.SelectedIndex].Value);
            int day = Convert.ToInt32(sltEndDay.Items[sltEndDay.SelectedIndex].Text);
            int hour = getHour(sltEndTime.Items[sltEndTime.SelectedIndex].Text);
            int minute = getMinute(sltEndTime.Items[sltEndTime.SelectedIndex].Text);
            System.DateTime enddate = new System.DateTime(year, month, day, hour, minute, 0);
            return enddate;
        }

        protected int getHour(string time)
        {
            string[] arrTime = time.Split(':');
            int hour = Convert.ToInt32(arrTime[0]);
            return hour;
        }
        protected int getMinute(string time)
        {
            string[] arrTime = time.Split(':');
            int minute = Convert.ToInt32(arrTime[1]);
            return minute;
        }
    }
}
using System;

namespace AcademicLeaveSystem
{
    public partial class CalendarLeave : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            lblUser.Text = "Welcome, " + Session["User"].ToString();
        }

        protected void Calendar1_SelectionChanged(
            object sender, EventArgs e)
        {
            lblDate.Text =
                "Selected Date: " +
                Calendar1.SelectedDate.ToShortDateString();
        }

        protected void btnLeave_Click(object sender, EventArgs e)
        {
            lblResult.Text =
                "Leave applied successfully for: " +
                txtReason.Text;
        }
    }
}

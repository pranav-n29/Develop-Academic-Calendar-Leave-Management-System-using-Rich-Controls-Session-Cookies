using System;

namespace AcademicLeaveSystem
{
    public partial class Login : System.Web.UI.Page
    {
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtUser.Text == "admin" && txtPass.Text == "123")
            {
                // Session
                Session["User"] = txtUser.Text;

                // Cookie
                if (chkRemember.Checked)
                {
                    Response.Cookies["Username"].Value = txtUser.Text;
                    Response.Cookies["Username"].Expires =
                        DateTime.Now.AddDays(7);
                }

                Response.Redirect("CalendarLeave.aspx");
            }
            else
            {
                lblMsg.Text = "Invalid username or password";
            }
        }
    }
}

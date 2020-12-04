using BrownGirlsCodeUpdated.Models;
using System;
using System.Web;

namespace BrownGirlsCodeUpdated
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        Class2 obj = new Class2();
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        private void check()
        {

            bool ver;
            ver = obj.adminVerify(admintext.Value, adminpassword.Value);
            if (ver == true)

            {
                HttpCookie cookie = new HttpCookie("AdminLoggedin");
                cookie.Values.Add("User", admintext.Value);
                cookie.Expires = DateTime.Now.AddMinutes(60);
                Response.Cookies.Add(cookie);
                //  dvError.Visible = false;
                Response.Redirect("Dashboard.aspx");
            }
            else
            {
                Response.Redirect("index.aspx?Msg=check-Fail.");
                //dvError.Visible = true;
                //lblError.Visible = true;
                //sp_error.Visible = true;
            }
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            check();
        }
    }
}
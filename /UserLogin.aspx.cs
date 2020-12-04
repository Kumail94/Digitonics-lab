using BrownGirlsCodeUpdated.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BrownGirlsCodeUpdated
{
    public partial class UserLogin : System.Web.UI.Page
    {
        Class2 obj = new Class2();
        protected void Page_Load(object sender, EventArgs e)
        {
             
        }


        private void authentication()
        {
            bool ver;

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString);
            if (conn != null)
            {
                conn.Close();
            }

            conn.Open();
            string sqlQuery = "select * from tbl_Registration where UserName = @username and Password = @password";
            SqlCommand cmd = new SqlCommand(sqlQuery, conn);
            cmd.Parameters.AddWithValue("@username", usertext.Value);
            cmd.Parameters.AddWithValue("@password", userpassword.Value);
            cmd.Parameters.AddWithValue("@isactive", CheckBox.Checked);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            ver = obj.userVerify(usertext.Value, userpassword.Value, CheckBox.Checked.ToString());
            if (ver == true && dt.Rows.Count > 0)
            {
                HttpCookie cookie = new HttpCookie("UserLoggedin");
                cookie.Values.Add("User", usertext.Value);
                cookie.Expires = DateTime.Now.AddMinutes(60);
                Response.Cookies.Add(cookie);
                Session["UserChecked"] = CheckBox.Checked;
                Response.Redirect("Dashboard.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
            }
        }
    
        protected void UserButton_Click(object sender, EventArgs e)
        {
            authentication();
         }
    }
}

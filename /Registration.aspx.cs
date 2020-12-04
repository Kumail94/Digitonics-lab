using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BrownGirlsCodeUpdated
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)

        {
            if (ModelState.IsValid)
            {
                InsertRegistration(txtfirstname.Value, txtlastname.Value, txtusername.Value, txtpwd.Value, txtemail.Value);
                Response.Redirect("UserLogin.aspx");
            }
        }

        public bool InsertRegistration(string FirstName, string LastName, string UserName, string Pwd, string Email)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ToString());
            if (con != null)
            {
                con.Close();
            }
            con.Open();
            string query = "insert into tbl_Registration(FirstName,LastName,UserName,Password,Email,isActive)VALUES (@FirstName, @LastName, @UserName, @Pwd, @Email, @isActive)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.Add("@FirstName", FirstName);
            cmd.Parameters.Add("@LastName", LastName);
            cmd.Parameters.Add("@UserName", UserName);
            cmd.Parameters.Add("@Pwd", Pwd);
            cmd.Parameters.Add("@Email", Email);
            cmd.Parameters.Add("@isActive", 2);
            //cmd.ExecuteNonQuery();
            //con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            // string Message="Sucess";
            if (i == -1)
            {
                return true;
            }
            else
            {
                return false;
            }

        }
    }
}
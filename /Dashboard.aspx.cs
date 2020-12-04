using BrownGirlsCodeUpdated.Models;
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BrownGirlsCodeUpdated
{
    public partial class Dashboard : System.Web.UI.Page
    {
        Class2 obj = new Class2();
        protected void Page_Load(object sender, EventArgs e)
        {

            //For Users  (Note: Now user is unable to login with their credentials") 
            if (Session["UserChecked"] != null)
            {
                bool usercheck = Convert.ToBoolean(Session["UserChecked"]);
                if (usercheck == true)
                {
                    /*if (Request.Cookies["UserLoggedin"] != null)
                    {
                        if (!Page.IsPostBack)
                        {
                            string user = Request.Cookies["UserLoggedin"].Values["User"];*/
                    dashboardopen.Visible = false;
                    
                    .Visible = false;
                    Session.Abandon();
                    Response.Redirect("Dashboard.aspx");
                    //}
                    //}
                }

            }
            try

            {
              //Its For Admin
                if (Request.Cookies["AdminLoggedin"] != null)
                {
                    if (!Page.IsPostBack)
                    {
                        string User = Request.Cookies["AdminLoggedin"].Values["User"];
                       // 
                       .Visible = true;
                       // formOne.Visible = true;
                        getddlUrl();
                    }
                }
                else
                    Response.Redirect("AdminLogin.aspx?Msg=You-Are-Not-Logged-In.");
            }
            catch { }
        }

        public void Submit()
        {
            DateTime dt = Convert.ToDateTime(txtdate.Value);//.ToString("yyyy-MM-dd HH:mm:ss.ttt");
            if (txtname.Value.Trim() == "" || txturl.Value.Trim() == "" || cbStatus.SelectedIndex == -1)
            {
                lblMsg.Text = "Enter All fields";
            }
            else
            {
                int cb = 0;
                string dbPath = "";
                if (CheckBox1.Checked == true) { cb = 1; }
                try
                {
                    Byte[] bytes = null;
                    if (FileUpload1.HasFile)
                    {
                        Stream fs = FileUpload1.PostedFile.InputStream;
                        BinaryReader br = new BinaryReader(fs);
                        bytes = br.ReadBytes((Int32)fs.Length);
                    }

                    bool checker = obj.SubmitURL(txtname.Value, txturl.Value, int.Parse(cbStatus.SelectedValue), int.Parse(ddlUrl.SelectedValue), dt, cb, bytes);

                    if (checker)
                    {
                        if (ddlUrl.SelectedValue == "0")
                        {
                            lblMsg.Text = "Successfully Inserted";
                        }
                        else { lblMsg.Text = "Successfully Updated"; }
                        getddlUrl();
                        txtname.Value = "";
                        txturl.Value = "";
                        cbStatus.ClearSelection();


                    }
                    else
                    {
                        lblMsg.Text = "Error";
                    }
                }
                catch (Exception ex) { lblMsg.Text = ex.Message; }
            }
        }


        private void get()
        {
            String[] a = obj.getURL();
            txtname.Value = a[0].ToString();
            txturl.Value = a[1].ToString();
        }

        private void get_URL()
        {
            String[] a = obj.getURL(int.Parse(ddlUrl.SelectedValue));
            txtname.Value = a[0].ToString();
            txturl.Value = a[1].ToString();
            cbStatus.SelectedValue = a[2].ToString();
            DateTime dating = Convert.ToDateTime(a[4]);
            txtdate.Value = dating.ToString("yyyy-MM-dd hh:mm tt"); //old yyyy-MM-ddThh:mm
            txtShow.Text = "Previous Time : " + dating.ToString("yyyy-MM-dd hh:mm tt");
            if (Convert.ToInt16(a[5]) == 0)
            { CheckBox1.Checked = false; }
            else { CheckBox1.Checked = true; }
        }

        private void getddlUrl()
        {
            ddlUrl.Items.Clear();
            ListItem item0 = new ListItem();
            item0.Value = "0";
            item0.Text = "----New URL----";
            ddlUrl.Items.Add(item0);
            DataSet d = obj.getAllURL();
            foreach (DataRow row in d.Tables[0].Rows)
            {
                ListItem item = new ListItem();
                item.Value = row["Id"].ToString();
                item.Text = row["Namer"].ToString();
                ddlUrl.Items.Add(item);

            }
        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            Request.Cookies["UserLoggedin"].Values["User"] = null;
            //Response.Cookies.Remove("User");
            //Response.Cookies.Remove("Login");
            Session.Abandon();
            Response.Cookies.Clear();
            if (Request.Cookies["UserLoggedin"] != null)
            {
                Response.Cookies["UserLoggedin"].Expires = DateTime.Now.AddDays(-1);
                Response.Redirect("UserLogin.aspx");
            }

            Response.Redirect("AdminLogin.aspx");
        }

        public void Logout()
        {
            Request.Cookies["UserLoggedin"].Values["User"] = null;
            //Response.Cookies.Remove("User");
            //Response.Cookies.Remove("Login");
            Session.Abandon();
            Response.Cookies.Clear();
            if (Request.Cookies["UserLoggedin"] != null)
            {
                Response.Cookies["UserLoggedin"].Expires = DateTime.Now.AddDays(-1);
                Response.Redirect("UserLogin.aspx");
            }

            Response.Redirect("AdminLogin.aspx");
        }



        protected void ddlUrl_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlUrl.SelectedValue != "0")
            {
                get_URL();
                lblMsg.Text = "";
            }
            else
            {
                txtname.Value = "";
                txturl.Value = "";
                cbStatus.ClearSelection();
                lblMsg.Text = "";
                CheckBox1.Checked = false;
                //var m = (byte[])reader[0];
                //Image i = byteArrayToImage(m);
                //pictureBox1.Image = i;
            }
        }



        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {
                //Submit();
                obj.InsertComments(txtcommentname.Value, txtcomment.Value);
                txtcommentname.Value = "";
                txtcomment.Value = "";
                lblFire.Text = "Last Comment Submitted";
            }
            catch (Exception ex)
            {
                lblFire.Text = "Result cannot be save";
                txtcommentname.Value = "";
                txtcomment.Value = "";

            }

        }


        protected void Button2_Click(object sender, EventArgs e)
        {


            try
            {
                //Submit();
                Byte[] bytes = null;
                if (FileUpload12.HasFile)
                {
                    Stream fs = FileUpload12.PostedFile.InputStream;
                    BinaryReader br = new BinaryReader(fs);
                    bytes = br.ReadBytes((Int32)fs.Length);
                }
                // StatusLabel.Text = "Upload status: File uploaded!";
                lbl.Text = "before insert blogs";
                obj.InsertBlogs(txttitle.Value, txtpostby.Value, txtpostdate.Value, dropdowntype.SelectedItem.Value, bytes, int.Parse(status.SelectedValue), txtvideolink.Value, txtdescription.Value);
                lbl.Text = "after insert blogs";
                txttitle.Value = "";
                txtpostby.Value = "";
                txtpostdate.Value = "";
                dropdowntype.SelectedItem.Value = "";
                txtvideolink.Value = "";
                txtdescription.Value = "";

                lblResult.Text = "Last Blog Submitted";
            }
            catch (Exception ex)
            {
                lblResult.Text = "Result cannot be save";
                txttitle.Value = "";
                txtpostby.Value = "";
                txtpostdate.Value = "";
                dropdowntype.SelectedItem.Value = "";
                txtvideolink.Value = "";
                txtdescription.Value = "";


            }

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Submit();
        }

        protected void Timer_Tick(object sender, EventArgs e)
        {
            Panel.Visible = true;
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString);
            if (conn != null)
            {
                conn.Close();
            }
            conn.Open();
            string sqlQuery = "select * from designproficien.Comments order by id DESC";
            SqlCommand cmd = new SqlCommand(sqlQuery, conn);
            SqlDataAdapter adapter = new SqlDataAdapter();
            adapter.SelectCommand = cmd;
            DataSet dataSet = new DataSet();
            adapter.Fill(dataSet);
            int commentalerts = 0;
            if (dataSet.Tables[0].Rows.Count > 0)
            {
              //  commentalerts++;
              //int.TryParse(notifications.Text) = commentalerts;
                NameLabel.Text = dataSet.Tables[0].Rows[0]["name"].ToString();
                CommentLabel.Text = dataSet.Tables[0].Rows[0]["comments"].ToString();

            }
            conn.Close();

        }

       
    }
}
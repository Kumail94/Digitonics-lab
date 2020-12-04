using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.Text;
using System.Collections;
using BrownGirlsCodeUpdated.Models;

namespace BrownGirlsCodeUpdated
{
    
    public partial class index : System.Web.UI.Page
    {
        Class2 obj = new Class2();
        protected void Page_Load(object sender, EventArgs e)
        {
            get();
            getSecond();
            getThird();
            getFourth();
            Comments();
            Blogs();
            ImageForVideo();
            ImageForFeatured1();
            ImageForFeatured2();
        }


        //public Image byteArrayToImage(byte[] bytesArr)
        //{
        //    using (MemoryStream memstr = new MemoryStream(bytesArr))
        //    {
        //        Image img = Image.FromStream(memstr);
        //        return img;
        //    }
        //}
        private void get()
        {
            String[] a = obj.getURL(1);
            String cond = a[2].ToString();
            String dater = a[4].ToString();
            String newTab = a[5].ToString();

            DateTime date = DateTime.Parse(dater, System.Globalization.CultureInfo.CurrentCulture);
            //DateTime dates = DateNow(dater);
            string t = date.ToString("HH:mm:ss tt");  //Set Time
                                                      //string n = DateTime.Now.ToString("h:mm:ss tt"); //Current Time
                                                      //DateTime now = DateTime.Now;

            var usCulture = new System.Globalization.CultureInfo("en-US");
            string nows = DateTime.Now.ToString(usCulture.DateTimeFormat);
            DateTime now = Convert.ToDateTime(nows);
            //now = now.AddHours(-7);
            int result = DateTime.Compare(date, now);
            int counter = Convert.ToInt32((date - now).TotalSeconds);
            if (cond == "1")
            {
                if (result <= 0)
                {
                    String makeURL = "<iframe style='width:100%;height: 400px;' src='" + a[1].ToString() + "'></iframe>";
                    String makeTab = "";
                    if (newTab == "1")
                    {
                        makeTab = "<a style='color:black;' href='" + a[1].ToString() + "' target='_blank'>Open In another window</a>";
                    }
                    else
                    {
                        makeTab = "";
                    }
                    txtname.Text = "<span class='live data'>Session is Live From '" + t + "'</span>";
                    //   txthrs.Text= "<span class='live data'>'"+t+"'</span>";
                    txtTab.Text = makeTab;
                    txturl.Text = makeURL;
                }

                else
                {
                    String makeURL = "<iframe style='width:100%;height: 400px;' src='" + a[1].ToString() + "'></iframe>";
                    //txtname.Text = "<span class='live data'>Live on <span id='timeset'> "+counter+" </span> Seconds</span>";
                    //txtname.Text = "<span class='live data'>Live on <span id='timeset1'>"+t+"</span>: <span class='date-text'></span> | <span class='badge badge-warning p-2' id='ct'></span> </span>";
                    txtname.Text = "<span class='live data'>Live on <span id='timeset1' data-result='" + date + ", now:" + now + "'>" + date + "</span>: <span class='date-text'></span> </span>";
                    txturl.Text = "<img src='images/video.jpg' class='img-responsive'>";
                    //txturl.Text = makeURL;
                }
            }
            else
            {
                txtname.Text = "<span class='live data'>Live on : <span class='date-text'></span> | <span class='badge badge-warning p-2' id='ct'></span> </span>";
                txturl.Text = "<img src='images/video.jpg' class='img-responsive'>";
            }
            /*
            if(cond == "1"){
                String makeURL = "<iframe width='630' height='345' src='"+a[1].ToString()+"'></iframe>";
                txtname.Text = "<span class='live data'>Session is Live from </span>";
                txturl.Text = makeURL;
            }else
            {
                txtname.Text = "<span class='live data'>Live on : <span class='date-text'></span> | <span class='badge badge-warning p-2' id='ct'></span> </span>";
                txturl.Text = "<img src='images/video.jpg' class='img-responsive'>";
            }   
            */
        }

        // For Second URL
        private void getSecond()
        {
            String[] a = obj.getURL(2);
            String cond = a[2].ToString();
            byte[] imagedata = obj.getImage(2);
            string base64String = "";
            if (imagedata != null)
            {
                base64String = Convert.ToBase64String(imagedata, 0, imagedata.Length);
            }

            String makeTab = ""; String makeURL = "";
            if (cond == "1")
            {
                if (base64String == "")
                {
                    makeURL = "<img src='images/pros-1.jpg' class='img-responsive'";
                }
                else
                {
                    makeURL = "<img style='height: 195px;width: 322px;' src='" + "data:image/png;base64," + base64String + "' class='img-responsive'>";
                }
                String newTab = a[5].ToString();
                if (newTab == "1")
                {
                    makeURL = "<a style='color:white;' href='" + a[1].ToString() + "' target='_blank'>" + makeURL + "</a>";
                }
                else
                {
                    makeURL = "<a style='color:white;' href='" + a[1].ToString() + "'>" + makeURL + "</a>";
                }
                txturl2.Text = makeURL;
            }
            else
            {
                txturl2.Text = "<img src='images/pros-1.jpg' class='img-responsive' >";
            }


            //txtTab2.Text = makeTab;

        }

        // For Third URL
        private void getThird()
        {
            String[] a = obj.getURL(3);
            String cond = a[2].ToString();

            byte[] imagedata = obj.getImage(3);
            string base64String = "";
            if (imagedata != null)
            {
                base64String = Convert.ToBase64String(imagedata, 0, imagedata.Length);
            }

            String makeTab = ""; String makeURL = "";
            if (cond == "1")
            {
                if (base64String == "")
                {
                    makeURL = "<img src='images/pros-2.jpg' class='img-responsive' style='height: 193px; width: 360px;'";
                }
                else
                {
                    makeURL = "<img style='height: 195px;width: 322px;' src='" + "data:image/png;base64," + base64String + "' class='img-responsive'>";
                }
                String newTab = a[5].ToString();
                if (newTab == "1")
                {
                    makeURL = "<a style='color:white;' href='" + a[1].ToString() + "' target='_blank'>" + makeURL + "</a>";
                }
                else
                {
                    makeURL = "<a style='color:white;' href='" + a[1].ToString() + "'>" + makeURL + "</a>";
                }
                txturl3.Text = makeURL;
            }
            else
            {
                txturl3.Text = "<img src='images/pros-2.jpg' class='img-responsive' >";
            }
            //txtTab3.Text = makeTab;
        }

        // For Fourth URL
        private void getFourth()
        {
            String[] a = obj.getURL(4);
            String cond = a[2].ToString();

            byte[] imagedata = obj.getImage(4);
            string base64String = "";
            if (imagedata != null)
            {
                base64String = Convert.ToBase64String(imagedata, 0, imagedata.Length);
            }

            String makeTab = ""; String makeURL = "";
            if (cond == "1")
            {
                if (base64String == "")
                {
                    makeURL = "<img src='images/pros-2.jpg' class='img-responsive' style='height: 193px; width: 360px;'";
                }
                else
                {
                    makeURL = "<img style='height: 195px;width: 322px;' src='" + "data:image/png;base64," + base64String + "' class='img-responsive'>";
                }
                String newTab = a[5].ToString();
                if (newTab == "1")
                {
                    makeURL = "<a style='color:white;' href='" + a[1].ToString() + "' target='_blank'>" + makeURL + "</a>";
                }
                else
                {
                    makeURL = "<a style='color:white;' href='" + a[1].ToString() + "'>" + makeURL + "</a>";
                }
                txturl4.Text = makeURL;
            }
            else
            {
                txturl4.Text = "<img src='images/pros-2.jpg' class='img-responsive' style='height: 193px; width: 360px;' >";
            }
            //txtTab4.Text = makeTab;
        }

        public void Comments()
        {
            SqlConnection con;
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ToString());
            int i = 0;
            //   ver = checkavalaibility(Enrollment);
            try
            {


                con.Open();
                string query = "SELECT * FROM [Comments] where id!=0";
                SqlCommand cmd = new SqlCommand(query, con);
                //SqlDataReader reader2 = cmd.ExecuteReader();
                string comments = "";
                string name = "";
                string body = "";
                SqlDataReader reader;
                using (reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        //<li><a href="#">explain to you how all<span> this mistaken idea</span></a></li>
                        body += "<li><a href='#'><span>" + (reader["comments"].ToString()) + "</span></a></li>";
                        //body += (reader["comments"].ToString());
                        i++;
                        //Label2.Text = (reader[0].ToString());//This writes first column values for your all rows.
                    }
                }
                reader.Close();
                if (i != 0)
                {
                    Label1.Text = body;
                }
                else
                {
                    Label1.Text = "No Data found";
                }
            }
            catch { }
            finally { con.Close(); }
        }




        public void Blogs()
        {
            SqlConnection con;
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ToString());
            int i = 0;
            //   ver = checkavalaibility(Enrollment);
            try
            {


                con.Open();
                string query = "SELECT Blog_title,Description FROM [Blogs] where Blog_id!=0";
                SqlCommand cmd = new SqlCommand(query, con);
                //SqlDataReader reader2 = cmd.ExecuteReader();
                string Blog_title = "";
                string Description = "";
                string body = "";
                //string h6="";
                SqlDataReader reader;
                using (reader = cmd.ExecuteReader())
                {

                    while (reader.Read())
                    {
                        //<li><a href="#">explain to you how all<span> this mistaken idea</span></a></li>
                        //   body += ""+(reader["blogtitle"].ToString())+"";
                        //  body += ""+(reader["description"].ToString())+"";

                        body += "<h6>" + (reader["Blog_title"].ToString()) + "</h6>";
                        body += "<p>" + (reader["Description"].ToString()) + "</p>";
                        //   images += "<img>"+(reader["Description"].ToString())+"</img>";
                        //body += (reader["comments"].ToString());
                        i++;
                        //Label2.Text = (reader[0].ToString());//This writes first column values for your all rows.
                    }
                }
                reader.Close();
                if (i != 0)
                {
                    //mylabel.Text=body;
                    //	img1.InnerHtml= images
                    mytxt.InnerHtml = body;
                    //	title.InnerHtml =body;
                    //lbltitle.Text=h6;
                    // txtdescription.InnerHtml  = body;

                }
                else
                {
                    //Label1.Text = "No Data found";
                    //lbltitle.Text="Ertror";
                }
            }
            catch { }
            finally { con.Close(); }
        }



        public void ImageForVideo()
        {
            string base64String = "";
            // string base64String2 = "";
            string makeURL = "";
            string makeURL1 = "";
            string makeURL2 = "";
            byte[] imagedata = null;
            byte[] images = null;
            int i = 0;
            int[] arr1 = new int[] { };
            string body = "";
            // byte[] data = null;
            SqlConnection con;
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ToString());
            string query = "select (Blog_id) from designproficien.Blogs where Blog_id!=0 and Blog_type=1";
            string Blog_id = "";
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);

            SqlDataReader reader;
            using (reader = cmd.ExecuteReader())
            {
                //txtimg1

                while (reader.Read())
                {

                    i++;


                    // New Code
                    imagedata = obj.getImageBlog(Int32.Parse(reader["Blog_id"].ToString()));

                    if (imagedata != null)
                    {
                        base64String = Convert.ToBase64String(imagedata, 0, imagedata.Length);
                    }

                    if (base64String == "")
                    {
                        makeURL += "<div class='col-md-4 col-xs-12 col-sm-4'><div class='loreum-img'><div class='gallery'>";
                        makeURL += "<img src='images/list-2.jpg' class='img-responsive' alt='" + i + "' ";

                        makeURL += "<a href='images/list-2.jpg' class='fancybox'><i class='fa fa-play-circle-o' aria-hidden='true'></i></a></div>";
                        makeURL += "<h3>Lorem ipsum dolor ametest natum iriure ea.</h3>";
                        makeURL += "<span>JOHN SMITH</span><span class='pull-right'>SEP 4, 2020</span></div></div>";
                    }
                    else
                    {
                        makeURL += "<div class='col-md-4 col-xs-12 col-sm-4'><div class='loreum-img'><div class='gallery'>";
                        makeURL += "<img style='height: 195px;width: 322px;' src='" + "data:image/png;base64," + base64String + "' class='img-responsive'>";

                        makeURL += "<a href='" + "data:image/png;base64," + base64String + "' class='fancybox'><i class='fa fa-play-circle-o' aria-hidden='true'></i></a></div>";
                        makeURL += "<h3>Lorem ipsum dolor ametest natum iriure ea.</h3>";
                        makeURL += "<span>JOHN SMITH</span><span class='pull-right'>SEP 4, 2020</span></div></div>";
                    }

                    // New code end

                }
            }

            txtimg1.Text = makeURL;



        }


        public void ImageForFeatured1()
        {
            string base64String = "";
            // string base64String2 = "";
            string makeURL = "";
            string makeURL1 = "";
            string makeURL2 = "";
            byte[] imagedata = null;
            byte[] images = null;
            int i = 0;
            int[] arr1 = new int[] { };
            string body = "";
            // byte[] data = null;
            SqlConnection con;
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ToString());
            string query = "select (Blog_id) from designproficien.Blogs where Blog_id!=0 and Blog_type=2";
            string Blog_id = "";
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);

            SqlDataReader reader;
            using (reader = cmd.ExecuteReader())
            {
                //txtimg1

                while (reader.Read())
                {

                    i++;


                    // New Code
                    imagedata = obj.getImageBlog(Int32.Parse(reader["Blog_id"].ToString()));

                    if (imagedata != null)
                    {
                        base64String = Convert.ToBase64String(imagedata, 0, imagedata.Length);
                    }

                    if (base64String == "")
                    {
                        makeURL += "<div class='col-md-4 col-xs-12 col-sm-4'><div class='loreum-img'><div class='gallery'>";
                        makeURL += "<img src='images/list-2.jpg' class='img-responsive' alt='" + i + "' ";

                        makeURL += "<a href='images/list-2.jpg' class='fancybox'><i class='fa fa-play-circle-o' aria-hidden='true'></i></a></div>";
                        makeURL += "<h3>Lorem ipsum dolor ametest natum iriure ea.</h3>";
                        makeURL += "<span>JOHN SMITH</span><span class='pull-right'>SEP 4, 2020</span></div></div>";
                    }
                    else
                    {
                        makeURL += "<div class='col-md-4 col-xs-12 col-sm-4'><div class='loreum-img'><div class='gallery'>";
                        makeURL += "<img style='height: 195px;width: 322px;' src='" + "data:image/png;base64," + base64String + "' class='img-responsive'>";

                        makeURL += "<a href='" + "data:image/png;base64," + base64String + "' class='fancybox'><i class='fa fa-play-circle-o' aria-hidden='true'></i></a></div>";
                        makeURL += "<h3>Lorem ipsum dolor ametest natum iriure ea.</h3>";
                        makeURL += "<span>JOHN SMITH</span><span class='pull-right'>SEP 4, 2020</span></div></div>";
                    }

                    // New code end

                }
            }

            txtimg2.Text = makeURL;



        }


        public void ImageForFeatured2()
        {
            string base64String = "";
            // string base64String2 = "";
            string makeURL = "";
            string makeURL1 = "";
            string makeURL2 = "";
            byte[] imagedata = null;
            byte[] images = null;
            int i = 0;
            int[] arr1 = new int[] { };
            string body = "";
            // byte[] data = null;
            SqlConnection con;
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ToString());
            string query = "select (Blog_id) from designproficien.Blogs where Blog_id!=0 and Blog_type=3";
            string Blog_id = "";
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);

            SqlDataReader reader;
            using (reader = cmd.ExecuteReader())
            {
                //txtimg1

                while (reader.Read())
                {

                    i++;


                    // New Code
                    imagedata = obj.getImageBlog(Int32.Parse(reader["Blog_id"].ToString()));

                    if (imagedata != null)
                    {
                        base64String = Convert.ToBase64String(imagedata, 0, imagedata.Length);
                    }

                    if (base64String == "")
                    {
                        makeURL += "<div class='col-md-4 col-xs-12 col-sm-4'><div class='loreum-img'><div class='gallery'>";
                        makeURL += "<img src='images/list-2.jpg' class='img-responsive' alt='" + i + "' ";

                        makeURL += "<a href='images/list-2.jpg' class='fancybox'><i class='fa fa-play-circle-o' aria-hidden='true'></i></a></div>";
                        makeURL += "<h3>Lorem ipsum dolor ametest natum iriure ea.</h3>";
                        makeURL += "<span>JOHN SMITH</span><span class='pull-right'>SEP 4, 2020</span></div></div>";
                    }
                    else
                    {
                        makeURL += "<div class='col-md-4 col-xs-12 col-sm-4'><div class='loreum-img'><div class='gallery'>";
                        makeURL += "<img style='height: 195px;width: 322px;' src='" + "data:image/png;base64," + base64String + "' class='img-responsive'>";

                        makeURL += "<a href='" + "data:image/png;base64," + base64String + "' class='fancybox'><i class='fa fa-play-circle-o' aria-hidden='true'></i></a></div>";
                        makeURL += "<h3>Lorem ipsum dolor ametest natum iriure ea.</h3>";
                        makeURL += "<span>JOHN SMITH</span><span class='pull-right'>SEP 4, 2020</span></div></div>";
                    }

                    // New code end

                }
            }

            txtimg3.Text = makeURL;



        }

        protected void GridView_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
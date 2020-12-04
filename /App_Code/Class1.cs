using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Class1
/// </summary>
public class Class1
{
    SqlConnection con;
    string pswd, password;
    SqlCommand cmd;
    public Class1()
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ToString());
    }
    public bool verify(string username, string pswd)
    {
        bool ver = false;
        int i = 0;
        //   ver = checkavalaibility(Enrollment);
        try
        {

            if (con != null) { con.Close(); }
            con.Open();
            string querry2 = @"SELECT pwd FROM tbl_Login
                WHERE username = '" + username + "'";
            cmd = new SqlCommand(querry2, con);
            SqlDataReader reader2 = cmd.ExecuteReader();
            string pswds = "*";
            while (reader2.Read())
            {
                pswds = reader2["pwd"].ToString();
                i++;
            }
            reader2.Close();
            if (i != 0)
            {

                if (pswds == pswd) { return true; }
                else { return false; }
            }
            else { return false; }
        }
        catch { return false; }
        finally { con.Close(); }
    }

    public bool SubmitURL(string Name, string Url,int Status,int Id, DateTime dt,int NewTab, byte[] ImagePath)
    {
		
        try
        {
            con.Open();
            string querry = "sp_InsertURL";
            cmd = new SqlCommand(querry, con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@name", Name));
            cmd.Parameters.Add(new SqlParameter("@url", Url));
            cmd.Parameters.Add(new SqlParameter("@status", Status));
            cmd.Parameters.Add(new SqlParameter("@id", Id));
			cmd.Parameters.Add(new SqlParameter("@date", dt));
            cmd.Parameters.Add(new SqlParameter("@NewTab", NewTab));
            cmd.Parameters.Add(new SqlParameter("@ImagePath", ImagePath));
             int a = cmd.ExecuteNonQuery();
			if(a > 0){
				return true;
			}else
			{
				return false;
			}			
            //return true;
        }
        catch { return false; }
        finally { con.Close(); }
    }
    //sp_GetURL
    public String[] getURL()
    {
        
        string[] dt = new string[2];
        
        try
        {
           
            if (con != null) { con.Close(); }
            con.Open();
            string querry2 = @"sp_GetURL";
            cmd = new SqlCommand(querry2, con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader reader2 = cmd.ExecuteReader();
           
            while (reader2.Read())
            {
                dt[0]=   reader2["Namer"].ToString();
                dt[1] = reader2["URL"].ToString();
              
            }
            reader2.Close();
            
        }
        catch { return null; }
        finally { con.Close(); }
        return dt;
    }


    public String[] getURL(int Id)
    {

        string[] dt = new string[6];

        try
        {

            if (con != null) { con.Close(); }
            con.Open();
            string querry2 = @"sp_GetURLNew";
            cmd = new SqlCommand(querry2, con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Id", Id);
            SqlDataReader reader2 = cmd.ExecuteReader();

            while (reader2.Read())
            {
                dt[0] = reader2["Namer"].ToString();
                dt[1] = reader2["URL"].ToString();
                dt[2] = reader2["Status"].ToString();
                dt[3] = reader2["Id"].ToString();
				dt[4] = reader2["date"].ToString();
                dt[5] = reader2["NewTab"].ToString();
				//dt[6] = reader2["ImagePath"].ToString();
            }
            reader2.Close();

        }
        catch { return null; }
        finally { con.Close(); }
        return dt;
    }

    public byte[] getImage(int Id)
    {

        byte[] dt = null;

        try
        {

            if (con != null) { con.Close(); }
            con.Open();
            string querry2 = @"sp_GetURLNew";
            cmd = new SqlCommand(querry2, con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Id", Id);
            SqlDataReader reader2 = cmd.ExecuteReader();

            while (reader2.Read())
            {
                dt = (byte[])reader2["ImagePath"];
              
                
            }
            reader2.Close();

        }
        catch { return null; }
        finally { con.Close(); }
        return dt;
    }
	

    public byte[] getImageBlog(int Blog_id)
    {

        byte[] dt = null;
		string query="select count(Blog_id) from designproficien.Blogs";
        
        try
        {

            if (con != null) { con.Close(); }
            con.Open();
            string querry2 = @"designproficien.sp_GetURLNew_Blog";
            cmd = new SqlCommand(querry2, con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Blog_id", Blog_id);
            SqlDataReader reader2 = cmd.ExecuteReader();

            while (reader2.Read())
            {
				for(int i=0; i<=query.Length; i++)
				{
                  dt = (byte[])reader2["Image_link"];
				}
                
            }
            reader2.Close();

        }
        catch { return null; }
        finally { con.Close(); }
        return dt;
    }


    public DataSet getAllURL()
    {
        DataSet ds = new DataSet();
        SqlDataAdapter adp = new SqlDataAdapter("sp_GetAllURL", con);
        adp.SelectCommand.CommandType = CommandType.StoredProcedure;

        try { con.Open(); adp.Fill(ds); adp.Dispose(); }
        catch { }
        finally { con.Close(); }
        return ds;
    }
	
   public bool InsertComments(string name,string comments)
   {
	if (con != null) { con.Close(); }
    con.Open();
    string query="insert into Comments(name,comments)VALUES (@name, @comments)";
    SqlCommand cmd = new SqlCommand(query, con);
	cmd.Parameters.Add("@name",name);
    cmd.Parameters.Add("@comments",comments);
    cmd.Parameters.Add("@isActive",1);
   cmd.Parameters.Add("@createdAt",DateTime.Now);
    //cmd.ExecuteNonQuery();
    //con.Open();
    int i = cmd.ExecuteNonQuery();
    con.Close();
   // string Message="Sucess";
    if (i==-1)
    {
       return true; 
    }
	   else
	   {
		   return false;
	   }
	  
   }
	


   public bool InsertBlogs(string Blog_Title,string Post_By,string Post_Date, string Blog_Type,byte[] Image_Link,int Status, string Video_Link, string description)
   {
	if (con != null) { con.Close(); }
    con.Open();
    string query="insert into Blogs(Blog_title ,Post_by ,Post_date ,Blog_type,Image_link,Status,Video_link,Description)VALUES (@Blog_title, @Post_by, @Post_date, @Blog_type,@Image_link,@Status,@Video_link,@Description)";
	   
    SqlCommand cmd = new SqlCommand(query, con);
	cmd.Parameters.Add("@Blog_title",Blog_Title);
    cmd.Parameters.Add("@Post_by",Post_By);
    cmd.Parameters.Add("@Post_date",Post_Date);
    cmd.Parameters.Add("@Blog_type",Blog_Type);
	cmd.Parameters.Add("@Video_link",Video_Link);
	cmd.Parameters.Add("@Image_link",Image_Link);
	cmd.Parameters.Add("@Status",Status);
	cmd.Parameters.Add("@Description",description);
    //cmd.ExecuteNonQuery();
    //con.Open();
	//eturn true;
    int i = cmd.ExecuteNonQuery();
    con.Close();
	     
	
   // string Message="Sucess";
    if (i==-1)
    {
       return true; 
    }
	   else
	   {
		   return false;
	   }
	  
   }
	


   
}

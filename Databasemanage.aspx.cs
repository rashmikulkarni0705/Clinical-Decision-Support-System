using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Databasemanage : System.Web.UI.Page
{
    private SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Radhika\\Desktop\\cdssfinal\\App_Data\\CDSSdb.mdf;Integrated Security=True;User Instance=True");
    Class c1 = new Class();
    Class c2 = new Class();
    int count=0;
    int d,p;
            
    protected void Page_Load(object sender, EventArgs e)
    {
        Label3.Visible=false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DateTime date = Convert.ToDateTime(this.Session["LoginDate"]);
        string query = "select * from Patient";
        c1.read(query);
        con.Open();
        while (c1.rdr.Read())
        {
            int pid = c1.rdr.GetInt32(0);
            string query1 = "select * from Visit where PatientId='" + pid + "'";
            c2.read(query1);
            int uid = c1.rdr.GetInt32(17);
            while (c2.rdr.Read())
            {
                DateTime d1 = Convert.ToDateTime(c2.rdr.GetDateTime(1));
                d = DateTime.Now.Year - d1.Year;
            }

            if (d > Convert.ToInt32(TextBox1.Text))
            {
                SqlCommand cmd = new SqlCommand("delete from User1 where UserId='" + uid+"'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                SqlCommand cmd1 = new SqlCommand("delete from Patient where UserId='" + uid+"'", con);
                con.Open();
                cmd1.ExecuteNonQuery();
                con.Close();
                SqlCommand cmd2 = new SqlCommand("delete from Visit where UserId='" + uid+"'", con);
                con.Open();
                cmd2.ExecuteNonQuery();
                con.Close();
            
                count++;
            }
        }
        Label3.Text = "Records cleaned = " + count;
        Label3.Visible = true;
    }       
}




                   
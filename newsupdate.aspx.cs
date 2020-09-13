using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class newsupdate : System.Web.UI.Page
{
    private SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Radhika\\Desktop\\cdssfinal\\App_Data\\CDSSdb.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        Label4.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (TextBox1.Text != "")
        {
                if (DropDownList1.Text == "Administrator")
                {
                    con.Open();
                    SqlCommand cmd2 = new SqlCommand("delete from NewsAdmin", con);
                    cmd2.ExecuteNonQuery();
                    con.Close();

                    con.Open();
                    SqlCommand cmd3 = new SqlCommand("insert into NewsAdmin(AdminNews) values('" + TextBox1.Text + "')", con);
                    cmd3.ExecuteNonQuery();
                    con.Close();
                }
                else if (DropDownList1.Text == "Physician")
                {
                    con.Open();
                    SqlCommand cmd4 = new SqlCommand("delete from NewsPhysician", con);
                    cmd4.ExecuteNonQuery();
                    con.Close();

                    con.Open();
                    SqlCommand cmd5 = new SqlCommand("insert into NewsPhysician(NewsPhysician) values('" + TextBox1.Text + "')", con);
                    cmd5.ExecuteNonQuery();
                    con.Close();
                }
                else if (DropDownList1.Text == "Patient")
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("delete from NewsPatient", con);
                    cmd.ExecuteNonQuery();
                    con.Close();

                    con.Open();
                    SqlCommand cmd1 = new SqlCommand("insert into NewsPatient(NewsPatient) values('"+TextBox1.Text+"')", con);
                    cmd1.ExecuteNonQuery();
                    con.Close();
                }
         }
        Label4.Text = "News Uploaded";
        Label4.Visible = true;
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class physicianmast : System.Web.UI.Page
{
    private SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Radhika\\Desktop\\cdssfinal\\App_Data\\CDSSdb.mdf;Integrated Security=True;User Instance=True");
    Class c1 = new Class();
    protected void Page_Load(object sender, EventArgs e)
    {
        label();
    }
    public void label()
    {
        string query = "select * from NewsPhysician";
        c1.read(query);
        con.Open();
        while (c1.rdr.Read())
        {
            string news;
            news = c1.rdr.GetString(1);
            Label1.Text = news;
        }
        con.Close();
    }
}
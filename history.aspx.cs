using System.Collections.Generic;
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Xml;

public partial class history : System.Web.UI.Page
{
    Class c1= new Class();
    private SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Radhika\\Desktop\\cdssfinal\\App_Data\\CDSSdb.mdf;Integrated Security=True;User Instance=True");
    
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {       
        ListBox2.Items.Add(DropDownList3 .Text );
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd1 = new SqlCommand("Insert into DiseaseHistory(PatientId,DiseaseName) values('" + Session["PatientId"] + "','" + DropDownList1.Text + "')", con);
        cmd1.ExecuteNonQuery();
        con.Close();
        ListBox3.DataBind();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd1 = new SqlCommand("Insert into AllergyMap(PatientId,MedicineName,Comment) values('" + Session["PatientId"] + "','" + DropDownList2.Text + "','" + TextBox4.Text + "')", con);
        cmd1.ExecuteNonQuery();
        con.Close();
        ListBox4.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd1 = new SqlCommand("Delete from CurrentMedicine", con);
        cmd1.ExecuteNonQuery();
        con.Close();
        
        foreach (ListItem item in ListBox2.Items)
        {
            con.Open();
            cmd1 = new SqlCommand("Insert into CurrentMedicine(PatientId,MedicineName) values('" + Session["PatientId"] + "','" + item + "')",con);
            cmd1.ExecuteNonQuery();
            con.Close();
            ListBox1.DataBind();
          }
    
    }
}
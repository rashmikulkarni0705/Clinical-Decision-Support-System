using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class physician1 : System.Web.UI.Page
{
    private SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Radhika\\Desktop\\cdssfinal\\App_Data\\CDSSdb.mdf;Integrated Security=True;User Instance=True");
    Class c1 = new Class();
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Session["patientname"] = "XYZ";
        this.Session["email"] = "MMCOE.CDSS@gmail.com";
        this.Session["dob"] = "01/01/1991";
        this.Session["DiseaseName"] = "No Disease";
        this.Session["pid"] = 0;
     
    }
   
}
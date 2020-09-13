using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



public partial class Prescription : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = "" + Session["patientname"];
        Label4.Text = System.DateTime.Now.ToLongDateString();
        Label8.Text = "" + Session["DiseaseName"];
    }
}
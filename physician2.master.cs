using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class physician2 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label3.Text ="Patient's Name: "+Session["patientname"];
        
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Response.Redirect("createvisit.aspx");
    }
    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        Response.Redirect("history.aspx");
    }
    protected void LinkButton9_Click(object sender, EventArgs e)
    {
        Response.Redirect("visitdetails.aspx");
    }
}

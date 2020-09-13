using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    Class c1=new Class ();
    Int32 rid;
    protected void Page_Load(object sender, EventArgs e)
    {
        ((LinkButton)Master.FindControl("LinkButton3")).ForeColor = System.Drawing.Color.Black;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
        if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "")
        {
          if (TextBox2.Text == TextBox3.Text)
            {
                if (DropDownList1.Text == "Administrator")
                {
                    rid = 1;
                }
                else if (DropDownList1.Text == "Physician")
                {
                    rid = 2;
                }
                else if (DropDownList1.Text == "Patient")
                {
                    rid = 3;
                }
                string u = Convert.ToString(TextBox1.Text);
                string p = Convert.ToString(TextBox2.Text);
             
                c1.confuser(u, p, rid);
            }
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
}

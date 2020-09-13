using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminacc : System.Web.UI.Page
{
    Class c1 = new Class();
    int flag1=0;
    protected void Page_Load(object sender, EventArgs e)
    {
        ((LinkButton)Master.FindControl("LinkButton1")).ForeColor = System.Drawing.Color.Black;

        Label5.Text = ""+Session["username"];
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str1 = TextBox1.Text;
        string str2 = TextBox2.Text;
        string str3 = TextBox3.Text;
        string oldpwd=""+Session ["pwd"];
        if (str1 == null || str2 == null || str3 == null || Label5.Text == null)
        {
            flag1 = 1;
        }
    
        if (str2 == str3&& oldpwd ==str1 && flag1!=1)
        {
            string query = "update User1 set Password ='"+str2+"' where Username='"+Label5.Text+"' ";
            c1.update(query);
            Label7.Text = "Password changed successfully !";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }
        else
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            Label7.Text ="Passwords do not match !";
        }
        
    }

}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    int role;
    Class c1 = new Class();
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        string query = "select *from User1";
        int flag = 0;
        c1.read(query);
        while (c1.rdr.Read())
        {
          int id = c1.rdr.GetInt32(0);
            string str1 = c1.rdr.GetString(1);
            string str2 = c1.rdr.GetString(2);
               if (TextBox1.Text == str1 && TextBox2.Text == str2)
            {
                this.Session["UserId"] = id;
                role = c1.rdr.GetInt32(3);
                 this.Session["role"]=role;
                   this.Session["pwd"]=str2;
                 flag = 1;
                this.Session["username"] = TextBox1.Text;
                break;
            }
        }
        if (flag == 1)
        {

            if (role == 1)
            {
                Response.Redirect("admin1.aspx");

            }
            else if (role == 2)
            {

                Response.Redirect("physicianmast.aspx");
            }
            else if (role == 3)
            {
                Response.Redirect("patient1.aspx");
            }
            }
        else
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            Label3.Text = "Incorrect Username or password.."; 
        }
        
    }

    protected void SlideShowTimer_Tick(object sender, EventArgs e)
    {
        DateTime later = DateTime.Now.AddSeconds(.5);
        while (DateTime.Now < later)
        {
        }
        this.SlideShowImage1.Src = RandomImageName();
    }

    private string RandomImageName()
    {

        Random rand = new Random();

        int RandomInt = rand.Next(0, 3);

        switch (RandomInt)
        {

            case 0: return "lll.png";

                break;

            case 1: return "lll.png";

                break;

            case 2: return "lkk.png";

                break;

            default: return "lkk.png";

                break;

        }

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class addpatient : System.Web.UI.Page
{
   Class c1=new Class();

   protected void Page_Load(object sender, EventArgs e)
   {
       ((LinkButton)Master.FindControl("LinkButton4")).ForeColor = System.Drawing.Color.Black;

   }
    
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("physician1.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int flag = 0;
        TextBox1.BackColor = TextBox2.BackColor= TextBox10.BackColor = DropDownList7.BackColor = DropDownList9.BackColor = DropDownList8.BackColor = TextBox14.BackColor = TextBox15.BackColor = TextBox16.BackColor = TextBox17.BackColor = TextBox2.BackColor = TextBox3.BackColor = TextBox4.BackColor = TextBox5.BackColor = TextBox6.BackColor = System.Drawing.Color.White;
        if (!(System.Text.RegularExpressions.Regex.IsMatch(TextBox1.Text, @"[0-9]+")))
        {
            TextBox1.BackColor = System.Drawing.Color.FromArgb(150, 255, 150);
            flag = 1;
        }
        if (!(System.Text.RegularExpressions.Regex.IsMatch(TextBox2.Text, @"[0-9]+")))
        {
            TextBox2.BackColor = System.Drawing.Color.FromArgb(150, 255, 150);
            flag = 1;
        }
        if (!(System.Text.RegularExpressions.Regex.IsMatch(TextBox3.Text, @"[A-Za-z]+")))
        {
            TextBox3.BackColor = System.Drawing.Color.FromArgb(150, 255, 150);
            flag = 1;
        }

            if (!(System.Text.RegularExpressions.Regex.IsMatch(TextBox4.Text, @"[A-Za-z]+")) && TextBox4.Text!="")
            {
                TextBox4.BackColor = System.Drawing.Color.FromArgb(150, 255, 150);
                flag = 1;
        }
            if (!(System.Text.RegularExpressions.Regex.IsMatch(TextBox6.Text, @"(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[012])/(19|20)\d\d")))
                {
                    TextBox6.BackColor = System.Drawing.Color.FromArgb(150, 255, 150);
                    flag = 1;
        }
                    if (!(System.Text.RegularExpressions.Regex.IsMatch(DropDownList7.Text, @"[A-Za-z]+")) && DropDownList7.Text!="")
                    {
                        DropDownList7.BackColor = System.Drawing.Color.FromArgb(150, 255, 150);
                        flag = 1;
        }
                    if (!(System.Text.RegularExpressions.Regex.IsMatch(DropDownList9.Text, @"[A-Za-z]+")) && DropDownList9.Text != "")
                        {
                            DropDownList9.BackColor = System.Drawing.Color.FromArgb(150, 255, 150);
                            flag = 1;
        }
                    if (!(System.Text.RegularExpressions.Regex.IsMatch(DropDownList8.Text, @"[A-Za-z]+")) && DropDownList8.Text != "")
                            {
                                DropDownList8.BackColor = System.Drawing.Color.FromArgb(150, 255, 150);
                                flag = 1;
        }
                    if (!(System.Text.RegularExpressions.Regex.IsMatch(TextBox15.Text, @"(\d\d\d\d\d\d)")) && TextBox15.Text != "")
                                {
                                    TextBox15.BackColor = System.Drawing.Color.FromArgb(150, 255, 150);
                                    flag = 1;
        }
                    if (!(System.Text.RegularExpressions.Regex.IsMatch(TextBox10.Text, @"(?<phoneGroup>\d\d\d\d\d\d\d\d\d\d)")) && TextBox10.Text != "")
                                    {
                                        TextBox10.BackColor = System.Drawing.Color.FromArgb(150, 255, 150);
                                        flag = 1;
        }
                    if (!(System.Text.RegularExpressions.Regex.IsMatch(TextBox14.Text, @"([A-Za-z0-9]+[._%+-]*[A-Za-z0-9]+)+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}")) && TextBox14.Text != "")
                                        {
                                            TextBox14.BackColor = System.Drawing.Color.FromArgb(150, 255, 150);
                                            flag = 1;
        
                                        }
                                    
                                
                            
        if(flag==1)
{
             ClientScriptManager CSM = Page.ClientScript;
             if (!ReturnValue())
             {
                 string strconfirm = "<script>(window.confirm('Invalid Details'))</script>";
                 CSM.RegisterClientScriptBlock(this.GetType(), "Confirm", strconfirm, false);
                
             }
}                
        if(flag==0)
        {
            int r = c1.retid(1, DropDownList3.Text);
            int r1 = c1.retid(2, DropDownList6.Text);
           
            int mrn = Convert.ToInt32(TextBox1.Text);
            string ssn = Convert.ToString(TextBox2.Text);
            string fname = Convert.ToString(TextBox3.Text);
            string lname = Convert.ToString(TextBox4.Text);
            string dob = Convert.ToString(TextBox6.Text);
            string gender = Convert.ToString(DropDownList2.Text);
            string bg = Convert.ToString(DropDownList1.Text);
            int race = r;
            int lang = r1;
            
            string addr = Convert.ToString(TextBox5.Text);
            string city = Convert.ToString(DropDownList7.Text);
            string state = Convert.ToString(DropDownList9.Text);
            string country = Convert.ToString(DropDownList8.Text);
            string zip = Convert.ToString(TextBox15.Text);
            string cno = Convert.ToString(TextBox10.Text);
            string email = Convert.ToString(TextBox14.Text);
            string uname = Convert.ToString(TextBox16.Text);
            string pwd = Convert.ToString(TextBox17.Text);
            
            c1.confuser(uname ,pwd,3);

            c1.insert(mrn, ssn, fname, lname, dob, gender, bg, race, lang, addr, city, state, country, zip, cno, email,uname);
        }
        }
    bool ReturnValue()
    {
        return false;
    }
    
    public bool IsValidDate
    {
        get
        {
            DateTime temp;
            return DateTime.TryParse(TextBox6.Text, out temp);
        }
    }

    protected void DateCustomValidator_ServerValidate(object source, ServerValidateEventArgs args)
    {
        args.IsValid = IsValidDate;
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void TextBox6_TextChanged(object sender, EventArgs e)
    {

    }
}
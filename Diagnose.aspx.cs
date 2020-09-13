using System;
using System.Collections.Generic;
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
using System.Web.Mail;
using System.Net;


public partial class Diagnose : System.Web.UI.Page
{
    private SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Radhika\\Desktop\\cdssfinal\\App_Data\\CDSSdb.mdf;Integrated Security=True;User Instance=True");
    Class c1 = new Class();
    string medicine = "\n" + "Medicines:";
    string labtest = "\n" + "Medical Tests:";
    protected void Page_Load(object sender, EventArgs e)
    {
        string path_of_xml = "C:\\Users\\Radhika\\Desktop\\cdssfinal\\symptoms.xml";
            XmlDocument doc = new XmlDocument();
           
            doc.Load(path_of_xml);
            ListBox5.Items.Clear();
            ListBox4.Items.Clear();
            ListBox2.Items.Clear();
            foreach (XmlNode node in doc.ChildNodes)
             { 
                if (node.Name == "symptoms")
                {
                  foreach (XmlNode node_of_node in node.ChildNodes)
                    {
                        if (node_of_node.Name == "symptom")
                        {
                            string firstname = node_of_node["symptomName"].InnerText;
                             ListBox5.Items.Add(firstname);
                        }
                    }
                }
            }
            string path_of_xml1 = "C:\\Users\\Radhika\\Desktop\\cdssfinal\\phy_ass.xml";
            int age = 0, sys = 0, pr = 0, dia = 0;
            XmlDocument doc1 = new XmlDocument();
            doc1.Load(path_of_xml1);
            foreach (XmlNode node in doc1.ChildNodes)
            {
                if (node.Name == "assessment")
                {
                    foreach (XmlNode node_of_node in node.ChildNodes)
                    {
                        if (node_of_node.Name == "assessment1")
                        {
                            Label17.Text = node_of_node["eyes"].InnerText;
                            Label18.Text = node_of_node["skin"].InnerText;
                            Label19.Text = node_of_node["throat"].InnerText;
                            Label20.Text = node_of_node["nails"].InnerText;
                            Label21.Text = node_of_node["tongue"].InnerText;
                            Label22.Text = node_of_node["ear"].InnerText;
                            //Label23.Text = node_of_node["blood_pressure"].InnerText;
                            if (node_of_node["systolicbp"].InnerText != null && node_of_node["diastolicbp"].InnerText != null)
                            {
                                sys = Convert.ToInt32(node_of_node["systolicbp"].InnerText);
                                dia = Convert.ToInt32(node_of_node["diastolicbp"].InnerText);
                            }
                            if(node_of_node["pulse_rate"].InnerText!=null)
                            pr = Convert.ToInt32(node_of_node["pulse_rate"].InnerText);
                        }
                    }
                }
            }
            ListBox3.Items.Add(Session ["DiseaseName"]+"");

      
            string path_of_xml12 = "C:\\Users\\Radhika\\Desktop\\cdssfinal\\refrange.xml";
            XmlDocument doc12 = new XmlDocument();
            doc12.Load(path_of_xml12);


            DateTime dt = Convert.ToDateTime(this.Session["patientdob"]);
            age = DateTime.Now.Year - dt.Year;
            foreach (XmlNode node12 in doc12.ChildNodes)
            {
                if (node12.Name == "Range")
                {
                    foreach (XmlNode node_of_node in node12.ChildNodes)
                    {
                        if (sys != 0 && dia != 0)
                            if (node_of_node.Name == "BloodP")
                            {
                                foreach (XmlNode node_of_node1 in node_of_node.ChildNodes)
                                {
                                    if (node_of_node1.Name == "bp")
                                    {
                                        if (Convert.ToInt32(node_of_node1["age1"].InnerText) <= age && Convert.ToInt32(node_of_node1["age2"].InnerText) >= age)
                                        {
                                            if (Convert.ToInt32(node_of_node1["sys1"].InnerText) > sys || Convert.ToInt32(node_of_node1["dia1"].InnerText) > dia)
                                            {Label23.Text = "Low";
                                            }
                                            else if (Convert.ToInt32(node_of_node1["sys2"].InnerText) < sys || Convert.ToInt32(node_of_node1["dia2"].InnerText) < dia)
                                            {   Label23.Text = "High";
                                            }

                                            else
                                            {    Label23.Text = "Normal";
                                            }
                                        }
                                    }
                                }
                            }
                        if (pr != 0)
                            if (node_of_node.Name == "PulseRate")
                            {
                                foreach (XmlNode node_of_node1 in node_of_node.ChildNodes)
                                {
                                    if (node_of_node1.Name == "pr")
                                    {
                                        if (Convert.ToInt32(node_of_node1["age1"].InnerText) <= age || Convert.ToInt32(node_of_node1["age2"].InnerText) >= age)
                                        {
                                            if (Convert.ToInt32(node_of_node1["pr1"].InnerText) > pr)
                                            { Label24.Text = "Low";
                                            }
                                            else if (Convert.ToInt32(node_of_node1["pr2"].InnerText) < pr)
                                            {
                                                Label24.Text = "High";
                                            }
                                            else
                                            {   Label24.Text = "Normal";
                                            }
                                        }
                                    }
                                }
                            }
                    }
                }
            }

            //for medicines     
            string path_of_xml2 = "C:\\Users\\Radhika\\Desktop\\cdssfinal\\symptommap.xml";
            XmlDocument doc2 = new XmlDocument();
            doc2.Load(path_of_xml2);
            foreach (XmlNode node2 in doc2.ChildNodes)
            {
                if (node2.Name == "Diseases")
                {
                    foreach (XmlNode node_of_node in node2.ChildNodes)
                    {
                        if (node_of_node.Name == "Disease")
                        {
                         if (node_of_node["DiseaseName"].InnerText == Convert .ToString ( Session["DiseaseName"]))
                                {
                              
                          foreach (XmlNode node_of_node2 in node_of_node.ChildNodes)
                           {
                                if (node_of_node2.Name == "medicine")
                                {
                                    string med = node_of_node2.InnerText;
                                    ListBox4.Items.Add(med);
                                }
                                if (node_of_node2.Name == "lab")
                                {
                                    string lab = node_of_node2.InnerText;
                                    ListBox2.Items.Add(lab);
                                }
                            }
                        }
                        }
                    }
                }
            }
    //for alerts
        //consider all cases  age ,allergy
            string query1 = "select *from Alert ";
            
            c1.read(query1);
            while (c1.rdr.Read())
            {
                string tmed1 = c1.rdr.GetString(1);
                string tmed2 = c1.rdr.GetString(2);
                string remark = c1.rdr.GetString(3);
                
                foreach (ListItem item in ListBox4.Items)
                {
                    if(tmed1==item .Text )
                
                    foreach (ListItem item1 in ListBox4.Items)
                    {
                        
                        if (tmed2 == item1.Text)
                        {
                            ListBox6.Items.Add("!!" + tmed1 + " and " + tmed2 + " should not be prescribed together! ");
                            ListBox6.Items.Add("    Details: " + remark);
                        }

                    }
                
                 }
               
            }
            

            con.Close();
        //for allergy
            string query2 = "select *from AllergyMap where PatientId='" + Session["patientId"] + "' ";
            c1.read(query2);
            while (c1.rdr.Read())
            {
                string tmed = c1.rdr.GetString(2);
                string remark2 = c1.rdr.GetString(3);
                

                foreach (ListItem item in ListBox4.Items)
                {
                    if (tmed == item.Text)
                    {
                        ListBox6.Items.Add("!! Patient is allergic to " + tmed );
                        ListBox6.Items.Add("     Details:" + remark2);
                    }
                }
            }

            con.Close();

    }
    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ListBox5_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void ListBox6_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ListBox3_SelectedIndexChanged(object sender, EventArgs e)
    {
    }
    protected void Button1_Click(object sender, EventArgs e)
    {  
        con.Open();
        string query, query1;
        SqlCommand cmd1 = new SqlCommand("delete from RuntimeMedicine", con);
        cmd1.ExecuteNonQuery();
        SqlCommand cmd2 = new SqlCommand("delete from RuntimeLabTest", con);
        cmd2.ExecuteNonQuery();
       
        foreach (ListItem item in ListBox4.Items)
        {
            medicine += "\n" + item.Text;
            query = "insert into RuntimeMedicine (MedicineName) values('" + item.Text + "')";
            SqlCommand cmd3 = new SqlCommand(query, con);
            cmd3.ExecuteNonQuery();
        }
        foreach (ListItem item1 in ListBox2.Items)
        {
            labtest += "\n" + item1.Text;
            string str=item1.Text;
            query1 = "insert into RuntimeLabTest (TestName) values('" + item1.Text + "')";
            SqlCommand cmd4 = new SqlCommand(query1, con);
            cmd4.ExecuteNonQuery();
        }
        con.Close();
        Label28.Text="*";
        try
        {
            SendMail();
        }
        catch (Exception ex)
        {
          Label28 .Text += "Not Sent:" + ex;
        }
       
        finally
        {
            Label28.Text += "Sent";
        }
        Response.Redirect("Prescription.aspx");
               
    }
        protected void SendMail()
    {
        // Gmail Address from where you send the mail
        var fromAddress = "MMCOE.CDSS@gmail.com";
        // any address where the email will be sending
        var toAddress = this.Session["email"].ToString() ;
        //Password of your gmail address
        const string fromPassword = "mmcoe2013";
        // Passing the values and make a email formate to display
        string subject ="Prescription for "+this.Session["patientname"];
        string body = "Diagnosis: " + this.Session["DiseaseName"] + "\n";
        body += "" + medicine + "\n";
        body += "" + labtest + "\n";
        body += "\n" + "[This is a system generated prescription]" + "\n";
        // smtp settings
        var smtp = new System.Net.Mail.SmtpClient();
        {
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
            smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
            smtp.Timeout = 2000000;
        }
        // Passing values to smtp object
        smtp.Send(fromAddress, toAddress, subject, body);

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        ListBox4.Items.Remove(ListBox4.SelectedItem);
    }
}
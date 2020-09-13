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

public partial class createvisit: System.Web.UI.Page
{
    private SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Radhika\\Desktop\\cdssfinal\\App_Data\\CDSSdb.mdf;Integrated Security=True;User Instance=True");
    Class c1 = new Class();
    
    protected void Page_Load(object sender, EventArgs e)
    {
          
        Label17.Text = "" + Session["LoginDate"];
        Label18.Text = "" + Session["LoginTime"];
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd5 = new SqlCommand("Insert into Visit(Date,TimeStamp,PatientId,UserId) values('" + Session["LoginDate"] + "','" + Session["LoginTime"] + "','" + Session["patientId"] + "','" + Session["UserId"] + "')", con);

        cmd5.ExecuteNonQuery();

        con.Close();
        con.Open();
        string query5 = "select *from Visit where TimeStamp='" + Session["LoginTime"] + "'";
        c1.read(query5);
        while (c1.rdr.Read())
        {
            int id = c1.rdr.GetInt32(0);
            this.Session["VisitId"] = id;
        }
        con.Close();

        //physical assessment


        //compare bp and pulse rate
        int age = 0, sys = 0, pr = 0, dia = 0;
        if (TextBox2.Text != "" && TextBox4.Text != "")
        {
            sys = Convert.ToInt32(TextBox2.Text);
            dia = Convert.ToInt32(TextBox4.Text);
        }
        if (TextBox3.Text != "")
            pr = Convert.ToInt32(TextBox3.Text);
        
        XmlDocument xmldoc1 = new XmlDocument();
        xmldoc1.Load(Server.MapPath("phy_ass.xml"));

        //for deleting previous run assessment
        foreach (XmlNode node in xmldoc1.ChildNodes)
        {
            node.RemoveAll();
            xmldoc1.Save(Server.MapPath("phy_ass.xml"));
        }


        XmlElement parentelement1 = xmldoc1.CreateElement("assessment1");
        XmlElement eyes = xmldoc1.CreateElement("eyes");
        eyes.InnerText = DropDownList7.Text;
        if (DropDownList7.Text != "Normal")
            lb1(DropDownList7.SelectedItem.Text);
        XmlElement skin = xmldoc1.CreateElement("skin");
        skin.InnerText = DropDownList3.Text;
        if (DropDownList3.Text != "Normal")
            lb1(DropDownList3.SelectedItem.Text);
        XmlElement throat = xmldoc1.CreateElement("throat");
        throat.InnerText = DropDownList5.Text;
        if (DropDownList5.Text != "Normal")
            lb1(DropDownList5.SelectedItem.Text);
        XmlElement nails = xmldoc1.CreateElement("nails");
        nails.InnerText = DropDownList2.Text;
        if (DropDownList2.Text != "Normal")
            lb1(DropDownList2.SelectedItem.Text);
        XmlElement tongue = xmldoc1.CreateElement("tongue");
        tongue.InnerText = DropDownList4.Text;
        if (DropDownList4.Text != "Normal")
            lb1(DropDownList4.SelectedItem.Text);
        XmlElement ear = xmldoc1.CreateElement("ear");
        ear.InnerText = DropDownList6.Text;
        if (DropDownList6.Text != "Normal")
            lb1(DropDownList6.SelectedItem.Text);
        XmlElement systolicbp = xmldoc1.CreateElement("systolicbp");
        systolicbp.InnerText = Convert .ToString ( sys);
        XmlElement diastolicbp = xmldoc1.CreateElement("diastolicbp");
        diastolicbp.InnerText = Convert.ToString(dia);
        XmlElement pulse_rate = xmldoc1.CreateElement("pulse_rate");
        pulse_rate.InnerText = Convert.ToString(pr);

        parentelement1.AppendChild(eyes);
        parentelement1.AppendChild(skin);
        parentelement1.AppendChild(throat);
        parentelement1.AppendChild(nails);
        parentelement1.AppendChild(tongue);
        parentelement1.AppendChild(ear);
        parentelement1.AppendChild(systolicbp);
        parentelement1.AppendChild(diastolicbp);
        parentelement1.AppendChild(pulse_rate);

        xmldoc1.DocumentElement.AppendChild(parentelement1);
        xmldoc1.Save(Server.MapPath("phy_ass.xml"));

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
                    if(sys!=0 && dia!=0)
                    if (node_of_node.Name == "BloodP")
                    {
                        foreach (XmlNode node_of_node1 in node_of_node.ChildNodes)
                        {
                            if (node_of_node1.Name == "bp")
                            {
                                if (Convert.ToInt32(node_of_node1["age1"].InnerText) <= age && Convert.ToInt32(node_of_node1["age2"].InnerText) >= age)
                                {
                                    if (Convert.ToInt32(node_of_node1["sys1"].InnerText) > sys || Convert.ToInt32(node_of_node1["dia1"].InnerText) > dia)
                                        {
                                            lb1("Low BP");
                                        }
                                        else if (Convert.ToInt32(node_of_node1["sys2"].InnerText) < sys || Convert.ToInt32(node_of_node1["dia2"].InnerText) < dia)
                                        {  
                                            lb1("High BP");
                                        }

                                        else
                                        {    //Label23.Text = "Normal";
                                        }
                                }
                            }
                        }
                    }
                    if(pr!=0)
                    if (node_of_node.Name == "PulseRate")
                    {
                        foreach (XmlNode node_of_node1 in node_of_node.ChildNodes)
                        {
                            if (node_of_node1.Name == "pr")
                            {
                                if (Convert.ToInt32(node_of_node1["age1"].InnerText) <= age || Convert.ToInt32(node_of_node1["age2"].InnerText) >= age)
                                {
                                    if (Convert.ToInt32(node_of_node1["pr1"].InnerText) > pr)
                                    {
                                        lb1("Low Pulse Rate");
                                    }
                                    else if (Convert.ToInt32(node_of_node1["pr2"].InnerText) < pr)
                                    {
                                        lb1("High Pulse Rate");
                                    }
                                    else
                                    {//    Label24.Text = "Normal";
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        //create symptom xml
        XmlDocument xmldoc = new XmlDocument();

        xmldoc.Load(Server.MapPath("symptoms.xml"));
  
           
 //for deleting previous run symptoms
        foreach (XmlNode node in xmldoc.ChildNodes)
        {
            node.RemoveAll();
            xmldoc.Save(Server.MapPath("symptoms.xml"));
          }

        foreach (ListItem item3 in ListBox1.Items)
        {
            con.Open();
            DataTable table = new DataTable();

            SqlCommand cmd = new SqlCommand("Select * from SymptomList where symptomName='" + item3.Text + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(table);
            int a;
            string x,y;
           
            a = (int)table.Rows[0]["symptomid"];
            x = a.ToString();
            y = (string)table.Rows[0]["symptomName"];
           
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                Console.WriteLine(string.Format("{0}", reader[0]));
            }
            con.Close();

            //insert in visit symptoms
            con.Open();
            int str =(int) Session["VisitId"] ;
          
            TextBox2.Text = str+ "";
            SqlCommand cmd1 = new SqlCommand("Insert into VisitSymptoms(VisitId,SymptomId) values('"+Session ["VisitId"]+"','"+x+"')", con);

            cmd1.ExecuteNonQuery();
            
            con.Close();
            XmlElement parentelement = xmldoc.CreateElement("symptom");
            XmlElement symptomid = xmldoc.CreateElement("symptomid");
            symptomid.InnerText = x;
            XmlElement symptomName = xmldoc.CreateElement("symptomName");
            symptomName.InnerText = y;
           
            parentelement.AppendChild(symptomid);
            parentelement.AppendChild(symptomName);
            xmldoc.DocumentElement.AppendChild(parentelement);
            xmldoc.Save(Server.MapPath("symptoms.xml"));
        }
       
      
        //Diagnosis
        string path_of_xml = "C:\\Users\\Radhika\\Desktop\\cdssfinal\\symptommap.xml";
        XmlDocument doc = new XmlDocument();
        doc.Load(path_of_xml);
        string path_of_xml1 = "C:\\Users\\Radhika\\Desktop\\cdssfinal\\symptoms.xml";
        XmlDocument doc1 = new XmlDocument();
        doc1.Load(path_of_xml1);
             
        int flag=0,n=0,i;
        int count=0;
        float max=0;
        float [] disease_wt;
        disease_wt=new float[40];
        foreach (XmlNode node in doc.ChildNodes)
        {
            if (node.Name == "Diseases")
            {
              
                foreach (XmlNode node_of_node in node.ChildNodes)
                {
                    if (node_of_node.Name == "Disease")
                    {
                        string no_symp = node_of_node["no_symptoms"].InnerText;
                        i = Convert.ToInt32(no_symp);
                        string Disease=node_of_node ["DiseaseName"].InnerText ;
                           
                    
                        foreach (XmlNode node_of_node1 in node_of_node.ChildNodes)
                        {
                            if (node_of_node1.Name == "symptom")
                            {
 

                                string symp = node_of_node1.InnerText;
                              
      
                                foreach (XmlNode node2 in doc1.ChildNodes)
                                {
                                    if (node2.Name == "symptoms")
                                    {
                                        flag = 0;
                                        foreach (XmlNode node_of_node2 in node2.ChildNodes)
                                        {
                                            if (node_of_node2.Name == "symptom")
                                            {
                                                string sym_p = node_of_node2["symptomName"].InnerText;
                                                //                      TextBox3.Text = sym_p+"";
                                                if (symp == sym_p)
                                                {
                                                    flag = 1;
                                                }
                                            }
                                        }
                                        if (flag == 1)
                                            count++;
                                    }
                                }

                            }
                        }
                    
                            float  r = 0;
                            r = (count *100)/ i;
                           
                        count = 0;
                        disease_wt[n] = r;
                        if (max < disease_wt[n])
                        {
                            max = disease_wt[n];
                            this.Session["DiseaseName"] = Disease;
                        }
                        
                        n++;

                          
                        }
                    }
                }

            }
        //entry in table diagnosis
         string query1 = "select *from DiseaseList where DiseaseName='"+Session ["DiseaseName"]+"'";
         c1.read(query1);
        while (c1.rdr.Read())
        {
           int id = c1.rdr.GetInt32(0);
              this.Session["DiseaseId"] = id;
             }
        
            con.Close();
            con.Open();
            SqlCommand cmd2 = new SqlCommand("Insert into Diagnosis(VisitId,DiseaseId) values('" + Session["VisitId"] + "','" + Session["DiseaseId"] + "')", con);

            cmd2.ExecuteNonQuery();

            con.Close();
      Response.Redirect("Diagnose.aspx");
    }
    protected void lb1(string item)
    {
        int flag = 0;
        foreach (ListItem item1 in ListBox1.Items)
        {
            if (item == item1.Text)
            {
                flag = 1;

            }
        }
        if (flag != 1)
            ListBox1.Items.Add(item);
    }
    protected void CheckBoxList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        CheckBoxList cbx = (CheckBoxList)sender;
        int flag = 0;
        foreach (ListItem item in cbx.Items)
        {
            if (item.Selected)
            {
                foreach (ListItem item1 in ListBox1.Items)
                {
                    if (item.Text == item1.Text)
                    {
                        flag = 1;

                    }
                }
                if (flag != 1)
                    ListBox1.Items.Add(new ListItem(item.Text, item.Value));
            }
        }

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        ListBox1.Items.Remove(ListBox1.SelectedItem);
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("createvisit.aspx");
    }
    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
   
}
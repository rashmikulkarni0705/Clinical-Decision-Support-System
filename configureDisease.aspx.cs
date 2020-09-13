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
using System.Web.Configuration;

public partial class configureDisease : System.Web.UI.Page
{

    Class c1 = new Class();
  

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Button10.Enabled = false;
       
            bindgrid();
        }
    }

    protected void bindgrid()
    {
        DataTable dt = new DataTable();
        dt.Columns.Add("DiseaseName");
        dt.Columns.Add("Symptom");
        dt.Columns.Add("MedicineName");
        dt.Columns.Add("LabTestName");

        DataRow dr;
        string path_of_xml = "C:\\Users\\Radhika\\Desktop\\cdssfinal\\symptommap.xml";
        XmlDocument doc = new XmlDocument();
        doc.Load(path_of_xml);
        float[] disease_wt;
        disease_wt = new float[40];
        foreach (XmlNode node in doc.ChildNodes)
        {
            if (node.Name == "Diseases")
            {
                foreach (XmlNode node_of_node in node.ChildNodes)
                {
                    if (node_of_node.Name == "Disease")
                    {
                        string Disease = node_of_node["DiseaseName"].InnerText;
                        dr = dt.NewRow();
                        dr["DiseaseName"] = Disease;
                        dr["symptom"] = "";
                        dr["MedicineName"] = "";
                        dr["LabTestName"] = "";
                   
                        int i = 0, j = 0,k=0;
                        foreach (XmlNode node_of_node1 in node_of_node.ChildNodes)
                        {
                            if (node_of_node1.Name == "symptom")
                            {
                                i++;
                                string symp = node_of_node1.InnerText;
                                if (i == 1)
                                    dr["Symptom"] = symp;
                                else
                                    dr["Symptom"] = dr["Symptom"] + "," + symp;

                            }
                            if (node_of_node1.Name == "medicine")
                            {
                                j++;
                                string med = node_of_node1.InnerText;
                                if (j == 1)
                                    dr["MedicineName"] = med;
                                else
                                    dr["MedicineName"] = dr["MedicineName"] + "," + med;

                            }
                            if (node_of_node1.Name == "lab")
                            {
                                k++;
                                string lab = node_of_node1.InnerText;
                                if (k == 1)
                                    dr["LabTestName"] = lab;
                                else
                                    dr["LabTestName"] = dr["LabTestName"] + "," + lab;

                            }

                        }
                        dt.Rows.Add(dr);
                        dt.AcceptChanges();

                    }
                }
            }

        }

        GridView1.DataSource = dt;
        GridView1.DataBind();

    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        
        string dec = GridView1.DataKeys[e.RowIndex].Values["DiseaseName"].ToString();
      
        try
        {
            c1.deletedis(dec);

            string path_of_xml = "C:\\Users\\Radhika\\Desktop\\cdssfinal\\symptommap.xml";
            XmlDocument doc = new XmlDocument();
            doc.Load(path_of_xml);
            
            int result = xmldel(dec);
            if (result == 1)
            {

                Label9.ForeColor = Color.Red;
                Label9.Text = dec + " details deleted successfully";
            }
        }
        catch
        {
            Label9.Text = dec + " already used.";
        }
    }
    public int xmldel(string dec)
    {
        string path_of_xml = "C:\\Users\\Radhika\\Desktop\\cdssfinal\\symptommap.xml";
        XmlDocument doc = new XmlDocument();
        doc.Load(path_of_xml);
        int result=0;
        foreach (XmlNode node in doc.ChildNodes)
        {
            if (node.Name == "Diseases")
            {
                foreach (XmlNode node_of_node in node.ChildNodes)
                {
                    if (node_of_node.Name == "Disease")
                    {
                        string Disease = node_of_node["DiseaseName"].InnerText;
                        if (Disease == dec)
                        {

                            node.RemoveChild(node_of_node);
                            doc.Save(Server.MapPath("symptommap.xml"));
                            bindgrid();
                            result = 1;
                        }

                    }
                }
            }
        }
        return (result);
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        int flag = 0;

        foreach (ListItem item in ListBox1.Items)
        {
            if (item.Text == DropDownList1.Text)
            {
                flag = 1;

            }
        }
        if (flag != 1)
        ListBox1.Items.Add(DropDownList1.SelectedValue);
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        
        int flag = 0,flag2=0;

        foreach (ListItem item in ListBox1.Items)
        {
            if (item.Text == TextBox2 .Text )
            {
                flag = 1;

            }
        }
        foreach (ListItem item in DropDownList1.Items)
        {
            if (item.Text == TextBox2.Text)
            {
                flag2 = 1;
            }
        }

        if (flag != 1 && flag2!=1)
        {
            c1.insertsym(TextBox2.Text);

            ListBox1.Items.Add(TextBox2.Text);
        }
     }

    protected void Button2_Click(object sender, EventArgs e)
    {
        ListBox1.Items.Remove(ListBox1.SelectedItem);
    
    }
    protected void Button5_Click(object sender, EventArgs e)
    {

        int flag = 0;

        foreach (ListItem item in ListBox2.Items)
        {
            if (item.Text == DropDownList2.Text)
            {
                flag = 1;

            }
        }
        if (flag != 1)
            ListBox2.Items.Add(DropDownList2.SelectedValue);
    
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        ListBox2.Items.Remove(ListBox2.SelectedItem);
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "")
        {
            ClientScriptManager CSM = Page.ClientScript;
            if (!ReturnValue())
            {
                string strconfirm = "<script>(window.confirm('Invalid Details'))</script>";
                CSM.RegisterClientScriptBlock(this.GetType(), "Confirm", strconfirm, false);

            }
        }
        else
        {
            c1.insertdis(TextBox1.Text);

            XmlDocument xmldoc = new XmlDocument();

            xmldoc.Load(Server.MapPath("symptommap.xml"));
            XmlElement parentelement = xmldoc.CreateElement("Disease");
            int count = 0;
            XmlElement no_symptoms = xmldoc.CreateElement("no_symptoms");
            parentelement.AppendChild(no_symptoms);

            foreach (ListItem item3 in ListBox1.Items)
            {


                c1.insertdismap(item3.Text, TextBox1.Text);
                count++;
                XmlElement symptom = xmldoc.CreateElement("symptom");
                symptom.InnerText = item3.Text;
                parentelement.AppendChild(symptom);
            }
            no_symptoms.InnerText = Convert.ToString(count);
            XmlElement DiseaseName = xmldoc.CreateElement("DiseaseName");
            DiseaseName.InnerText = TextBox1.Text;
            parentelement.AppendChild(DiseaseName);
            count = 0;
            XmlElement no_med = xmldoc.CreateElement("no_med");
            parentelement.AppendChild(no_med);

            foreach (ListItem item in ListBox2.Items)
            {
                c1.insertmedmap(item.Text, TextBox1.Text);
                count++;
                XmlElement medicine = xmldoc.CreateElement("medicine");
                medicine.InnerText = item.Text;
                parentelement.AppendChild(medicine);
            }
            no_med.InnerText = Convert.ToString(count);

            foreach (ListItem item in ListBox3.Items)
            {

                c1.insertlabmap(item.Text, TextBox1.Text);
                //count++;
                XmlElement lab = xmldoc.CreateElement("lab");
                lab.InnerText = item.Text;
                parentelement.AppendChild(lab);
            }

            xmldoc.DocumentElement.AppendChild(parentelement);
            xmldoc.Save(Server.MapPath("symptommap.xml"));
            bindgrid();
        }
    }
    bool ReturnValue()
    {
        return false;
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        bindgrid();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        Label14.Text = TextBox1.Text;
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        ListBox3.Items.Remove(ListBox3.SelectedItem);
    
    }
    protected void Button7_Click(object sender, EventArgs e)
    {

        int flag = 0,flag2=0;

        foreach (ListItem item in ListBox3.Items)
        {
            if (item.Text == TextBox3.Text)
            {
                flag = 1;

            }
        }
        foreach (ListItem item in DropDownList3.Items)
        {
            if (item.Text == TextBox3.Text)
            {
                flag2 = 1;
            }
        }
        
        if (flag != 1 && flag2!=1)
        {
            c1.insertlab (TextBox3.Text);

            ListBox3.Items.Add(TextBox3.Text);
        }
     
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        int flag = 0;

        foreach (ListItem item in ListBox3.Items)
        {
            if (item.Text == DropDownList3.Text)
            {
                flag = 1;

            }
        }
        if (flag != 1)
            ListBox3.Items.Add(DropDownList3.SelectedValue);
    
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        bindgrid();
    }
        
     
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {

        GridView1.EditIndex = e.NewEditIndex;
       
        TextBox1.Text = TextBox2.Text = TextBox3.Text = "";
       
        string DiseaseName = GridView1.DataKeys[e.NewEditIndex].Values["DiseaseName"].ToString();
        TextBox1.Text = DiseaseName;

        string path_of_xml = "C:\\Users\\Radhika\\Desktop\\cdssfinal\\symptommap.xml";
        XmlDocument doc = new XmlDocument();
        doc.Load(path_of_xml);
        foreach (XmlNode node in doc.ChildNodes)
        {
            if (node.Name == "Diseases")
            {
                foreach (XmlNode node_of_node in node.ChildNodes)
                {
                    if (node_of_node.Name == "Disease")
                    {
                        if (DiseaseName == node_of_node["DiseaseName"].InnerText)
                        {
                            foreach (XmlNode node_of_node1 in node_of_node.ChildNodes)
                            {
                                if (node_of_node1.Name == "symptom")
                                {

                                    string symp = node_of_node1.InnerText;
                                    ListBox1.Items.Add(symp);
                                }

                                if (node_of_node1.Name == "medicine")
                                {

                                    string med = node_of_node1.InnerText;
                                    ListBox2.Items.Add(med);
                                }
                                if (node_of_node1.Name == "lab")
                                {

                                    string lab = node_of_node1.InnerText;
                                    ListBox3.Items.Add(lab);

                                }

                            }

                        }
                    }
                }
            }
        }
        bindgrid();

    }
    protected void imgbtnEdit_Click(object sender, ImageClickEventArgs e)
    {
        ListBox1.Items.Clear();
        ListBox2.Items.Clear();
        ListBox3.Items.Clear();
        Button3.Enabled = false;
        Button10.Enabled = true;
    }

    protected void Button10_Click(object sender, EventArgs e)
    {
        
       
            TextBox1.ReadOnly = true;
            int result = xmldel(TextBox1.Text);
            if (result == 1)
                Label9.Text = "Update Successful";
            else
                Label9.Text = "Update Unsuccessful";
        
       
        XmlDocument xmldoc = new XmlDocument();

        xmldoc.Load(Server.MapPath("symptommap.xml"));
        XmlElement parentelement = xmldoc.CreateElement("Disease");
        int count = 0;
        XmlElement no_symptoms = xmldoc.CreateElement("no_symptoms");
        parentelement.AppendChild(no_symptoms);

        foreach (ListItem item3 in ListBox1.Items)
        {
         
                c1.updatedismap(item3.Text, TextBox1.Text);
           
            count++;
            XmlElement symptom = xmldoc.CreateElement("symptom");
            symptom.InnerText = item3.Text;
            parentelement.AppendChild(symptom);
        }
        no_symptoms.InnerText = Convert.ToString(count);
        XmlElement DiseaseName = xmldoc.CreateElement("DiseaseName");
        DiseaseName.InnerText = TextBox1.Text;
        parentelement.AppendChild(DiseaseName);
        count = 0;
        XmlElement no_med = xmldoc.CreateElement("no_med");
        parentelement.AppendChild(no_med);

        foreach (ListItem item in ListBox2.Items)
        {
           
                c1.updatemedmap(item.Text, TextBox1.Text);
           
            count++;
            XmlElement medicine = xmldoc.CreateElement("medicine");
            medicine.InnerText = item.Text;
            parentelement.AppendChild(medicine);
        }
        no_med.InnerText = Convert.ToString(count);

        foreach (ListItem item in ListBox3.Items)
        {
            
                c1.updatelabmap(item.Text, TextBox1.Text);
           
            //count++;
            XmlElement lab = xmldoc.CreateElement("lab");
            lab.InnerText = item.Text;
            parentelement.AppendChild(lab);
        }

        xmldoc.DocumentElement.AppendChild(parentelement);
        xmldoc.Save(Server.MapPath("symptommap.xml"));
        bindgrid();
        Button10.Enabled = false;
        Button3.Enabled = true;
    }
}
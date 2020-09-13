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

public partial class visitdetails : System.Web.UI.Page
{
    private SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Radhika\\Desktop\\cdssfinal\\App_Data\\CDSSdb.mdf;Integrated Security=True;User Instance=True");
    Class c1 = new Class();
    public SqlDataReader rdr,rdr1,rdr2;
    string path = "Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Radhika\\Desktop\\cdssfinal\\App_Data\\CDSSdb.mdf;Integrated Security=True;User Instance=True";
	
    Class c2 = new Class();
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt.Columns.Add("Date");
        dt.Columns.Add("Time");
        dt.Columns.Add("Symptoms Reported");
        dt.Columns.Add("Disease Diagnosed");
        dt.Columns.Add("Medicine Prescribed");

        string query1 = "select *from Visit where PatientId='" + Session["patientId"] + "'";
        c1.read(query1);
        int disease;
        while (c1.rdr.Read())
        {
            DataRow dr;
            dr = dt.NewRow();
          

            int vid = c1.rdr.GetInt32(0);
            string  date = Convert.ToString  (c1.rdr.GetDateTime (1));
            string time =Convert.ToString(c1.rdr.GetTimeSpan(2));
            string d = date.Substring(0, 10);
            dr["Date"] = d;
            dr["Time"] = time ;
         string query2 = "select *from Diagnosis where VisitId='" + vid + "'";
            SqlConnection con2 = new SqlConnection(path);
            SqlCommand cmd = new SqlCommand(query2, con2);
        con2.Open();
            rdr1 = cmd.ExecuteReader();
             disease = 0;
            while (rdr1.Read())
            {
                disease = rdr1.GetInt32(2);
            }
      con2.Close();
      query2 = "select *from DiseaseList where DiseaseId='" + disease + "'";
      cmd = new SqlCommand(query2, con2);
      con2.Open();
      rdr1 = cmd.ExecuteReader();
    
      while (rdr1.Read())
      {
          string dis = rdr1.GetString (1);
          dr["Disease Diagnosed"] = dis;
      }
      con2.Close();

      string query3 = "select *from VisitSymptoms where VisitId='" + vid + "'";
      SqlConnection con3 = new SqlConnection(path);
      SqlCommand cmd3 = new SqlCommand(query3, con3);
      con3.Open();
      rdr2 = cmd3.ExecuteReader();
      int sym = 0;
      int i = 0;
      while (rdr2.Read())
      {
          sym = rdr2.GetInt32(2);
          query2 = "select *from SymptomList where SymptomId='" + sym + "'";
          cmd = new SqlCommand(query2, con2);
          con2.Open();
          rdr1 = cmd.ExecuteReader();
          
          while (rdr1.Read())
          {   i++;
              string symp = rdr1.GetString(1);
              if (i == 1)
              {
                  dr["Symptoms Reported"] = symp;
              }
              else
              {
                  dr["Symptoms Reported"] =dr["Symptoms Reported"]+","+ symp;
              }
         }
          con2.Close();
     
      }
      con3.Close();
      
      query3 = "select *from MedicineMap where DiseaseId='" + disease  + "'";
      con3 = new SqlConnection(path);
      cmd3 = new SqlCommand(query3, con3);
      con3.Open();
      rdr2 = cmd3.ExecuteReader();
      int med = 0;
      i = 0;
      while (rdr2.Read())
      {
          med = rdr2.GetInt32(2);
          query2 = "select *from MedicineList where MedicineId='" + med + "'";
          cmd = new SqlCommand(query2, con2);
          con2.Open();
          rdr1 = cmd.ExecuteReader();

          while (rdr1.Read())
          {
              i++;
              string medi = rdr1.GetString(1);
              if (i == 1)
              {
                  dr["Medicine Prescribed"] = medi;
              }
              else
              {
                  dr["Medicine Prescribed"] = dr["Medicine Prescribed"] + "," + medi;
              }
          }
          con2.Close();

      }
      con3.Close();
            

            dt.Rows.Add(dr);
            dt.AcceptChanges();

        }

        con.Close();

        

        GridView1.DataSource = dt;
        GridView1.DataBind();
   

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        this.Session["LoginTime"] = DateTime.Now.ToLongTimeString();
        this.Session["LoginDate"] = DateTime.Now.ToLongDateString();
        Response.Redirect("createvisit.aspx");
    }
}
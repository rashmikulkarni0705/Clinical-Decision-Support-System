using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
/// <summary>
/// Summary description for Class
/// </summary>
public class Class
{
    public SqlConnection con;
    public SqlCommand cmd;
    public SqlDataReader rdr;
    string path = "Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Radhika\\Desktop\\cdssfinal\\App_Data\\CDSSdb.mdf;Integrated Security=True;User Instance=True";
    
    public Class()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void read(string query)
    {
        SqlConnection con = new SqlConnection(path);
        SqlCommand cmd = new SqlCommand(query, con);
        con.Open();
        rdr = cmd.ExecuteReader();
    }
    public void insertsym(string sym)
    {
        SqlConnection con = new SqlConnection(path);

        SqlCommand cmd = new SqlCommand("insert into SymptomList (SymptomName) values('" + sym + "')",con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
      
    }

    public void insertdis(string dis)
    {
        SqlConnection con = new SqlConnection(path);

        SqlCommand cmd = new SqlCommand("insert into DiseaseList (DiseaseName) values('" + dis + "')", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }
   

    public void insertlab(string lab)
    {
        SqlConnection con = new SqlConnection(path);

        SqlCommand cmd = new SqlCommand("insert into LabTestList (TestName) values('" + lab + "')", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }
    
    public void insertdismap(string sym, string dis)
    {
        SqlConnection con = new SqlConnection(path);
        int d = 0, s = 0;
        try
        {
            string query = "select * from DiseaseList where DiseaseName='" + dis + "'";
            read(query);
            while (rdr.Read())
            {
                d = rdr.GetInt32(0);
            }
            con.Close();
            string query1 = "select * from SymptomList where SymptomName='" + sym + "'";
            read(query1);
            while (rdr.Read())
            {
                s = rdr.GetInt32(0);
            }
            con.Close();
            SqlCommand cmd = new SqlCommand("insert into DiseaseMap (DiseaseId,SymptomId) values('" + d + "','" + s + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        catch
        {
        }
    }
    
    public void insertmedmap(string med, string dis)
    {
        SqlConnection con = new SqlConnection(path);
        int d = 0, s = 0;

        string query = "select * from DiseaseList where DiseaseName='" + dis + "'";
        read(query);
        while (rdr.Read())
        {
            d = rdr.GetInt32(0);
        }
        con.Close();
        string query1 = "select * from MedicineList where MedicineName='" + med + "'";
        read(query1);
        while (rdr.Read())
        {
            s = rdr.GetInt32(0);
        }
        con.Close();
        SqlCommand cmd = new SqlCommand("insert into MedicineMap (DiseaseId,MedicineId) values('" + d + "','" + s + "')", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }


    public void insertlabmap(string lab, string dis)
    {
        SqlConnection con = new SqlConnection(path);
        int d = 0, s = 0;

        string query = "select * from DiseaseList where DiseaseName='" + dis + "'";
        read(query);
        while (rdr.Read())
        {
            d = rdr.GetInt32(0);
        }
        con.Close();
        string query1 = "select * from LabTestList where TestName='" + lab + "'";
        read(query1);
        while (rdr.Read())
        {
            s = rdr.GetInt32(0);
        }
        con.Close();

        SqlCommand cmd = new SqlCommand("insert into LabMap (LabTestId,DiseaseId) values('" + s + "','" + d + "')", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }

    public void updatedismap(string sym, string dis)
    {
        SqlConnection con = new SqlConnection(path);
        int d = 0, s = 0;
        
        string query = "select * from DiseaseList where DiseaseName='" + dis + "'";
        read(query);
        while (rdr.Read())
        {
            d = rdr.GetInt32(0);
        }
        con.Close();
        string query0 = "delete from DiseaseMap where DiseaseId='" + d + "'";
        insertdismap(sym,dis);
    }

    public void updatemedmap(string med, string dis)
    {
        SqlConnection con = new SqlConnection(path);
        int d = 0, s = 0;

        string query = "select * from DiseaseList where DiseaseName='" + dis + "'";
        read(query);
        while (rdr.Read())
        {
            d = rdr.GetInt32(0);
        }
        con.Close();
        string query0 = "delete from MedicineMap where DiseaseId='" + d + "'";
        insertmedmap(med, dis);
        
    }


    public void updatelabmap(string lab, string dis)
    {
        SqlConnection con = new SqlConnection(path);
        int d = 0, s = 0;

        string query = "select * from DiseaseList where DiseaseName='" + dis + "'";
        read(query);
        while (rdr.Read())
        {
            d = rdr.GetInt32(0);
        }
        con.Close();
        string query0 = "delete from LabMap where DiseaseId='" + d + "'";
        insertlabmap(lab, dis);
        
    }
 
    public void deletedis(string dis)
    {
        SqlConnection con = new SqlConnection(path);
        int d = 0;

        string query = "select * from DiseaseList where DiseaseName='" + dis + "'";
        read(query);
        while (rdr.Read())
        {
            d = rdr.GetInt32(0);
        }
        con.Close();

        SqlCommand cmd = new SqlCommand("delete from Diagnosis where DiseaseId='" + d + "'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();


        SqlCommand cmd2 = new SqlCommand("delete from DiseaseList where DiseaseName= '" + dis + "'", con);
        con.Open();
        cmd2.ExecuteNonQuery();
        con.Close();
    }

    public void deletedismap(string dis)
    {
        SqlConnection con = new SqlConnection(path);
        int d = 0;

        string query = "select * from DiseaseList where DiseaseName='" + dis + "'";
        read(query);
        while (rdr.Read())
        {
            d = rdr.GetInt32(0);
        }
        con.Close();
        
        SqlCommand cmd = new SqlCommand("delete from DiseaseMap where DiseaseId='" + d + "'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }

    public void deletemedmap(string dis)
    {
        SqlConnection con = new SqlConnection(path);
        int d = 0;

        string query = "select * from DiseaseList where DiseaseName='" + dis + "'";
        read(query);
        while (rdr.Read())
        {
            d = rdr.GetInt32(0);
        }
        con.Close();
       
        SqlCommand cmd = new SqlCommand("delete from MedicineMap where DiseaseId='" + d + "'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        

        con.Close();
    }

    public void deletelabmap(string dis)
    {
        SqlConnection con = new SqlConnection(path);
        int d = 0;

        string query = "select * from DiseaseList where DiseaseName='" + dis + "'";
        read(query);
        while (rdr.Read())
        {
            d = rdr.GetInt32(0);
        }
        con.Close();

        SqlCommand cmd = new SqlCommand("delete from LabMap where DiseaseId='" + d + "'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }

    public void confuser(string uname, string pwd, int rid)
    {
        SqlConnection con = new SqlConnection(path);
        con.Open();
        SqlCommand cmd = new SqlCommand("inuser", con);
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Parameters.Add(new SqlParameter("@u",System.Data.SqlDbType.VarChar)).Value= uname;
        cmd.Parameters.Add(new SqlParameter("@p", System.Data.SqlDbType.VarChar)).Value = pwd;
        cmd.Parameters.Add(new SqlParameter("@r", System.Data.SqlDbType.Int)).Value = rid;
        cmd.ExecuteNonQuery();
        con.Close();
        if (rid == 3)
        {
            insert(0, "", "", "", "", "", "", 1,1, "", "", "", "", "", "", "", uname);
        }

    }
    public void insert(int mrn, string ssn, string fname, string lname, string dob, string gender, string bg, int race, int lang,  string addr, string city, string state, string country, string zip, string cno, string email,string uname)
    {
       
        int r=0;
        
        string query = "select * from User1 where Username='" + uname + "'";
        read(query);
        while (rdr.Read())
        {
             r = rdr.GetInt32(0);
            }
      
        
        SqlConnection con = new SqlConnection(path);        
        con.Open();
        SqlCommand cmd = new SqlCommand("adp", con);
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Parameters.Add(new SqlParameter("@mrn", System.Data.SqlDbType.Int)).Value = mrn;
        cmd.Parameters.Add(new SqlParameter("@ssn", System.Data.SqlDbType.VarChar)).Value = ssn;
        cmd.Parameters.Add(new SqlParameter("@fname", System.Data.SqlDbType.VarChar)).Value = fname;
        cmd.Parameters.Add(new SqlParameter("@lname", System.Data.SqlDbType.VarChar)).Value = lname;
        cmd.Parameters.Add(new SqlParameter("@dob", System.Data.SqlDbType.VarChar)).Value = dob;
        cmd.Parameters.Add(new SqlParameter("@gender", System.Data.SqlDbType.VarChar)).Value = gender;
        cmd.Parameters.Add(new SqlParameter("@bg", System.Data.SqlDbType.VarChar)).Value = bg;
        cmd.Parameters.Add(new SqlParameter("@race", System.Data.SqlDbType.Int)).Value = race;
        cmd.Parameters.Add(new SqlParameter("@lang", System.Data.SqlDbType.Int)).Value = lang;
        cmd.Parameters.Add(new SqlParameter("@addr", System.Data.SqlDbType.VarChar)).Value = addr;
        cmd.Parameters.Add(new SqlParameter("@city", System.Data.SqlDbType.VarChar)).Value = city;
        cmd.Parameters.Add(new SqlParameter("@state", System.Data.SqlDbType.VarChar)).Value = state;
        cmd.Parameters.Add(new SqlParameter("@country", System.Data.SqlDbType.VarChar)).Value = country;
        cmd.Parameters.Add(new SqlParameter("@zip", System.Data.SqlDbType.VarChar)).Value = zip;
        cmd.Parameters.Add(new SqlParameter("@cno", System.Data.SqlDbType.VarChar)).Value = cno;
        cmd.Parameters.Add(new SqlParameter("@email", System.Data.SqlDbType.VarChar)).Value = email;
        
      
        cmd.Parameters.Add(new SqlParameter("@uid", System.Data.SqlDbType.VarChar)).Value = r;
        
        cmd.ExecuteNonQuery();
        con.Close();
    }

    public void updatefillinfo(int mrn, string ssn, string fname, string lname, string dob, string gender, string bg, int race, int lang, string addr, string city, string state, string country, string zip, string cno, string email,int uid)
    {
        
        SqlConnection con = new SqlConnection(path);
        con.Open();
        SqlCommand cmd = new SqlCommand("adp1", con);
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        //    cmd.Parameters.Add(new SqlParameter("@pid", System.Data.SqlDbType.Int)).Value = pid;
        cmd.Parameters.Add(new SqlParameter("@mrn", System.Data.SqlDbType.Int)).Value = mrn;
        cmd.Parameters.Add(new SqlParameter("@ssn", System.Data.SqlDbType.VarChar)).Value = ssn;
        cmd.Parameters.Add(new SqlParameter("@fname", System.Data.SqlDbType.VarChar)).Value = fname;
        cmd.Parameters.Add(new SqlParameter("@lname", System.Data.SqlDbType.VarChar)).Value = lname;
        cmd.Parameters.Add(new SqlParameter("@dob", System.Data.SqlDbType.VarChar)).Value = dob;
        cmd.Parameters.Add(new SqlParameter("@gender", System.Data.SqlDbType.VarChar)).Value = gender;
        cmd.Parameters.Add(new SqlParameter("@bg", System.Data.SqlDbType.VarChar)).Value = bg;
        cmd.Parameters.Add(new SqlParameter("@race", System.Data.SqlDbType.Int)).Value = race;
        cmd.Parameters.Add(new SqlParameter("@lang", System.Data.SqlDbType.Int)).Value = lang;
        cmd.Parameters.Add(new SqlParameter("@addr", System.Data.SqlDbType.VarChar)).Value = addr;
        cmd.Parameters.Add(new SqlParameter("@city", System.Data.SqlDbType.VarChar)).Value = city;
        cmd.Parameters.Add(new SqlParameter("@state", System.Data.SqlDbType.VarChar)).Value = state;
        cmd.Parameters.Add(new SqlParameter("@country", System.Data.SqlDbType.VarChar)).Value = country;
        cmd.Parameters.Add(new SqlParameter("@zip", System.Data.SqlDbType.VarChar)).Value = zip;
        cmd.Parameters.Add(new SqlParameter("@cno", System.Data.SqlDbType.VarChar)).Value = cno;
        cmd.Parameters.Add(new SqlParameter("@email", System.Data.SqlDbType.VarChar)).Value = email;
        cmd.Parameters.Add(new SqlParameter("@uid", System.Data.SqlDbType.Int)).Value = uid;

        cmd.ExecuteNonQuery();
        con.Close();
    }
    
    public Int32 retid(int r, string rs)
    {
        
        if (r == 1)
        {

            string query = "select RaceId from RaceList where Race="+rs+"";
            SqlConnection con = new SqlConnection(path);
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            cmd.Parameters.AddWithValue("@RaceId",r  );
            con.Close();
            return r;
        }

              if (r == 2)
        {

            string query = "select LanguageId from LanguageList where Language="+rs+"";
            SqlConnection con = new SqlConnection(path);
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            cmd.Parameters.AddWithValue("@LanguageId", r);
            con.Close();
            return r;
            
        }
    

              if (r == 4)
              {
                  string query = "select RoleId from Role where RoleName=" + rs + "";
                  SqlConnection con = new SqlConnection(path);
                  SqlCommand cmd = new SqlCommand(query, con);
                  con.Open();
                  cmd.Parameters.AddWithValue("@RoleId", r);
                  con.Close();
                  return r;
        
              }

        return r;
    }
    public void update(string query)
    {
        SqlConnection con = new SqlConnection(path);
        SqlCommand cmd = new SqlCommand(query, con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }
}
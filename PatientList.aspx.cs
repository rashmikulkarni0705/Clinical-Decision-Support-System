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

public partial class PatientList : System.Web.UI.Page
{
    private SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Radhika\\Desktop\\cdssfinal\\App_Data\\CDSSdb.mdf;Integrated Security=True;User Instance=True");
    Class c1 = new Class();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        ((LinkButton)Master.FindControl("LinkButton3")).ForeColor = System.Drawing.Color.Black;
        if (!IsPostBack)
        {
            Bind();
        }
    }
    protected void Bind()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from Patient", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        con.Close();
        if (ds.Tables[0].Rows.Count > 0)
        {
            gvDetails.DataSource = ds;
            gvDetails.DataBind();
        }
        else
        {
            ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
            gvDetails.DataSource = ds;
            gvDetails.DataBind();
            int columncount = gvDetails.Rows[0].Cells.Count;
            gvDetails.Rows[0].Cells.Clear();
            gvDetails.Rows[0].Cells.Add(new TableCell());
            gvDetails.Rows[0].Cells[0].ColumnSpan = columncount-1;
            gvDetails.Rows[0].Cells[0].Text = "No Records Found";
        }

    }
    
    protected void gvDetails_RowEditing(object sender, GridViewEditEventArgs e)
    {
   
        gvDetails.EditIndex = e.NewEditIndex;
        Bind();
    }

    protected void gvDetails_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

        int PatientId = Convert.ToInt32(gvDetails.DataKeys[e.RowIndex].Value.ToString());
        string FirstName = gvDetails.DataKeys[e.RowIndex].Values["FirstName"].ToString();
        TextBox t1 = (TextBox)gvDetails.Rows[e.RowIndex].FindControl("txtmrn");
        int txtmrn = Convert.ToInt32(t1.Text ) ;
        TextBox txtssn = (TextBox)gvDetails.Rows[e.RowIndex].FindControl("txtssn");
        TextBox txtfirst = (TextBox)gvDetails.Rows[e.RowIndex].FindControl("txtfirst");
        TextBox txtlast = (TextBox)gvDetails.Rows[e.RowIndex].FindControl("txtlast");
        TextBox txtadd = (TextBox)gvDetails.Rows[e.RowIndex].FindControl("txtadd");
        TextBox txtcity = (TextBox)gvDetails.Rows[e.RowIndex].FindControl("txtcity");
        TextBox txtstate = (TextBox)gvDetails.Rows[e.RowIndex].FindControl("txtstate");
        TextBox txtcountry = (TextBox)gvDetails.Rows[e.RowIndex].FindControl("txtcountry");
        TextBox txtzip = (TextBox)gvDetails.Rows[e.RowIndex].FindControl("txtzip");
        TextBox txtdob = (TextBox)gvDetails.Rows[e.RowIndex].FindControl("txtdob");
        TextBox txtgen = (TextBox)gvDetails.Rows[e.RowIndex].FindControl("txtgen");
        TextBox txtno = (TextBox)gvDetails.Rows[e.RowIndex].FindControl("txtno");
        TextBox txtemail = (TextBox)gvDetails.Rows[e.RowIndex].FindControl("txtemail");
        TextBox txtbld = (TextBox)gvDetails.Rows[e.RowIndex].FindControl("txtbld");
        TextBox t2=(TextBox ) gvDetails.Rows[e.RowIndex].FindControl("txtrace");
        int  txtrace = Convert.ToInt32 (t2.Text);
        TextBox t3=(TextBox ) gvDetails.Rows[e.RowIndex].FindControl("txtlang");
        int txtlang = Convert.ToInt32 (t3.Text);

        //TextBox txtDesignation = (TextBox)gvDetails.Rows[e.RowIndex].FindControl("txtstate");
        con.Open();
        SqlCommand cmd = new SqlCommand("update Patient set MRN='" + txtmrn + "', SSN='" + txtssn.Text + "', FirstName='" + txtfirst.Text + "', LastName='" + txtlast.Text + "', Address='" + txtadd.Text + "', City='" + txtcity.Text + "', State='" + txtstate.Text + "', Country='" + txtcountry.Text + "', ZipCode='" + txtzip.Text + "', DOB='" + txtdob.Text + "', Gender='" + txtgen.Text + "', ContactNo='" + txtno.Text + "', Email='" + txtemail.Text + "', BloodGroup='" + txtbld.Text + "', RaceId='" + txtrace + "', LanguageId='" + txtlang + "' where PatientId=" + PatientId, con);
        cmd.ExecuteNonQuery();
        con.Close();
        lblresult.ForeColor = Color.Green;
        lblresult.Text = FirstName + " Details Updated successfully";
        gvDetails.EditIndex = -1;
        Bind();
    }

    protected void gvDetails_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gvDetails.EditIndex = -1;
        Bind();
    }

    protected void gvDetails_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int patientid = Convert.ToInt32(gvDetails.DataKeys[e.RowIndex].Values["PatientId"].ToString());
        string name = gvDetails.DataKeys[e.RowIndex].Values["FirstName"].ToString();
        con.Open();
        SqlCommand cmd = new SqlCommand("delete from Patient where PatientId=" + patientid, con);
        int result = cmd.ExecuteNonQuery();
       
        con.Close();
        if (result == 1)
        {
            Bind();
            lblresult.ForeColor = Color.Red;
            lblresult.Text = name + " details deleted successfully";
        }
        
    }

    protected void gvDetails_RowDataBound(object sender, GridViewRowEventArgs e)
    {

        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            //getting username from particular row
            string username = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "FirstName"));
            //identifying the control in gridview
            ImageButton lnkbtnresult = (ImageButton)e.Row.FindControl("imgbtnDelete");
            //raising javascript confirmationbox whenver user clicks on link button
            if (lnkbtnresult != null)
            {
                lnkbtnresult.Attributes.Add("onclick", " javascript : return ConfirmationBox('" + username  + "')");
            }

        }
    }

    protected void gvDetails_RowCommand(object sender, GridViewCommandEventArgs e)
    {
       
        if (e.CommandName.Equals("AddNew"))
       {
            TextBox t1 = (TextBox)gvDetails.FooterRow.FindControl("txtftrmrn");
            int txtmrn = Convert.ToInt32(t1.Text);
            TextBox txtssn = (TextBox)gvDetails.FooterRow.FindControl("txtftrssn");
            TextBox txtfirst = (TextBox)gvDetails.FooterRow.FindControl("txtftrfirst");
            TextBox txtlast = (TextBox)gvDetails.FooterRow.FindControl("txtftrlast");
            TextBox txtadd = (TextBox)gvDetails.FooterRow.FindControl("txtftradd");
            TextBox txtcity = (TextBox)gvDetails.FooterRow.FindControl("txtftrcity");
            TextBox txtstate = (TextBox)gvDetails.FooterRow.FindControl("txtftrstate");
            TextBox txtcountry = (TextBox)gvDetails.FooterRow.FindControl("txtftrcountry");
            TextBox txtzip = (TextBox)gvDetails.FooterRow.FindControl("txtftrzip");
            TextBox txtdob = (TextBox)gvDetails.FooterRow.FindControl("txtftrdob");
            TextBox txtgen = (TextBox)gvDetails.FooterRow.FindControl("txtftrgen");
            TextBox txtno = (TextBox)gvDetails.FooterRow.FindControl("txtftrno");
            TextBox txtemail = (TextBox)gvDetails.FooterRow.FindControl("txtftremail");
            TextBox txtbld = (TextBox)gvDetails.FooterRow.FindControl("txtftrbld");
            TextBox t2 = (TextBox)gvDetails.FooterRow.FindControl("txtftrrace");
            int txtrace = Convert.ToInt32(t2.Text);
            TextBox t3 = (TextBox)gvDetails.FooterRow.FindControl("txtftrlang");
            int txtlang = Convert.ToInt32(t3.Text);

            con.Open();
            SqlCommand cmd =
                new SqlCommand(
                    "insert into Patient(MRN,SSN,FirstName,LastName,Address,City,State,Country,ZipCode,DOB,Gender,ContactNo,Email,BloodGroup,RaceId,LanguageId) values('" + txtmrn + "','" + txtssn.Text + "','" + txtfirst.Text + "','" + txtlast.Text + "','" + txtadd.Text + "','" + txtcity.Text + "','" + txtstate.Text + "','" + txtcountry.Text + "','" + txtzip.Text + "','" + txtdob.Text + "','" + txtgen.Text + "','" + txtno.Text + "','" + txtemail.Text + "','" + txtbld.Text + "','" + txtrace + "','" + txtlang + "')", con);
            int result = cmd.ExecuteNonQuery();
            con.Close();
            if (result == 1)
            {
                Bind();
                lblresult.ForeColor = Color.Green;
                lblresult.Text = txtfirst.Text + " Details inserted successfully";
            }
            else
            {
                lblresult.ForeColor = Color.Red;
                lblresult.Text = txtfirst.Text + " Details not inserted";
            }


        }


    }
   
    protected void sic(object sender, EventArgs e)
    {
      
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "" || TextBox2.Text == "")
        {
        }
        else
        {
            string query = "select * from Patient";
            int flag = 0;
            c1.read(query);
            while (c1.rdr.Read())
            {
                int pid = c1.rdr.GetInt32(0);
                int str1 = c1.rdr.GetInt32(1);
                string str2 = c1.rdr.GetString(3);
                string dob = c1.rdr.GetString(10);
                string email = c1.rdr.GetString(13);

                if (Convert.ToInt32(TextBox2.Text) == str1 && TextBox1.Text == str2)
                {
                    this.Session["patientId"] = pid;
                    this.Session["patientname"] = TextBox1.Text;
                    this.Session["patientdob"] = dob;
                     this.Session["email"]=email;
                    flag = 1;
                    break;
                }
            }
          
            con.Close();
        if (flag == 1)
        {


           
                
            Response.Redirect("visitdetails.aspx");
            }
            else
            {
               
                TextBox1.Text = "";
                TextBox2.Text = "";
            }
        }
        
    }

    public void search(object sender, EventArgs e)
    {
        string pname=gvDetails.SelectedDataKey.Values["FirstName"].ToString();
        
        int mrn = Convert.ToInt32(gvDetails.SelectedDataKey.Values["MRN"]);
        
        string query = "select * from Patient where FirstName='"+pname+"' and MRN='"+mrn+"'";
        int flag = 0;
        c1.read(query);
        while (c1.rdr.Read())
        {
            int pid = c1.rdr.GetInt32(0);
            int str1 = c1.rdr.GetInt32(1);
            string str2 = c1.rdr.GetString(3);
            string dob = c1.rdr.GetString(10);
            string email=c1.rdr.GetString(13);
           
                this.Session["patientId"] = pid;
                this.Session["patientname"] = str2;
                this.Session["patientdob"] = dob;
                this.Session["email"]=email;
                flag = 1;
                break;
           
        }
       
        con.Close();
        if (flag == 1)
        {
            
            Response.Redirect("visitdetails.aspx");
        }
        
    }  
}



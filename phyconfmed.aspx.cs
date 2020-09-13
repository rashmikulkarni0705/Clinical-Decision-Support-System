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

public partial class phyconfmed : System.Web.UI.Page
{
    private SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Radhika\\Desktop\\cdssfinal\\App_Data\\CDSSdb.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
//            ((LinkButton)Master.FindControl("LinkButton9")).ForeColor = System.Drawing.Color.Black;
       
            Bind();
        }
    }
    protected void Bind()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from MedicineList", con);
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
            gvDetails.Rows[0].Cells[0].ColumnSpan = columncount;
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
        int MedicineId = Convert.ToInt32(gvDetails.DataKeys[e.RowIndex].Value.ToString());
        string MedicineName = gvDetails.DataKeys[e.RowIndex].Values["MedicineName"].ToString();
        TextBox txtmed = (TextBox)gvDetails.Rows[e.RowIndex].FindControl("txtmed");
        con.Open();
        SqlCommand cmd = new SqlCommand("update MedicineList set MedicineName='" + txtmed.Text + "' where MedicineId=" + MedicineId, con);
        cmd.ExecuteNonQuery();
        con.Close();
        lblresult.ForeColor = Color.Green;
        lblresult.Text = MedicineName + " Details Updated successfully";
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
        int medid = Convert.ToInt32(gvDetails.DataKeys[e.RowIndex].Values["MedicineId"].ToString());
        string medname = gvDetails.DataKeys[e.RowIndex].Values["MedicineName"].ToString();
        con.Open();
        SqlCommand cmd = new SqlCommand("delete from MedicineList where MedicineId=" + medid, con);
        try
        {
            int result = cmd.ExecuteNonQuery();
            con.Close();
            if (result == 1)
            {
                Bind();
                lblresult.ForeColor = Color.Red;
                lblresult.Text = medname + " details deleted successfully";
            }
        }
        catch
        {
            lblresult.ForeColor = Color.Red;
            lblresult.Text = medname + " already used!";
        }
    }

    protected void gvDetails_RowDataBound(object sender, GridViewRowEventArgs e)
    {

        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            //getting username from particular row
            string username = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "MedicineName"));
            //identifying the control in gridview
            ImageButton lnkbtnresult = (ImageButton)e.Row.FindControl("imgbtnDelete");
            //raising javascript confirmationbox whenver user clicks on link button
            if (lnkbtnresult != null)
            {
                lnkbtnresult.Attributes.Add("onclick", " javascript : return ConfirmationBox('" + username + "')");
            }

        }
    }

    protected void gvDetails_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName.Equals("AddNew"))
        {
            TextBox txtUsrname = (TextBox)gvDetails.FooterRow.FindControl("txtftrusrname");

            con.Open();
            SqlCommand cmd =
                new SqlCommand(
                    "insert into MedicineList(MedicineName) values('" + txtUsrname.Text + "')", con);
            int result = cmd.ExecuteNonQuery();
            con.Close();
            if (result == 1)
            {
                Bind();
                lblresult.ForeColor = Color.Green;
                lblresult.Text = txtUsrname.Text + " Details inserted successfully";
            }
            else
            {
                lblresult.ForeColor = Color.Red;
                lblresult.Text = txtUsrname.Text + " Details not inserted";
            }


        }


    }

    protected void gvDetails_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void imgbtnEdit_Click(object sender, ImageClickEventArgs e)
    {

    }
}



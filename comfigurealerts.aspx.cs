using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;

public partial class comfigurealerts : System.Web.UI.Page
{
    private SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Radhika\\Desktop\\cdssfinal\\App_Data\\CDSSdb.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
            Bind();
        }
    }

    protected void Bind()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from Alert", con);
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
        int AlertId = Convert.ToInt32(gvDetails.DataKeys[e.RowIndex].Value.ToString());
        string MedicineName1 = gvDetails.DataKeys[e.RowIndex].Values["MedicineName1"].ToString();
        string MedicineName2 = gvDetails.DataKeys[e.RowIndex].Values["MedicineName2"].ToString();
        string Remark = gvDetails.DataKeys[e.RowIndex].Values["Remark"].ToString();
       
        TextBox txtmed1 = (TextBox)gvDetails.Rows[e.RowIndex].FindControl("txtmed1");
        TextBox txtmed2 = (TextBox)gvDetails.Rows[e.RowIndex].FindControl("txtmed2");
        TextBox txtmed3 = (TextBox)gvDetails.Rows[e.RowIndex].FindControl("txtmed3");
       
        con.Open();
        SqlCommand cmd = new SqlCommand("update Alert set MedicineName1='" + txtmed1.Text + "', MedicineName2='"+txtmed2.Text+"' , Remark='"+txtmed3.Text+"' where AlertId='" + AlertId+"'", con);
        cmd.ExecuteNonQuery();
        con.Close();
        lblresult.ForeColor = Color.Green;
        lblresult.Text = MedicineName1 +  " Details Updated successfully";
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
        int alertid = Convert.ToInt32(gvDetails.DataKeys[e.RowIndex].Values["AlertId"].ToString());
        string medname = gvDetails.DataKeys[e.RowIndex].Values["MedicineName1"].ToString();
        con.Open();
        SqlCommand cmd = new SqlCommand("delete from Alert where AlertId=" + alertid, con);
        int result = cmd.ExecuteNonQuery();
        con.Close();
        if (result == 1)
        {
            Bind();
            lblresult.ForeColor = Color.Red;
            lblresult.Text = medname + " details deleted successfully";
        }
    }

    protected void gvDetails_RowDataBound(object sender, GridViewRowEventArgs e)
    {

        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            
            string username = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "MedicineName1"));
            
            ImageButton lnkbtnresult = (ImageButton)e.Row.FindControl("imgbtnDelete");
            
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
            DropDownList Dlist1 = (DropDownList)gvDetails.FooterRow.FindControl("DropDownList3");
            DropDownList Dlist2 = (DropDownList)gvDetails.FooterRow.FindControl("DropDownList4");
           
            TextBox txtUsrname3 = (TextBox)gvDetails.FooterRow.FindControl("txtftrusrname3");

            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Alert(MedicineName1,MedicineName2,Remark) values('" + Dlist1.Text + "','" + Dlist2.Text + "','" + txtUsrname3.Text + "')", con);
            int result = cmd.ExecuteNonQuery();
            con.Close();
            if (result == 1)
            {
                Bind();
                lblresult.ForeColor = Color.Green;
                lblresult.Text = Dlist1.Text +" "+ Dlist2.Text +" "+ txtUsrname3.Text+ " Details inserted successfully";
            }
            else
            {
                lblresult.ForeColor = Color.Red;
                lblresult.Text = Dlist1.Text + " Details not inserted";
            }


        }


    }

    protected void imgbtnEdit_Click(object sender, ImageClickEventArgs e)
    {

    }

    protected void gvDetails_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
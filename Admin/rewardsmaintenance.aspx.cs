using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_rewardsmaintenance : System.Web.UI.Page
{
    connectioncode obj = new connectioncode();
    protected void Page_Load(object sender, EventArgs e)
    {
        gdv1();
    }
    protected void gdv1()
    {
        obj.connect();
        SqlCommand cmd = new SqlCommand("Select * from supermarket_reward order by reward_date", obj.con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        obj.con.Close();
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        else
        {
            ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
            GridView1.DataSource = ds;
            GridView1.DataBind();
            int columncount = GridView1.Rows[0].Cells.Count;
            GridView1.Rows[0].Cells.Clear();
            GridView1.Rows[0].Cells.Add(new TableCell());
            GridView1.Rows[0].Cells[0].ColumnSpan = columncount;
            GridView1.Rows[0].Cells[0].Text = "No Records Found";
        }

    }
    protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        gdv1();
    }
    protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
        Label lbldeleteid = (Label)row.FindControl("lblID");
        obj.connect();
        SqlCommand cmd = new SqlCommand("delete FROM supermarket_reward where reward_id='" + Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()) + "'", obj.con);
        cmd.ExecuteNonQuery();
        obj.con.Close();
        gdv1();

    }
    protected void OnRowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        gdv1();
    }
    protected void OnRowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        gdv1();
    }
    protected void OnRowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int userid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
        GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
        Label lblID = (Label)row.FindControl("lblID");


        TextBox textc1 = (TextBox)row.Cells[1].Controls[0];
        TextBox textc2 = (TextBox)row.Cells[2].Controls[0];
        TextBox textc3 = (TextBox)row.Cells[3].Controls[0];
       


        GridView1.EditIndex = -1;
        obj.connect();

        SqlCommand cmd = new SqlCommand("update supermarket_reward set reward_name='" + textc1.Text + "', reward_point ='" + textc2.Text + "' ,reward_gift='" + textc3.Text + "' where reward_id= '" + Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()) + "'", obj.con);
        cmd.ExecuteNonQuery();
        obj.con.Close();
        gdv1();

    }
}
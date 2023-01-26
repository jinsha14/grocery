using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class customer_viewmonthlypack : System.Web.UI.Page
{
    connectioncode obj = new connectioncode();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lblcid.Text = Session["regid"].ToString();
            //lblcid.Text = "7865";
            gdv1();
            obj.dr = obj.cmreader("select count(Product_Id) from supermarket_monthlypack where user_regid='" + lblcid.Text + "'");
            while (obj.dr.Read())
            {
                lblitems.Text = obj.dr[0].ToString();
            }
            obj.dr.Close();

            obj.dr = obj.cmreader("select sum(TotalAmount) from supermarket_monthlypack where user_regid='" + lblcid.Text + "'");
            while (obj.dr.Read())
            {
                lblamt.Text = obj.dr[0].ToString();
            }
            obj.dr.Close();

           
        }
    }
    protected void gdv1()
    {
        obj.connect();
        SqlCommand cmd = new SqlCommand("Select * from supermarket_monthlypack where user_regid='" + lblcid.Text + "' ", obj.con);
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
    protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
        Label lbldeleteid = (Label)row.FindControl("lblID");
        obj.connect();
        SqlCommand cmd = new SqlCommand("delete FROM supermarket_monthlypack where MId='" + Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()) + "'", obj.con);
        cmd.ExecuteNonQuery();
        obj.con.Close();
        gdv1();
        obj.dr = obj.cmreader("select count(Product_Id) from supermarket_monthlypack where user_regid='" + lblcid.Text + "'");
        while (obj.dr.Read())
        {
            lblitems.Text = obj.dr[0].ToString();
        }
        obj.dr.Close();

        obj.dr = obj.cmreader("select sum(TotalAmount) from supermarket_monthlypack where user_regid='" + lblcid.Text + "'");
        while (obj.dr.Read())
        {
            lblamt.Text = obj.dr[0].ToString();
        }
        obj.dr.Close();
       

    }
    protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        gdv1();
       
    }
}
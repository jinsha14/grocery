using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_viewmonthlypack : System.Web.UI.Page
{
    connectioncode obj = new connectioncode();
    protected void Page_Load(object sender, EventArgs e)
    {
        getid();
        
    }
    public void getid()
    {
        try
        {

            obj.dr = obj.cmreader("select distinct(user_regid) from supermarket_monthlypack ");
            while (obj.dr.Read())
            {
                drpcustid.Items.Add(obj.dr["user_regid"].ToString());

            }
            drpcustid.Items.Insert(0, "--Select CustomerId--");
            //obj.dr.Close();

        }
        catch (Exception ex)
        {
            Response.Write("<script>alert(\"" + ex.ToString() + "\")</script>");

        }
    }
    protected void gdv1()
    {
        obj.connect();
        SqlCommand cmd = new SqlCommand("Select * from supermarket_monthlypack where user_regid='" + drpcustid.Text + "' ", obj.con);
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        gdv1();
    }
}
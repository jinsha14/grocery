using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_cartupdation : System.Web.UI.Page
{
    connectioncode obj = new connectioncode();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
         
            gdv1();
            gdv2();
        }
    }
    protected void gdv1()
    {
        obj.connect();
        SqlCommand cmd = new SqlCommand("Select user_cart_id as CartId,user_reg_id as UserID,product_id AS ProductId,product_name as ProductName,product_quantity as Quantity, product_weight as Weight,product_finalprice as FinalPrice,product_cartdate as CartDate from supermarket_user_cartdetails where product_dstatus='Not Delivered'", obj.con);
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
    protected void gdv2()
    {
        obj.connect();
        SqlCommand cmd = new SqlCommand("Select user_cart_id as CartId,user_reg_id as UserID,product_id AS ProductId,product_name as ProductName,product_quantity as Quantity, product_weight as Weight,product_finalprice as FinalPrice,product_cartdate as CartDate from supermarket_user_cartdetails where product_dstatus='Delivered'", obj.con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        obj.con.Close();
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView2.DataSource = ds;
            GridView2.DataBind();
        }
        else
        {
            ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
            GridView2.DataSource = ds;
            GridView2.DataBind();
            int columncount = GridView2.Rows[0].Cells.Count;
            GridView2.Rows[0].Cells.Clear();
            GridView2.Rows[0].Cells.Add(new TableCell());
            GridView2.Rows[0].Cells[0].ColumnSpan = columncount;
            GridView2.Rows[0].Cells[0].Text = "No Records Found";
        }

    }
    protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        gdv1();
        GridView2.PageIndex = e.NewPageIndex;
        gdv2();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        try
        {
            GridViewRow row = ((GridViewRow)((Control)sender).Parent.Parent);
            string cellvalue = row.Cells[1].Text;
            obj.cmnonquery("update supermarket_user_cartdetails set product_dstatus='Delivered' where user_cart_id='" + cellvalue + "'");
            Response.Write("<script>alert(\"Successfully Updated\")</script>");
            gdv1();
            gdv2();
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert(\"" + ex.ToString() + "\")</script>");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class customer_cartconfirm : System.Web.UI.Page
{
    connectioncode obj = new connectioncode();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lblcid.Text = Session["regid"].ToString();
            //lblcid.Text = "7865";
            gdv1();
            obj.dr = obj.cmreader("select count(product_id) from supermarket_user_cartdetails where user_reg_id='" + lblcid.Text + "'and product_cartdate='" + System.DateTime.Now.ToShortDateString() + "' and product_status='Not Confirm'");
            while (obj.dr.Read())
            {
                lblitems.Text = obj.dr[0].ToString();
            }
            obj.dr.Close();

            obj.dr = obj.cmreader("select sum(product_finalprice) from supermarket_user_cartdetails where user_reg_id='" + lblcid.Text + "'and product_cartdate='" + System.DateTime.Now.ToShortDateString() + "' and product_status='Not Confirm'");
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
        SqlCommand cmd = new SqlCommand("Select * from supermarket_user_cartdetails where user_reg_id='" + lblcid.Text + "' and product_cartdate='" + System.DateTime.Now.ToShortDateString() + "' and product_status='Not Confirm'", obj.con);
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
        SqlCommand cmd = new SqlCommand("delete FROM supermarket_user_cartdetails where user_cart_id='" + Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()) + "'", obj.con);
        cmd.ExecuteNonQuery();
        obj.con.Close();
        gdv1();
        obj.dr = obj.cmreader("select count(product_id) from supermarket_user_cartdetails where user_reg_id='" + lblcid.Text + "'and product_cartdate='" + System.DateTime.Now.ToShortDateString() + "' and product_status='Not Confirm'");
        while (obj.dr.Read())
        {
            lblitems.Text = obj.dr[0].ToString();
        }
        obj.dr.Close();

        obj.dr = obj.cmreader("select sum(product_finalprice) from supermarket_user_cartdetails where user_reg_id='" + lblcid.Text + "'and product_cartdate='" + System.DateTime.Now.ToShortDateString() + "' and product_status='Not Confirm'");
        while (obj.dr.Read())
        {
            lblamt.Text = obj.dr[0].ToString();
        }
        obj.dr.Close();

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            obj.dr = obj.cmreader("select * from supermarket_reward where reward_date='" + System.DateTime.Now.ToShortDateString() + "'");
            while (obj.dr.Read())
            {
                lblrpoint.Text = obj.dr["reward_point"].ToString();
            }
            obj.dr.Close();
            int point = Convert.ToInt32(lblamt.Text);
            int rp = Convert.ToInt32(lblrpoint.Text);
            if (point >= rp)
            {
                obj.cmnonquery("insert into supermarket_custreward values('" + lblcid.Text + "','" + lblrpoint.Text + "','" + System.DateTime.Now.ToShortDateString() + "','" + lblamt.Text + "')");
                obj.cmnonquery("update supermarket_user_cartdetails set product_status='Confirm' where user_reg_id='" + lblcid.Text + "'and product_cartdate='" + System.DateTime.Now.ToShortDateString() + "'");
               // Response.Redirect("message.aspx");
                Session["amt"] = lblamt.Text;
                Session["qty"] = lblitems.Text;
                Response.Redirect("Payment.aspx");
            }
            else if (point < rp)
            {

                obj.cmnonquery("update supermarket_user_cartdetails set product_status='Confirm' where user_reg_id='" + lblcid.Text + "'and product_cartdate='" + System.DateTime.Now.ToShortDateString() + "'");
                //Response.Redirect("message.aspx");
                Session["amt"] = lblamt.Text;
                Session["qty"] = lblitems.Text;
                Response.Redirect("Payment.aspx");
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert(\"" + ex.ToString() + "\")</script>");
        }

    }
}
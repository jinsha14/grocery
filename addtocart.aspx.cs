using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class addtocart : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-LJLSRRQ;Initial Catalog=Abode;Integrated Security=True");
    connectioncode obj = new connectioncode();
    int count;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        lbluid.Text = Session["regid"].ToString();
        lblpid.Text = Session["pid"].ToString();
        con.Open();
        SqlCommand cmd = new SqlCommand("select count(product_id) from supermarket_user_cartdetails where user_reg_id='" + lbluid.Text + "' and product_id='"+lblpid.Text+"'", con);
        SqlDataReader rs = cmd.ExecuteReader();
        while (rs.Read())
        {
            count = rs.GetInt32(0);  
        }
        if (count > 3)
        {
            Label1.Visible = true;
            Label1.Text = "You have special offer for this product";
        }

        obj.dr = obj.cmreader("select * from supermarket_addproduct where product_id ='" + lblpid.Text + "'");
        if (obj.dr.HasRows)
        {
            if (obj.dr.Read())
            {
                Lblpname.Text = obj.dr["product_name"].ToString();
                lblpweight.Text = obj.dr["product_weight"].ToString();
                lblmrp.Text = obj.dr["product_MRP"].ToString();
            }
            obj.dr.Close();
        }

    }

    public void clear()
    {
        lblpid.Text = string.Empty;
        Lblpname.Text = string.Empty;
        lblpweight.Text = string.Empty;
        lblmrp.Text = string.Empty;
        lbltot.Text = string.Empty;
        drpcat.SelectedItem.Text = "--Select Quantity--";

    }

    protected void drpcat_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            int total = Convert.ToInt32(lblmrp.Text) * Convert.ToInt32(drpcat.Text);
            lbltot.Text = total.ToString();
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert(\"" + ex.ToString() + "\")</script>");
        }


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {

            obj.cmnonquery("insert into supermarket_user_cartdetails values('" + lbluid.Text + "','" + lblpid.Text + "','" + Lblpname.Text + "','" + drpcat.Text + "','" + lblpweight.Text + "','" + lblmrp.Text + "','" + lbltot.Text + "','" + System.DateTime.Now.ToShortDateString() + "','Not Confirm','Not Delivered')");
            Response.Write("<script>alert(\"Cart details added successfully \")</script>");
            clear();
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert(\"" + ex.ToString() + "\")</script>");
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Session["regid"] = lbluid.Text;
        Response.Redirect("customer/cartconfirm.aspx");
    }
    protected void discount_Click(object sender, EventArgs e)
    {
        int a = Convert.ToInt32(lbltot.Text);
        int dis = a - 20;
        lbltot.Text = dis.ToString();
    }
}
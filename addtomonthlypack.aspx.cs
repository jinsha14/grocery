using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class addtomonthlypack : System.Web.UI.Page
{
    connectioncode obj = new connectioncode();
    protected void Page_Load(object sender, EventArgs e)
    {
        lbluid.Text = Session["regid"].ToString();
        lblpid.Text = Session["pid"].ToString();


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

    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {

            obj.cmnonquery("insert into supermarket_monthlypack values('" + lbluid.Text + "','" + lblpid.Text + "','" + Lblpname.Text + "','" + drpcat.Text + "','" + lblpweight.Text + "','" + lblmrp.Text + "','" + lbltot.Text + "','" + System.DateTime.Now.ToShortDateString() + "')");
            Response.Write("<script>alert(\"Cart details added successfully \")</script>");
            clear();
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert(\"" + ex.ToString() + "\")</script>");
        }
    }
protected void  drpcat_SelectedIndexChanged(object sender, EventArgs e)
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
}
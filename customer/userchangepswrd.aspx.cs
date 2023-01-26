using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class customer_userchangepswrd : System.Web.UI.Page
{
    connectioncode obj = new connectioncode();
    protected void Page_Load(object sender, EventArgs e)
    {
        //lbluid.Text = "7865";
        lbluid.Text = Session["regid"].ToString();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {

            if (txtcnfrmpssd.Text == string.Empty || Txtnwpsswrd.Text == string.Empty)
            {
                Response.Write("<script>alert(\"please enter all textbox values\")</script>");
            }
            else
            {
                obj.cmnonquery("update supemarket_user_reg set user_password='" + Txtnwpsswrd.Text + "' where user_regid='" + lbluid.Text + "'");

                Response.Write("<script>alert(\"Successfully updated\")</script>");
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert(\"" + ex.ToString() + "\")</script>");
        }

    }
    protected void txtcnfrmpssd_TextChanged(object sender, EventArgs e)
    {

    }
}
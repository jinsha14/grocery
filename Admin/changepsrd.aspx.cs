using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_changepsrd : System.Web.UI.Page
{
    connectioncode obj = new connectioncode();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (txtcnfrmpssd.Text== string.Empty||Txtnwpsswrd.Text==string.Empty)
        {
            Response.Write("<script>alert(\"please enter all textbox values\")</script>");
        }
        else
        {
            obj.cmnonquery("update supermarket_login set log_password='" + Txtnwpsswrd.Text + "' where log_username='Admin'");

            Response.Write("<script>alert(\"Successfully updated\")</script>");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class forgotpassword : System.Web.UI.Page
{
    connectioncode obj = new connectioncode();

    protected void Page_Load(object sender, EventArgs e)
    {


    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        try
        {
            obj.dr = obj.cmreader("select * from supermarket_user_reg where user_emailid='" + Txtforpass.Text + "'");
            if (obj.dr.Read())
            {
                if (obj.dr.HasRows)
                {
                    lblpassword.Text = obj.dr["user_password"].ToString();
                }
                else
                {
                    Response.Write("<script>alert(\"invalid emailid\")</script>");
                }
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert(\"" + ex.ToString() + "\")</script>");
        }
    }


}
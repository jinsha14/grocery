using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

public partial class login : System.Web.UI.Page
{
    connectioncode obj = new connectioncode();
    

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {



        try
        {

            if (txtuser.Text.Trim() == "admin")
            {
                obj.dr = obj.cmreader("select * from  supermarket_login where log_username='" + txtuser.Text + "' ");
                if (obj.dr.Read())
                {

                    if (txtuser.Text == obj.dr["log_username"].ToString() && txtpass.Text == obj.dr["log_password"].ToString())
                    {
                        Response.Redirect("Admin/adminhome.aspx");
                    }
                }
                else
                {
                    Response.Write("<script>alert(\"invalid username or password\")</script>");
                    txtpass.Text = string.Empty;
                    txtuser.Text = string.Empty;
                }
            }
            else
            {

                obj.dr = obj.cmreader("select * from  supemarket_user_reg where user_username='" + txtuser.Text + "'");
                if (obj.dr.Read())
                {

                    if (txtuser.Text == obj.dr["user_username"].ToString() && txtpass.Text == obj.dr["user_password"].ToString())
                    {
                        Session["regid"] = obj.dr["user_regid"].ToString();
                        Response.Redirect("customer/customerhome.aspx");
                    }


                }
                else
                {
                    Response.Write("<script>alert(\"invalid username or password\")</script>");
                    txtpass.Text = string.Empty;
                    txtuser.Text = string.Empty;
                }
            }

        }


        catch (Exception ex)
        {
            Response.Write("<script>alert(\"'" + ex.ToString() + "'\")</script>");
        }
    }
}
       
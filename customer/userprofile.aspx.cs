using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class customer_userprofile : System.Web.UI.Page
{
    connectioncode obj = new connectioncode();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           // lblcid.Text = "7865";
            lblcid.Text = Session["regid"].ToString();
            getdata();
        }
    }
    public void getdata()
    {
        obj.dr = obj.cmreader("select * from supemarket_user_reg where user_regid ='" + lblcid.Text + "'");
        if (obj.dr.HasRows)
        {
            if (obj.dr.Read())
            {
                txtname.Text = obj.dr["user_name"].ToString();
                txtmobile.Text = obj.dr["user_mobile"].ToString();
                txtemail.Text = obj.dr["user_emailid"].ToString();
                txtaddress.Text = obj.dr["user_address"].ToString();
                txtpincode.Text = obj.dr["user_pincode"].ToString();
            }
            obj.dr.Close();
        }
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        try
        {
            obj.cmnonquery("update supemarket_user_reg set user_mobile='" + txtmobile.Text + "',user_emailid='" + txtemail.Text + "',user_address='" + txtaddress.Text + "',user_pincode='" + txtpincode.Text + "' where user_regid ='" + lblcid.Text + "'");
            Response.Write("<script>alert(\"Successfully Updated\")</script>");
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert(\"" + ex.ToString() + "\")</script>");
        }
    }
}
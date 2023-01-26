using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class customer_feedback : System.Web.UI.Page
{
    connectioncode obj=new connectioncode();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lblcid.Text = Session["regid"].ToString();
            //lblcid.Text = "7865";
            getdata();
        }
    }
    public void getdata()
    {
        obj.dr=obj.cmreader("select * from supemarket_user_reg where user_regid ='"+lblcid.Text+"'");
            if(obj.dr.HasRows)

            {
                if(obj.dr.Read())
                {
                    txtname.Text = obj.dr["user_name"].ToString();
                    txtmobile.Text = obj.dr["user_mobile"].ToString();
                    txtemail.Text = obj.dr["user_emailid"].ToString();
                }
                obj.dr.Close();
            }
    }
    
    protected void Button1_Click1(object sender, EventArgs e)
    {
        try
        {
            if (txtaddress.Text == string.Empty || txtemail.Text == string.Empty || txtmobile.Text == string.Empty || txtname.Text == string.Empty)
            {
                Response.Write("<script>alert(\"please enter all textbox values\")</script>");
            }
            
            else
            {
               


                    obj.cmnonquery("insert into supermarket_user_feedback values('" + lblcid.Text + "','" + txtname.Text + "','" + txtemail.Text + "','" + txtmobile.Text + "','" + txtaddress.Text + "','"+System .DateTime .Now .ToShortDateString ()+"')");
               
                Response.Write("<script>alert(\" Successfully \")</script>");
               

            }



        }
        catch (Exception ex)
        {
            Response.Write("<script>alert(\"" + ex.ToString() + "\")</script>");
        }

    }
    protected void clear()
    {
        txtname.Text = string.Empty;
        txtmobile.Text = string.Empty;
        txtemail.Text = string.Empty;
        txtaddress.Text = string.Empty;
    }
}
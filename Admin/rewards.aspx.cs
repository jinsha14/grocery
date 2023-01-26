using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient ;
using System.Configuration;
using System.IO;
public partial class Admin_rewards : System.Web.UI.Page
{
    byte[] imgarray;
    string base64string;
    connectioncode obj = new connectioncode();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void clear()
    {
        txtgift.Text = string.Empty;
        txtpoints.Text = string.Empty;
        Txtrwnm.Text = string.Empty;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (Txtrwnm.Text == string.Empty || txtpoints.Text == string.Empty || txtgift.Text == string.Empty)
        {
            Response.Write("<script>alert(\"please enter all textbox values\")</script>");
        }
        else
        {

            try
            {
                obj.cmnonquery("insert into supermarket_reward values('" + Txtrwnm.Text + "','" + txtpoints.Text + "','" + txtgift.Text + "','"+System .DateTime .Now .ToShortDateString ()+"')");
                Response.Write("<script>alert(\"Reward Details added Successfully\")</script>");
                clear();
              
            }

            catch (Exception ex)
            {
                lblerror.Visible = true;
                lblerror.Text = ex.Message.ToString();
            }

        }
          
        }
    
}
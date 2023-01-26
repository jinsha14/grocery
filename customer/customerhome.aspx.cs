using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

public partial class customer_customerhome : System.Web.UI.Page
{
    connectioncode obj = new connectioncode();

    protected void Page_Load(object sender, EventArgs e)
    {
        lblcid.Text = Session["regid"].ToString();
        //lblcid.Text = "7865";


    }
     protected void Button1_Click1(object sender, EventArgs e)
    {


        
    }
}
   

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

public partial class contactus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void sendmail()
    {
        var fromAddress = "dmartgrocery@gmail.com";// Gmail Address from where you send the mail
        var toAddress = "dmartgrocery@gmail.com";// txtto.Text.ToString();
        const string fromPassword = "dmart@123";//Password of your gmail address
        string subject = "FROM STARTEERKIT-YOUR LOGIN DETAILS";
        string msg = "\nFROM : " + txtname.Text + "\n\nMOBILE : " + txtmobilenumber .Text  + "\n\nE-MAIL : " + txtemailid .Text  +"\n\nSUBJECT : " + txtsubject .Text + "\n\nMESSAGE : " + txtmessage .Text ;
        string body = msg;

        var smtp = new System.Net.Mail.SmtpClient();
        {
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
            smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
            smtp.Timeout = 20000;
        }
        smtp.Send(fromAddress, toAddress, subject, body);
    }
    public void clear()
    {
        txtemailid.Text = string.Empty;
        txtmessage.Text = string.Empty;
        txtmobilenumber.Text = string.Empty;
        txtname.Text = string.Empty;
        txtsubject.Text = string.Empty;
    }
    protected void btnsend_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtemailid.Text == string.Empty || txtmessage.Text == string.Empty || txtmobilenumber.Text == string.Empty || txtname.Text == string.Empty || txtsubject.Text == string.Empty)
            {
                Response.Write("<script>alert(\"please enter all textbox values\")</script>");
            }
            else
            {
                sendmail();
                Response.Write("<script>alert(\"Successfully Send\")</script>");
                clear();
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert(\""+ex+"\")</script>");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

public partial class Registration : System.Web.UI.Page
{
    connectioncode obj = new connectioncode();
    string username, password;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void clear()
    {
        txtname.Text = string.Empty;
        txtemail.Text = string.Empty;
        txtmobile.Text = string.Empty;
        txtpincode.Text = string.Empty;
        txtaddress.Text = string.Empty;

    }
    public void sendmail()
    {
        var fromAddress = "supermarket.demart99@gmail.com";// Gmail Address from where you send the mail
        var toAddress = txtemail.Text;// txtto.Text.ToString();
        const string fromPassword = "demart.99";//Password of your gmail address
        string subject = "FROM ABODE-YOUR LOGIN DETAILS";
        string msg = "\nYour Unique UserName : " + txtemail.Text + "\n\nPassword : " + password ;
        string body = msg;

        var smtp = new System.Net.Mail.SmtpClient();
        {
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
            smtp.Credentials = new NetworkCredential(fromAddress.Trim(), fromPassword.Trim());
            smtp.Timeout = 20000;
        }
        smtp.Send(fromAddress, toAddress, subject, body);
    }
  
    protected void Button1_Click1(object sender, EventArgs e)
    {
        try
        {
            if (txtaddress.Text == string.Empty || txtemail.Text == string.Empty || txtmobile.Text == string.Empty || txtname.Text == string.Empty || txtpincode.Text == string.Empty)
            {
                Response.Write("<script>alert(\"please enter all textbox values\")</script>");
            }
            if (txtmobile.Text != string.Empty )
            {
                obj.dr = obj.cmreader("select * from  supemarket_user_reg where user_mobile='" + txtmobile.Text + "' ");
                obj.dr.Read();
                
                    if (obj.dr.HasRows)
                    {
                        Response.Write("<script>alert(\"mobilenumber already exist\")</script>");
                    }
                
                obj.dr.Close();
            }
            if(txtemail.Text != string.Empty)
            {

                obj.dr = obj.cmreader("select * from  supemarket_user_reg where user_emailid='" + txtemail.Text + "' ");
                obj.dr.Read();
                
                    if (obj.dr.HasRows)
                    {
                        Response.Write("<script>alert(\"emailid already exist\")</script>");
                    }
              
                obj.dr.Close();
            }
            if (txtemail.Text != string.Empty && txtmobile.Text != string.Empty)
            {

                obj.dr = obj.cmreader("select * from  supemarket_user_reg where user_emailid = '" + txtemail.Text + "' and user_mobile = '" + txtmobile.Text + "' ");
                obj.dr.Read();
                if (!obj.dr.HasRows)
                     {

                         password = txtname.Text.Substring(1, 2).ToString() + txtemail.Text.Substring(2, 4).ToString() + txtmobile.Text.Substring(3, 2).ToString();
                         obj.cmnonquery("insert into supemarket_user_reg values('" + txtname.Text + "','" + txtmobile.Text + "','" + txtemail.Text + "','" + txtaddress.Text + "','" + txtpincode.Text + "','" + txtemail.Text + "','" + password + "','" + System.DateTime.Now.ToShortDateString() + "','" + System.DateTime.Now.ToShortTimeString() + "')");
                        sendmail();
                        Response.Write("<script>alert(\"Successfully Registered Please check your mail\")</script>");
                        clear();
                     }
                obj.dr.Close();
            }
                   
   

        }
        catch (Exception ex)
        {
            Response.Write("<script>alert(\"" + ex.ToString() + "\")</script>");
        }

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Payment : System.Web.UI.Page
{
    SqlConnection con =new SqlConnection("Data Source=DESKTOP-LJLSRRQ;Initial Catalog=Abode;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        lbluid.Text = Session["regid"].ToString();
        lblqunty.Text = Session["qty"].ToString();
        lblamt.Text = Session["amt"].ToString();

        con.Open();
        SqlCommand cmd = new SqlCommand("select user_name,user_mobile,user_emailid from supemarket_user_reg where user_regid='" + lbluid.Text + "'", con);
        SqlDataReader rs=cmd.ExecuteReader();
        while (rs.Read())

        {
            lblcname.Text = rs.GetString(0);
            pphn.Text = rs.GetString(1);
            pmail.Text = rs.GetString(2);
        }
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        con.Open();
        SqlCommand cmd = new SqlCommand("insert into PaymentDetails values('" + lbluid.Text + "','" + lblitem.Text + "','" + lblqunty.Text + "','" + lblamt.Text + "','" + pfname.Text + "','" + plname.Text + "','" + pcardno.Text + "','" + dmonth.SelectedItem.Text + "','" + dyear.SelectedItem.Text + "','" + pcode.Text + "','" + paddress.Text + "','" + ppincode.Text + "','"+pphn.Text+"','" + System.DateTime.Now.ToShortDateString() + "')", con);
        cmd.ExecuteNonQuery();
        Response.Redirect("message.aspx");
        con.Close();
    }
}
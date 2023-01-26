using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class userproductview : System.Web.UI.Page

{
   DataSet dt = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {

        lblcid.Text ="7873";
    ////if (!IsPostBack)
    ////    {
    
     
    
    ////}
    
   }
    protected void gdv1()

    {
       
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
        SqlCommand command = new SqlCommand("SELECT product_id,product_name,product_finalprice,product_image from supermarket_addproduct  where product_category = '" + drpcat.Text + "' order by  product_id", connection);
        SqlDataAdapter ada = new SqlDataAdapter(command);
        ada.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }



    protected void Button2_Click(object sender, EventArgs e)
    {
        gdv1();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        GridViewRow row = ((GridViewRow)((Control)sender).Parent.Parent);
        string cellvalue = row.Cells[0].Text;
        Session["pid"] = cellvalue;
        Session["uid"] = lblcid.Text;
        Response.Redirect("addtocart.aspx");

    }
}
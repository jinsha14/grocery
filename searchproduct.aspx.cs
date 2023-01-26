using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class searchproduct : System.Web.UI.Page
{
    DataSet dt = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }

        protected void gdv1()
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
        SqlCommand command = new SqlCommand("SELECT product_id,product_name,product_finalprice,product_image from supermarket_addproduct  where product_category = '"+drpcat.Text+"'  order by  product_id", connection);
        SqlDataAdapter ada = new SqlDataAdapter(command);
        ada.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }


    
    
    protected void txtsubmit_Click(object sender, EventArgs e)
    {
        gdv1();
    }
}
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
public partial class Addproduct : System.Web.UI.Page
{
    byte[] imgarray;
    string base64string;



    protected void Page_Load(object sender, EventArgs e)
    {
    }
    public void clear()
    {

        Txtpdnm.Text = string.Empty;
        txtbrand.Text = string.Empty;
        txtdict.Text = string.Empty;
        txtfnlprc.Text = string.Empty;
        txtmrp.Text = string.Empty;
        txtwgt.Text = string.Empty;
        txtqty.Text = string.Empty;
        Image1.ImageUrl = string.Empty;
    }

    protected void txtupld_Click(object sender, EventArgs e)
    {
        try
        {

            Byte[] imgByte = null;
            if (FileUpload1.HasFile && FileUpload1.PostedFile != null)
            {
                HttpPostedFile File = FileUpload1.PostedFile;
                imgByte = new Byte[File.ContentLength];
                File.InputStream.Read(imgByte, 0, File.ContentLength);
            }


            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
            SqlCommand com = new SqlCommand("insert into supermarket_addproduct(product_name,product_brand,product_category,product_weight,product_quantity,product_MRP,product_discount,product_finalprice,product_image,product_adddate)values(@product_name,@product_brand,@product_category,@product_weight,@product_quantity,@product_MRP,@product_discount,@product_finalprice,@product_image,@product_adddate)SELECT @@IDENTITY", connection);
            connection.Open();
            com.Parameters.AddWithValue("@product_name", SqlDbType.VarChar).Value = Txtpdnm.Text;
            com.Parameters.AddWithValue("@product_brand", SqlDbType.VarChar).Value = txtbrand.Text;
            com.Parameters.AddWithValue("@product_category", SqlDbType.VarChar).Value = drpcat.Text;
            com.Parameters.AddWithValue("@product_weight", SqlDbType.VarChar).Value = txtwgt.Text;
            com.Parameters.AddWithValue("@product_quantity", SqlDbType.Int).Value = txtqty.Text;
            com.Parameters.AddWithValue("@product_MRP", SqlDbType.VarChar).Value = txtmrp.Text;
            com.Parameters.AddWithValue("@product_discount", SqlDbType.VarChar).Value = txtdict.Text;
            com.Parameters.AddWithValue("@product_finalprice", SqlDbType.VarChar).Value = txtfnlprc.Text;
            com.Parameters.AddWithValue("@product_image", SqlDbType.Image).Value = imgByte;
            com.Parameters.AddWithValue("@product_adddate", SqlDbType.VarChar).Value = System.DateTime.Now.ToShortTimeString();


            int id = Convert.ToInt32(com.ExecuteScalar());
            Label1.Text = String.Format("ID is {0}", id);

            Image1.ImageUrl = "~/imageHandler.ashx?id=" + id;
            


            
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert(\"" + ex.ToString() + "\")</script>");
        }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {

        Response.Write("<script >alert(\"Successfully Added.\")</script>");
        clear();
    }
}



        
       




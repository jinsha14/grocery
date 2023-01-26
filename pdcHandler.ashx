<%@ WebHandler Language="C#" Class="pdcHandler" %>

using System;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public class pdcHandler : IHttpHandler {

    public void ProcessRequest(HttpContext context)
    {
        string pid = context.Request.QueryString["ImID"];
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
        connection.Open();
        SqlCommand command = new SqlCommand("select product_image from supermarket_addproduct WHERE product_id=" + pid, connection);
        SqlDataReader dr = command.ExecuteReader();
        dr.Read();
        context.Response.BinaryWrite((Byte[])dr[0]);
        connection.Close();
        context.Response.End();
    }

    public bool IsReusable
    {
        get
        {

            return false;
        }
    }

}
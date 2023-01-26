using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for connectioncode
/// </summary>
public class connectioncode
{
	
         public SqlCommand con1;
        public SqlDataReader dr;
        string str;
        public SqlConnection con=new SqlConnection();
        public string sid;
        public void connect()
        {
            if (con.State==ConnectionState.Open)
            {
                con.Close();
            }
            con.ConnectionString = "Data Source=DESKTOP-LJLSRRQ;Initial Catalog=Abode;Integrated Security=True";
            con.Open();
        }
    public void cmnonquery(string str)
    {
        connect();
        con1=new SqlCommand(str,con);
        con1.ExecuteNonQuery();    }
    public SqlDataReader cmreader(string str)
    {
        connect();
        con1=new SqlCommand(str,con);
        return con1.ExecuteReader();
    }

		//
		// TODO: Add constructor logic here
		//
	}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    SqlConnection conn;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Inter.mdf;Integrated Security=True");
        if (conn.State == ConnectionState.Open)
        {
            conn.Close();
        }
        conn.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        // to Login
        try
        {
            int counter = 0;
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from login";
            SqlDataReader dr = cmd.ExecuteReader();
            int k = 0;
            string id, pas;
            while (dr.Read())
            {
                id = dr.GetValue(0).ToString();
                pas = dr.GetValue(1).ToString();
                counter = int.Parse(dr.GetValue(2).ToString());
                if (id == TextBox1.Text && pas == TextBox2.Text)
                {
                    k = 1;
                    break;
                }
            }
            conn.Close();
            conn.Open();
            if (k == 1)
            {
                
                if (counter > 0)
                {
                    counter = counter - 1;
                    cmd.CommandText = "update login set counters='" + counter + "' where id='" + TextBox1.Text + "'";
                    cmd.ExecuteNonQuery();
                    Label4.Text = "";
                    Response.Write("<script>window.open('Search.aspx','_self')</script>");
                    
                }
                else
                {
                    Response.Write("<script>alert('Please Registred')</script>");
                }
            }
            else
            {
                Label4.Text = "Invaild Id and Password";
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        
    }
}
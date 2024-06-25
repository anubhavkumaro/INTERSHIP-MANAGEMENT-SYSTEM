using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
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
    protected void Button1_Click1(object sender, EventArgs e)
    {
        // To Delete The record
        try
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "delete from student where Mobile_Number='" + TextBox3.Text + "'";
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Record Deleted')</script>");
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            Response.Write("<script>window.open('Search.aspx','_self')</script>");

        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        // To Search The Record
        if (TextBox6.Text != "")
        {
            try
            {
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = "select * from student where Mobile_Number='" + TextBox6.Text + "'";
                SqlDataReader dr = cmd.ExecuteReader();
                int k = 0;
                while (dr.Read())
                {
                    TextBox1.Text = dr.GetValue(0).ToString();
                    TextBox2.Text = dr.GetValue(1).ToString();
                    TextBox3.Text = dr.GetValue(2).ToString();
                    TextBox4.Text = dr.GetValue(3).ToString();
                    TextBox5.Text = dr.GetValue(4).ToString();
                    k++;
                }
                if (k == 0)
                {
                    TextBox6.Text = "";
                    Response.Write("<script>alert('No Record Found')</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }

        }
        else
        {
            Response.Write("<script>alert('Enter The Mobile Number')</script>");
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        // To Update the Record
        try
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "update student set Name='" + TextBox1.Text + "',Father_Name='" + TextBox2.Text + "',Mobile_Number='" + TextBox3.Text + "',Email_ID='" + TextBox4.Text + "',Course_Name_Year_Sem='" + TextBox5.Text + "' where Mobile_Number='" + TextBox6.Text + "'";
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Record Updated')</script>");
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            Response.Write("<script>window.open('Search.aspx','_self')</script>");
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.open('Print.aspx','_self')</script>");
    }
}
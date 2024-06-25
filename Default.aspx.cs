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
       


        if (TextBox1.Text != "")
        {

            if (TextBox2.Text != "")
            {

                if (TextBox3.Text != "")
                {

                    if (TextBox4.Text != "")
                    {

                        if (TextBox5.Text != "")
                        {
                            try
                            {
                                SqlCommand cmd1 = conn.CreateCommand();
                                cmd1.CommandText = "select * from student where Mobile_Number='" + TextBox3.Text + "'";
                                SqlDataReader dr = cmd1.ExecuteReader();
                                int k = 0;
                                while (dr.Read())
                                {
                                    string m;
                                    m = dr.GetValue(2).ToString();
                                    if (m == TextBox3.Text)
                                    {
                                        k = 1;
                                    }
                                }
                                conn.Close();
                                if (k == 0)
                                {
                                    conn.Open();
                                    
                                    // To Save The Record
                                    try
                                    {
                                        SqlCommand cmd = conn.CreateCommand();
                                        cmd.CommandText = "insert into student values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')";
                                        cmd.ExecuteNonQuery();
                                        Response.Write("<script>alert('Record Saved')</script>");
                                        SqlDataSource1.SelectCommand = "select * from student";
                                        TextBox1.Text = "";
                                        TextBox2.Text = "";
                                        TextBox3.Text = "";
                                        TextBox4.Text = "";
                                        TextBox5.Text = "";
                                    }
                                    catch (Exception ex)
                                    {
                                        Response.Write(ex.ToString());
                                    }
                                }
                                else
                                {
                                    TextBox3.Text = "";
                                    Response.Write("<script>alert('Mobile Number Already Exist')</script>");
                                }
                            }
                            catch (Exception ex)
                            {
                                Response.Write(ex.ToString());
                            }



                        }
                        else
                        {
                            Response.Write("<script>alert('Enter The Course Name and Year or Semester')</script>");
                        }
                    }
                    else
                    {
                        Response.Write("<script>alert('Enter The Email_ID')</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Enter The Mobile Number')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Enter The Father's Name')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('Enter The Name')</script>");
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.open('Login.aspx')</script>");
    }
}
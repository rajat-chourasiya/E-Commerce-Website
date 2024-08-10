using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace MyEShoppingWebsite
{
    public partial class SignIn : System.Web.UI.Page


    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                if (Request.Cookies["UNAME"] != null && Request.Cookies["UPWD"] != null)
                {
                    txtUsername.Text = Request.Cookies["UNAME"].Value;
                    txtPass.Text = Request.Cookies["UPWD"].Value;
                    CheckBox1.Checked = true;
                }
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string connectionString = "Server=RAJAT-ASPIRE-A7; Database=MyEShoppingDB; Integrated Security=True;";
            string query = "SELECT * FROM tblUsers WHERE Username = @username AND Password = @pwd";

            using (SqlConnection con = new SqlConnection(connectionString))
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                cmd.Parameters.AddWithValue("@username", txtUsername.Text);
                cmd.Parameters.AddWithValue("@pwd", txtPass.Text); 

                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                if (dt.Rows.Count != 0)
                {
                   
                    if (CheckBox1.Checked)
                    {
                        Response.Cookies["UNAME"].Value = txtUsername.Text;
                        Response.Cookies["UPWD"].Value = txtPass.Text;

                        Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(10);
                        Response.Cookies["UPWD"].Expires = DateTime.Now.AddDays(10);
                    }
                    else
                    {
                        Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies["UPWD"].Expires = DateTime.Now.AddDays(-1);
                    }

                    /* Session["Username"] = txtUsername.Text;
                     Response.Redirect("~/UserHome.aspx"); */

                    string Utype;
                    Utype = dt.Rows[0][5].ToString().Trim();

                    if (Utype =="User")
                    {
                        Session["Username"]=txtUsername.Text;
                        Response.Redirect("~/UserHome.aspx");
                    }
                    if(Utype == "Admin")
                    {
                        Session["Username"] = txtUsername.Text;
                        Response.Redirect("~/AdminHome.aspx");

                    }
                    

                }
                else
                {
                    lblError.Text = "Invalid Username and Password";
                }

                
                clr();
            }
        }

        private void clr()
        {
            txtPass.Text = string.Empty;
            txtUsername.Text = string.Empty;
            txtUsername.Focus();
        }





        /*protected void Page_Load(object sender,EventArgs e)
        {
            if(!IsPostBack)
            {
                if (Request.Cookies["UNAME"]!=null && Request.Cookies["UPWD"]!=null)
                {
                    txtUsername.Text= Request.Cookies["UNAME"].Value;
                    txtPass.Text= Request.Cookies["UPWD"].Value;
                    CheckBox1.Checked = true;
                    
                }
            }

        }
       
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Server=RAJAT-ASPIRE-A7; Database=MyEShoppingDB; Integrated Security=True;");

            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from tblUsers where Username=@username and Password=@pwd",con);
            cmd.Parameters.AddWithValue("@username",txtUsername.Text);
            cmd.Parameters.AddWithValue("@pwd",txtPass.Text);
            SqlDataAdapter sda= new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if(dt.Rows.Count !=0 )
            {
                if(CheckBox1.Checked)
                {
                    Response.Cookies["UNAME"].Value = txtUsername.Text;     //Remember me
                    Response.Cookies["UPWD"].Value = txtPass.Text;

                    Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(10);
                    Response.Cookies["UPWD"].Expires = DateTime.Now.AddDays(10);
                }
                else
                {
                    Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["UPWD"].Expires = DateTime.Now.AddDays(-1);

                }

                Session["Username"] = txtUsername.Text;
                Response.Redirect("~/UserHome.aspx");

            }
            else
            {
                lblError.Text = "Invalid Username and Password";
            }


            //Response.Write("<script> alert('Login Successfully'); </script>");
            clr();
            //lblMsg.Text = "Registration Sucessfully Done";
            //lblMsg.Text = System.Drawing.Color.Green;
        }

        private void clr()
        {
            txtPass.Text= string.Empty;
            txtUsername.Text= string.Empty;
            txtUsername.Focus();
        }*/
    }

}

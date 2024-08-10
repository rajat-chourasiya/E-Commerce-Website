using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.EnterpriseServices.Internal;
using System.Diagnostics.Eventing.Reader;

namespace MyEShoppingWebsite
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtsignup_Click(object sender, EventArgs e)
        {
            if (isformvalid())
            {
                string username = txtUname.Text;
                string password = txtPass.Text;
                string email = txtEmail.Text;
                string name = txtName.Text;
                SqlConnection con = new SqlConnection("Server=RAJAT-ASPIRE-A7; Database=MyEShoppingDB; Integrated Security=True;");
             
                {
                    try
                    {
                        con.Open();

                        // Use parameterized queries to prevent SQL injection
                        string sql = "INSERT INTO tblUsers (Username, Password, Email, Name, Usertype) VALUES (@username, @password, @email, @name, 'User')";
                        SqlCommand cmd = new SqlCommand(sql, con);

                        cmd.Parameters.AddWithValue("@username", username);
                        cmd.Parameters.AddWithValue("@password", password);
                        cmd.Parameters.AddWithValue("@email", email);
                        cmd.Parameters.AddWithValue("@name", name);

                        cmd.ExecuteNonQuery();

                        Response.Write("<script> alert('Registration Successfully Done'); </script>");
                        clr();
                        Response.Redirect("~/SignIn.aspx");
                    }
                    
                    
                    catch (SqlException ex)
                    {
                        // Handle potential SQL exceptions gracefully
                        lblMsg.Text = "Registration Failed: " + ex.Message;
                        lblMsg.ForeColor = System.Drawing.Color.DarkRed;
                        // Log the exception details for further investigation
                        Console.WriteLine("Error during registration: " + ex.ToString());
                    }
                    finally
                    {
                        if (con != null && con.State == ConnectionState.Open)
                        {
                            con.Close();
                        }
                    }
                }
            }
            else
            {
                Response.Write("<script> alert('Registration Failed'); </script>");
                lblMsg.Text = "All fields are mandatory";
                lblMsg.ForeColor = System.Drawing.Color.DarkRed;
                
            }
        }


        /*protected void txtsignup_Click(object sender, EventArgs e)
        {
            if (isformvalid())
            {
                
                
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyShoppingDB"].ConnectionString))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Insert into tblUsers(Username,Password,Email,Name) Values ('" + txtUname.Text + "','" + txtPass.Text + "','" + txtEmail.Text + "','" + txtName.Text + "',)", con);
                    
                    cmd.ExecuteNonQuery();

                    Response.Write("<script> alert('Registration Sucessfully Done'); </script>");
                    clr();
                    con.Close();
                    lblMsg.Text = "Registration Sucessfully Done";
                    lblMsg.ForeColor = System.Drawing.Color.DarkRed;
                }
            }
            else
            {
                Response.Write("<script> alert('Registration Failed'); </script>");
                lblMsg.Text = "All feilds are mandatory";
                lblMsg.ForeColor = System.Drawing.Color.DarkRed;
            }

        }
        */
        private bool isformvalid()
        { 
            if(txtUname.Text=="")
                {
                    Response.Write("<script> alert('username not valid'); </script>");
                    txtUname.Focus();
                    return false;

                }
            else if(txtPass.Text=="")
            {
                Response.Write("<script> alert('username not valid'); </script>");
                txtPass.Focus();
                return false;
            }
               
            
            else if (txtPass.Text != txtCPass.Text)
            {
                Response.Write("<script> alert('Confirm Password not Matched'); </script>");
                txtCPass.Focus();
                return false;
            }
            else if (txtEmail.Text =="")
            {
                Response.Write("<script> alert('Email Id not valid'); </script>");
                txtEmail.Focus();
                return false;
            }
            else if (txtName.Text == "")
            {
                Response.Write("<script> alert('Name not valid'); </script>");
                txtName.Focus();
                return false;
            }
            return true;
        }
        private void clr()
        {
            txtName.Text = string.Empty;
            txtPass.Text = string.Empty;
            txtCPass.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtName.Text = string.Empty;

        }
    }
}
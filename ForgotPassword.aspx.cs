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
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnResetPass_Click(object sender, EventArgs e)
        {
            string connectionString = "Server=RAJAT-ASPIRE-A7; Database=MyEShoppingDB; Integrated Security=True;";
            string query = "SELECT * FROM tblUsers WHERE Email=@Email";
            using (SqlConnection con = new SqlConnection(connectionString))
            using (SqlCommand cmd = new SqlCommand(query, con))
            { 
                    cmd.Parameters.AddWithValue("@Email", txtEmailID.Text);

                    con.Open();
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                if(dt.Rows.Count != 0)
                {
                    
                }


            }

        }

    }
}
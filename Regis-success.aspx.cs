using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication1
{
    public partial class Regis_success : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            String check = ValidateUser(txtEmail.Text, txtPw.Text);
            if (check.Equals("Approved"))
            {
                Response.Redirect("Home.aspx");
            }
            else
            {
                //errorMs
                //StringBuilder html = new StringBuilder();
                //html.Append("Your email or password is invalid");
                //PlaceHolder1.Controls.Add(new Literal { Text = html.ToString() });
            }

        }

        private String ValidateUser(String email, String password)
        {
            String system = "Approved";
            String error = "Not Match";
            string constr = ConfigurationManager.ConnectionStrings["BurgerlyfeDBConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM Customer WHERE email LIKE '%"+email+"%' "))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            if (email.Equals(dt.Rows[0][1].ToString())) {
                                if ((password.Equals(dt.Rows[0][2].ToString())))
                                {
                                    
                                    return system;
                                }
                                else { return error; }
                            }
                            else { return error; }
                         

                        }

                    }
                    
                }
            }
        }

        private DataTable GetData()
        {
            string constr = ConfigurationManager.ConnectionStrings["BurgerlyfeDBConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM Customer"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            return dt;
                        }
                    }
                }
            }
        }
    }
}
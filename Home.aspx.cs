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
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Id"] != null)
                {
                    lblCust.Text = "Hallo " + Session["name"].ToString() + " ";
                    signuplink.Visible = false;                    
                    Signin.Visible = false;
                    myacc.Visible = true;
                }
                else
                {

                }


                /*
                String CustID = Request.QueryString["Id"];

                string constr = ConfigurationManager.ConnectionStrings["BurgerlyfeDBConnectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand("SELECT * FROM Customer WHERE Id LIKE '%" + CustID + "%' "))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter())
                        {
                            cmd.Connection = con;
                            sda.SelectCommand = cmd;
                            using (DataTable dt = new DataTable())
                            {
                                sda.Fill(dt);

                                lblCust.Text = "Hallo " + dt.Rows[0][3].ToString()+" ";
                                signuplink.Visible = false;
                                Signin.Text = "My Account";
                                Signin.Visible = false;
                                myacc.Visible = true;

                            }

                        }

                    }
                }
                */
            }
        }

        protected void signuplink_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Home.aspx");
        }

        protected void Signin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void Editprofile_Click(object sender, EventArgs e)
        {
            Response.Redirect("MyProfile.aspx");
        }

        protected void Myorder_Click(object sender, EventArgs e)
        {
            Response.Redirect("MyOrder.aspx");

        }
    }
}
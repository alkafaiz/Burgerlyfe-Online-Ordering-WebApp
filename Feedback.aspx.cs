using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Feedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BurgerlyfeDBConnectionString"].ConnectionString);

            try
            {
                con.Open();
                string query = "INSERT INTO Feedback (FirstName, LastName, Gender, Email, PhoneNumber, Feedback) values (@FirstName, @LastName, @Gender, @Email, @PhoneNumber, @Feedback)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@FirstName", txtFname.Text);
                cmd.Parameters.AddWithValue("@LastName", txtLastname.Text);
                cmd.Parameters.AddWithValue("@Gender", gender.Text);
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@PhoneNumber", txtPhone.Text);
                cmd.Parameters.AddWithValue("@Feedback", txtFeedback.Text);
                cmd.ExecuteNonQuery();

                Response.Redirect("Feedback.aspx");
                con.Close();

            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }
        }
    }
}
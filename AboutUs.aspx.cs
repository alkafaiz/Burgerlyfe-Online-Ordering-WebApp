using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class AboutUs : System.Web.UI.Page
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
    }
}
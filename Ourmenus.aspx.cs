using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Ourmenus : System.Web.UI.Page
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
            }
        }

        protected void Editprofile_Click(object sender, EventArgs e)
        {
            Response.Redirect("MyProfile.aspx");
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

        protected void signuplink_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

        protected void btn101_Click(object sender, EventArgs e)
        {
            if (Session["Id"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else { Response.Redirect("Ordering.aspx?Id=101"); }
            
        }

        private void redirect()
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop2", "init();", true);
        }

        protected void btn101_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("Ordering.aspx?Id=" + btn101.CommandArgument);
        }

        protected void Button1_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("Ordering.aspx?Id=" + Button1.CommandArgument);

        }

        protected void Button2_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("Ordering.aspx?Id=" + Button2.CommandArgument);

        }

        protected void Button3_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("Ordering.aspx?Id=" + Button3.CommandArgument);

        }

        protected void Button4_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("Ordering.aspx?Id=" + Button4.CommandArgument);

        }

        protected void Button5_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("Ordering.aspx?Id=" + Button5.CommandArgument);

        }

        protected void Button6_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("Ordering.aspx?Id=" + Button6.CommandArgument);

        }

        protected void Button7_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("Ordering.aspx?Id=" + Button7.CommandArgument);

        }

        protected void Button8_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("Ordering.aspx?Id=" + Button8.CommandArgument);

        }

        protected void Button9_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("Ordering.aspx?Id=" + Button9.CommandArgument);

        }

        protected void Button21_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("Ordering.aspx?Id=" + Button21.CommandArgument);

        }

        protected void Button22_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("Ordering.aspx?Id=" + Button22.CommandArgument);

        }

        protected void Button10_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("Ordering.aspx?Id=" + Button10.CommandArgument);

        }

        protected void Button11_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("Ordering.aspx?Id=" + Button11.CommandArgument);

        }

        protected void Button12_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("Ordering.aspx?Id=" + Button12.CommandArgument);

        }

        protected void Button13_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("Ordering.aspx?Id=" + Button13.CommandArgument);

        }

        protected void Button14_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("Ordering.aspx?Id=" + Button14.CommandArgument);

        }

        protected void Button15_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("Ordering.aspx?Id=" + Button15.CommandArgument);

        }

        protected void Button16_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("Ordering.aspx?Id=" + Button16.CommandArgument);

        }

        protected void Button17_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("Ordering.aspx?Id=" + Button17.CommandArgument);

        }

        protected void Button18_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("Ordering.aspx?Id=" + Button18.CommandArgument);

        }

        protected void Button19_Command(object sender, CommandEventArgs e)
        {

            Response.Redirect("Ordering.aspx?Id=" + Button19.CommandArgument);
        }

        protected void Button20_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("Ordering.aspx?Id=" + Button20.CommandArgument);

        }

        protected void Myorder_Click(object sender, EventArgs e)
        {
            Response.Redirect("MyOrder.aspx");
        }
    }
}
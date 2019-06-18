using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication1
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Editprofile_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditProfile.aspx");

        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Home.aspx");
        }

        protected void btnNextChPW_Click(object sender, EventArgs e)
        {
            if (txtcurrentPW.Text.Equals(Session["password"].ToString()))
            {
                error.Visible = false;
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "showNPWform();", true);
            }
            else { error.Visible = true; }
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            String newPassword = txtNewPW.Text;
            if (txtNewPW.Text.Equals(txtreNewPW.Text))
            {
                error2.Visible = false;
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BurgerlyfeDBConnectionString"].ConnectionString);

                try
                {
                    con.Open();

                    //string file_name = contact_picture.FileName.ToString()+"";
                    //contact_picture.PostedFile.SaveAs(Server.MapPath("~/upload/") + file_name);
                    string query = "UPDATE Customer SET password=@password WHERE Id= '" + Convert.ToInt32(Session["Id"].ToString()) + "' ";

                    SqlCommand cmd = new SqlCommand(query, con);                    
                    cmd.Parameters.AddWithValue("@password", newPassword);
                    


                    cmd.ExecuteNonQuery();
                    
                    
                    con.Close();
                    Session["password"] = newPassword;

                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "savedPopUp();", true);
                    txtNewPW.Enabled = false;
                    txtreNewPW.Enabled = false;
                    btnConfirm.Enabled = false;
                }

                catch (Exception ex)
                {
                    Response.Write("Error: " + ex.ToString());
                }
            }
            else {
                btnConfirm.Attributes.Add("onclick", "return false;");
                error2.Visible = true;
            }
        }

        protected void btnSaved_Click(object sender, EventArgs e)
        {
            Response.Redirect("MyProfile.aspx");
        }
    }
}
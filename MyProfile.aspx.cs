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
    public partial class MyProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {            
            if (!IsPostBack)
            {
                String cemail = Session["email"].ToString();
                lblEmail.Text = cemail;
                lblFName.Text = Session["name"].ToString();
                lblTitle.Text = Session["title"].ToString();
                lblLName.Text = Session["LName"].ToString();
                lblPhNo.Text = Session["contact"].ToString();
                lblSecPhNo.Text = Session["SecContact"].ToString();
                lblDoB.Text = Session["DoB"].ToString();
                
                lblPW.Text = "*******";
                
            }
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Home.aspx");
        }

        protected void btnEditEmail_Click(object sender, EventArgs e)
        {
            btnEditEmail.Visible = false;
            btnSaveEmail.Visible = true;

            lblEmail.Visible = false;
            txtEmail.Visible = true;
            txtEmail.Text = Session["email"].ToString();      
        }

        protected void btnSaveEmail_Click(object sender, EventArgs e)
        {
            String newEmail = txtEmail.Text;
            Session["email"] = newEmail;
            lblEmail.Text = newEmail;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BurgerlyfeDBConnectionString"].ConnectionString);
            try
            {
                con.Open();                
                string query = "UPDATE Customer SET email=@email WHERE Id= '" + Convert.ToInt32(Session["Id"].ToString()) + "' ";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@email", newEmail);
                cmd.ExecuteNonQuery();
                con.Close();
                

               // ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "popUP();", true);

                btnEditEmail.Visible = true;
                btnSaveEmail.Visible = false;
                lblEmail.Visible = true;
                txtEmail.Visible = false;
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop2", "playPopUp();", true);
            }

            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }

            
        }

        protected void btnEditPW_Click(object sender, EventArgs e)
        {
            Response.Redirect("ChangePassword.aspx");
        }

        protected void btnEditTitle_Click(object sender, EventArgs e)
        {
            btnEditTitle.Visible = false;
            btnSaveTitle.Visible = true;
            lblTitle.Visible = false;
            txtTitle.Visible = true;
            String title = Session["title"].ToString();
            switch (title)
            {
                case "Mr":
                    txtTitle.SelectedIndex = 0;
                    break;
                case "Mrs":
                    txtTitle.SelectedIndex = 1;
                    break;
                case "Ms":
                    txtTitle.SelectedIndex = 2;
                    break;
            }

        }

        protected void btnSaveTitle_Click(object sender, EventArgs e)
        {
            String title = txtTitle.Text;
            Session["title"] = title;
            lblTitle.Text = title;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BurgerlyfeDBConnectionString"].ConnectionString);
            try
            {
                con.Open();
                string query = "UPDATE Customer SET title=@title WHERE Id= '" + Convert.ToInt32(Session["Id"].ToString()) + "' ";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@title", title);
                cmd.ExecuteNonQuery();
                con.Close();


                // ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "popUP();", true);

                btnEditTitle.Visible = true;
                btnSaveTitle.Visible = false;
                lblTitle.Visible = true;
                txtTitle.Visible = false;
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop2", "playPopUp();", true);
            }

            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }
        }

        protected void btnEditFName_Click(object sender, EventArgs e)
        {
            btnEditFName.Visible = false;
            btnSaveFName.Visible = true;
            lblFName.Visible = false;
            txtFName.Visible = true;
            txtFName.Text = Session["name"].ToString();
        }

        protected void btnSaveFName_Click(object sender, EventArgs e)
        {
            String Fname = txtFName.Text;
            Session["name"] = Fname;
            lblFName.Text = Fname;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BurgerlyfeDBConnectionString"].ConnectionString);
            try
            {
                con.Open();
                string query = "UPDATE Customer SET name=@name WHERE Id= '" + Convert.ToInt32(Session["Id"].ToString()) + "' ";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@name", Fname);
                cmd.ExecuteNonQuery();
                con.Close();


                // ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "popUP();", true);

                btnEditFName.Visible = true;
                btnSaveFName.Visible = false;
                lblFName.Visible = true;
                txtFName.Visible = false;
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop2", "playPopUp();", true);
            }

            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }
        }

        protected void btnEditLName_Click(object sender, EventArgs e)
        {
            btnEditLName.Visible = false;
            btnSaveLName.Visible = true;
            lblLName.Visible = false;
            txtLName.Visible = true;
            txtLName.Text = Session["LName"].ToString();
        }

        protected void btnSaveLName_Click(object sender, EventArgs e)
        {
            String Lname = txtLName.Text;
            Session["LName"] = Lname;
            lblLName.Text = Lname;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BurgerlyfeDBConnectionString"].ConnectionString);
            try
            {
                con.Open();
                string query = "UPDATE Customer SET lastName=@lastName WHERE Id= '" + Convert.ToInt32(Session["Id"].ToString()) + "' ";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@lastName", Lname);
                cmd.ExecuteNonQuery();
                con.Close();


                // ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "popUP();", true);

                btnEditLName.Visible = true;
                btnSaveLName.Visible = false;
                lblLName.Visible = true;
                txtLName.Visible = false;
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop2", "playPopUp();", true);
            }

            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }
        }

        protected void btnEditDoB_Click(object sender, EventArgs e)
        {
            btnEditDoB.Visible = false;
            btnSaveDoB.Visible = true;
            lblDoB.Visible = false;
            txtDoB.Visible = true;
            txtDoB.Text = Session["DoB"].ToString();
        }

        protected void btnSaveDoB_Click(object sender, EventArgs e)
        {
            String DoB = txtDoB.Text;
            Session["DoB"] = DoB;
            lblDoB.Text = DoB;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BurgerlyfeDBConnectionString"].ConnectionString);
            try
            {
                con.Open();
                string query = "UPDATE Customer SET DoB=@DoB WHERE Id= '" + Convert.ToInt32(Session["Id"].ToString()) + "' ";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@DoB", DoB);
                cmd.ExecuteNonQuery();
                con.Close();


                // ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "popUP();", true);

                btnEditDoB.Visible = true;
                btnSaveDoB.Visible = false;
                lblDoB.Visible = true;
                txtDoB.Visible = false;
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop2", "playPopUp();", true);
            }

            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }
        }

        protected void btnEditPhNo_Click(object sender, EventArgs e)
        {
            btnEditPhNo.Visible = false;
            btnSavePhNo.Visible = true;
            lblPhNo.Visible = false;
            txtPhNo.Visible = true;
            txtPhNo.Text = Session["contact"].ToString();                       
        }

        protected void btnSavePhNo_Click(object sender, EventArgs e)
        {
            String Pho = txtPhNo.Text;
            Session["contact"] = Pho;
            lblPhNo.Text = Pho;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BurgerlyfeDBConnectionString"].ConnectionString);
            try
            {
                con.Open();
                string query = "UPDATE Customer SET contact=@contact WHERE Id= '" + Convert.ToInt32(Session["Id"].ToString()) + "' ";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@contact", Pho);
                cmd.ExecuteNonQuery();
                con.Close();


                // ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "popUP();", true);

                btnEditPhNo.Visible = true;
                btnSavePhNo.Visible = false;
                lblPhNo.Visible = true;
                txtPhNo.Visible = false;
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop2", "playPopUp();", true);
            }

            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }
        }

        protected void btnEditSecPhNo_Click(object sender, EventArgs e)
        {
            btnEditSecPhNo.Visible = false;
            btnSaveSecPhNo.Visible = true;
            lblSecPhNo.Visible = false;
            txtSecPhNo.Visible = true;
            txtSecPhNo.Text = Session["SecContact"].ToString();
        }

        protected void btnSaveSecPhNo_Click(object sender, EventArgs e)
        {
            String sPho = txtSecPhNo.Text;
            Session["SecContact"] = sPho;
            lblSecPhNo.Text = sPho;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BurgerlyfeDBConnectionString"].ConnectionString);
            try
            {
                con.Open();
                string query = "UPDATE Customer SET seconContact=@seconContact WHERE Id= '" + Convert.ToInt32(Session["Id"].ToString()) + "' ";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@seconContact", sPho);
                cmd.ExecuteNonQuery();
                con.Close();


                // ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "popUP();", true);

                btnEditSecPhNo.Visible = true;
                btnSaveSecPhNo.Visible = false;
                lblSecPhNo.Visible = true;
                txtSecPhNo.Visible = false;
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop2", "playPopUp();", true);
            }

            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }
        }

        protected void btnmyAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("MyAddress.aspx");
        }

        protected void btnOrderHis_Click(object sender, EventArgs e)
        {
            Response.Redirect("MyOrder.aspx");

        }
    }
}
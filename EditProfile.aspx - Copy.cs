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
    public partial class EditProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                String cemail = Session["email"].ToString();
                txtEmail.Text = cemail;
                txtName.Text = Session["name"].ToString();
                txtTitle.Text = Session["gender"].ToString();
                txtBlock.Text = Session["block"].ToString();
                txtBuilding.Text = Session["buildingN"].ToString();
                txtLevel.Text = Session["level"].ToString();
                txtUnit.Text = Session["unit"].ToString();
                txtAddress.Text = Session["address"].ToString();
                txtState.Text = Session["state"].ToString();
                txtCity.Text = Session["city"].ToString();
                txtContact.Text = Session["contact"].ToString();
                txtPostcode.Text = Session["postcode"].ToString();
            }
            
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

        protected void btnSaveChanges_Click(object sender, EventArgs e)
        {
            String tittle = txtTitle.Text;
            String gender = "";
            if (tittle == "Mr")
            {
                gender += "Male";
            }
            else
            {
                gender += "Female";
            }

            Session["email"] = txtEmail.Text;
            Session["name"] = txtName.Text;
            Session["gender"] = gender;
            Session["contact"] = txtContact.Text;
            Session["buildingN"] = txtBuilding.Text;
            Session["block"] = txtBlock.Text;
            Session["level"] = txtLevel.Text;
            Session["unit"] = txtUnit.Text;
            Session["address"] = txtAddress.Text;
            Session["state"] = txtState.Text;
            Session["city"] = txtCity.Text;
            Session["postcode"] = txtPostcode.Text;

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BurgerlyfeDBConnectionString"].ConnectionString);

            try
            {
                con.Open();

                //string file_name = contact_picture.FileName.ToString()+"";
                //contact_picture.PostedFile.SaveAs(Server.MapPath("~/upload/") + file_name);
                string query = "UPDATE Customer SET email=@email, name=@name, gender=@gender, contact=@contact, buildingName=@buildingName, block=@block, level=@level, unit=@unit, address=@address, state=@state, city=@city, postcode=@postcode WHERE Id= '" + Convert.ToInt32(Session["Id"].ToString()) + "' ";
                
                SqlCommand cmd = new SqlCommand(query, con);
                
                //cmd.Parameters.AddWithValue("@ID", Session["Id"].ToString());
                cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                //cmd.Parameters.AddWithValue("@password", txtPw.Text);
                //btnChangePW.Text = txtName.Text;
                cmd.Parameters.AddWithValue("@name", txtName.Text);
                
                cmd.Parameters.AddWithValue("@gender", gender);
                cmd.Parameters.AddWithValue("@contact", txtContact.Text);
                cmd.Parameters.AddWithValue("@buildingName", txtBuilding.Text);
                cmd.Parameters.AddWithValue("@block", txtBlock.Text);
                cmd.Parameters.AddWithValue("@level", txtLevel.Text);
                cmd.Parameters.AddWithValue("@unit", txtUnit.Text);
                cmd.Parameters.AddWithValue("@address", txtAddress.Text);
                cmd.Parameters.AddWithValue("@state", txtState.Text);
                cmd.Parameters.AddWithValue("@city", txtCity.Text);
                cmd.Parameters.AddWithValue("@postcode", txtPostcode.Text);


                cmd.ExecuteNonQuery();
                lblSaved.Visible = true;
                //Response.Redirect("Home.aspx");
                con.Close();
                /*
                string constr = ConfigurationManager.ConnectionStrings["BurgerlyfeDBConnectionString"].ConnectionString;
                using (SqlConnection cont = new SqlConnection(constr))
                {
                    using (SqlCommand cmd2 = new SqlCommand("SELECT * FROM Customer WHERE Id LIKE '%" + Convert.ToInt32(Session["Id"].ToString()) + "%' "))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter())
                        {
                            cmd2.Connection = cont;
                            sda.SelectCommand = cmd2;
                            using (DataTable dt = new DataTable())
                            {
                                sda.Fill(dt);
                                if (dt.Rows.Count > 0)
                                {
                                    Session.Abandon();
                                    Session["Id"] = dt.Rows[0][0].ToString();
                                    Session["email"] = dt.Rows[0][1].ToString();
                                    Session["password"] = dt.Rows[0][2].ToString();
                                    Session["name"] = dt.Rows[0][3].ToString();
                                    Session["gender"] = dt.Rows[0][4].ToString();
                                    Session["contact"] = dt.Rows[0][5].ToString();
                                    Session["buildingN"] = dt.Rows[0][6].ToString();
                                    Session["block"] = dt.Rows[0][7].ToString();
                                    Session["level"] = dt.Rows[0][8].ToString();
                                    Session["unit"] = dt.Rows[0][9].ToString();
                                    Session["address"] = dt.Rows[0][10].ToString();
                                    Session["state"] = dt.Rows[0][11].ToString();
                                    Session["city"] = dt.Rows[0][12].ToString();
                                    Session["postcode"] = dt.Rows[0][13].ToString();
                                    
                                                                              
                                }
                                



                            }

                        }

                    }
                }*/
            }

            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }
        }

        protected void btnNextChPW_Click(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterStartupScript(GetType(),"MyKey", "showNPWform();", true);
            //btnNextChPW.Attributes.Add("onclick", "return false;");
            //ScriptManager.RegisterStartupScript(this, typeof(Page), "NextForm", "$(document).ready(function(){showNPWform()});", true);
            //ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "showNPWform();", true);
            myBtn.Text = "test";

            /*
            txtNewPW.Visible = true;
            lblNewPW.Visible = true;
            btnConfirm.Text = "test";*/
        }

        protected void myBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("ChangePassword.aspx");
        }
    }
}
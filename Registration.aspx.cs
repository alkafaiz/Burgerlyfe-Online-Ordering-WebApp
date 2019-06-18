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
    public partial class Resigstration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BurgerlyfeDBConnectionString"].ConnectionString);

            try
            {
                con.Open();

                //string file_name = contact_picture.FileName.ToString()+"";
                //contact_picture.PostedFile.SaveAs(Server.MapPath("~/upload/") + file_name);

                string query = "INSERT INTO Customer (ID,email,password,name,title,contact) values (@ID,@email, @password, @name, @title, @contact)";
                string Addquery = "INSERT INTO Address (ID,custID,buildingName,block,level,unit,address,state,city,postcode,nickname) values (@ID,@custID,@buildingName, @block,@level,@unit,@address,@state,@city,@postcode,@nickname)";

                SqlCommand cmd = new SqlCommand(query, con);
                SqlCommand Addcmd = new SqlCommand(Addquery, con);


                Random rnd = new Random();
                int id = rnd.Next(99, 1000)+1;
                cmd.Parameters.AddWithValue("@ID", id);
                cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@password", txtPw.Text);
                cmd.Parameters.AddWithValue("@name", txtName.Text);                
                cmd.Parameters.AddWithValue("@title", txtTitle.Text);
                cmd.Parameters.AddWithValue("@contact", txtContact.Text);

                //for address table
                int AddID = rnd.Next(99, 1000) + 1;
                Addcmd.Parameters.AddWithValue("@ID", AddID);
                Addcmd.Parameters.AddWithValue("@custID", id);
                Addcmd.Parameters.AddWithValue("@buildingName", txtBuilding.Text);
                Addcmd.Parameters.AddWithValue("@block", txtBlock.Text);
                Addcmd.Parameters.AddWithValue("@level", txtLevel.Text);
                Addcmd.Parameters.AddWithValue("@unit", txtUnit.Text);
                Addcmd.Parameters.AddWithValue("@address", txtAddress.Text);
                Addcmd.Parameters.AddWithValue("@state", txtState.Text);
                Addcmd.Parameters.AddWithValue("@city", txtCity.Text);
                Addcmd.Parameters.AddWithValue("@postcode", txtPostcode.Text);
                Addcmd.Parameters.AddWithValue("@nickname", "Home");


                cmd.ExecuteNonQuery();
                Addcmd.ExecuteNonQuery();

                
                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "savedPopUp();", true);

            }

            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
        /*
protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
{


SqlConnection con = new
SqlConnection(ConfigurationManager.ConnectionStrings["BurgerlyfeConnectionStrings"].ConnectionString);

try
{
   con.Open();
   string query = "INSERT INTO contacts (email, password, name, contact, address, address_detail) values (@txtEmail, @txtPw, @txtName, @txtContact, @txtAddress,@txtBuilding,@txtState,@txtCity,@txtPostcode, @txtBlock,@txtLevel,@txtUnit)";

   SqlCommand cmd = new SqlCommand(query, con);
   cmd.Parameters.AddWithValue("@txtEmail", email.Text);
   cmd.Parameters.AddWithValue("@txtPw", password.Text);
   cmd.Parameters.AddWithValue("@txtName", name.Text);
   cmd.Parameters.AddWithValue("@txtName", contact.Text);
   cmd.Parameters.AddWithValue("@txtAddres,@txtBuilding,@txtState,@txtCity,@txtPostcode", address.Text);
   cmd.Parameters.AddWithValue("@txtBlock. @txtLevel, @txtUnit", address_detail.Text);

cmd.ExecuteNonQuery();

Response.Redirect("Regsiteration.aspx");

}
catch(Exception ex)
{
Response.Write("Error:" +ex.ToString())
}
*/
    }
}
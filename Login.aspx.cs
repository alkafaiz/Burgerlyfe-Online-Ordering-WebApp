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
    public partial class Login : System.Web.UI.Page
    {
        String CustID = "";
        String emailCust = "";
        String passwordCust = "";
        String name = "";
        String title = "";
        String contact = "";
        String LName = "";
        String SecContact = "";
        String DoB = "";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            if(txtEmail.Text=="admin@bl.com" && txtPw.Text == "admin")
            {
                Response.Redirect("Dashboard.aspx");
            }
            String check = ValidateUser(txtEmail.Text, txtPw.Text);
            if (check.Equals("Approved"))
            {
                //String redirect = "Home.aspx?Id=" + CustID;
                Session["Id"] = CustID;
                Session["email"] = emailCust;
                Session["password"] = passwordCust;
                Session["name"] = name;
                Session["title"] = title;
                Session["contact"] = contact;  
                Session["LName"] = LName;
                Session["SecContact"] = SecContact;
                Session["DoB"] = DoB;

                Response.Redirect("Home.aspx");
                //Label2.Text = Session["password"].ToString(); ;
            }
            else
            {
                //errorMs
                //StringBuilder html = new StringBuilder();
                //html.Append("Your email or password is invalid");
                //PlaceHolder1.Controls.Add(new Literal { Text = html.ToString() });
                errorMsg.Visible = true;
            }
        }

        private String ValidateUser(String email, String password)
        {
            String system = "Approved";
            String error = "Not Match";
            string constr = ConfigurationManager.ConnectionStrings["BurgerlyfeDBConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM Customer WHERE email LIKE '%" + email + "%' "))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            if (dt.Rows.Count > 0)
                            {
                                if (email.Equals(dt.Rows[0][1].ToString()))
                                {
                                    if ((password.Equals(dt.Rows[0][2].ToString())))
                                    {
                                        CustID += dt.Rows[0][0].ToString();
                                        emailCust = dt.Rows[0][1].ToString();
                                        passwordCust = dt.Rows[0][2].ToString();
                                        name += dt.Rows[0][3].ToString();
                                        title += dt.Rows[0][4].ToString();
                                        contact += dt.Rows[0][5].ToString();
                                        SecContact += dt.Rows[0][6].ToString();
                                        LName += dt.Rows[0][7].ToString();
                                        DoB += dt.Rows[0][8].ToString();

                                        return system;
                                    }
                                    else { return error; }
                                }
                                else { return error; }
                            }
                            else { return error; }



                        }

                    }

                }
            }
        }

        protected void signuplink_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }
    }
}
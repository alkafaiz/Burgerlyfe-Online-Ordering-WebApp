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
    public partial class MyAddress : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["BurgerlyfeDBConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM Address WHERE custID LIKE '%" + Session["Id"].ToString() + "%' "))
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
                                StringBuilder html = new StringBuilder();
                                lblQtyAdd.Text = dt.Rows.Count.ToString();
                                for(int i = 0; i < dt.Rows.Count; i++)
                                {
                                    String Address = dt.Rows[i][2].ToString()+ " block " + dt.Rows[i][3].ToString() + " level " + dt.Rows[i][4].ToString() + " unit " + dt.Rows[i][5].ToString() + " " + dt.Rows[i][6].ToString() + " " + dt.Rows[i][7].ToString() + " " + dt.Rows[i][8].ToString() + " " + dt.Rows[i][9].ToString();
                                    html.Append("<tr>");
                                    html.Append("<td>");
                                    html.Append((i+1).ToString());
                                    html.Append("</td>");
                                    html.Append("<td>");
                                    html.Append(dt.Rows[i][10].ToString());
                                    html.Append("</td>");
                                    html.Append("<td>");
                                    html.Append(Address);
                                    html.Append("</td>");
                                    html.Append("<td>");

                                    html.Append("<asp:LinkButton ID='");
                                    html.Append(dt.Rows[i][0].ToString());
                                    html.Append("' runat='server'>Edit</asp:LinkButton>");
                                                   
                                    //html.Append("<asp:Button ID='");
                                    //html.Append(dt.Rows[i][0].ToString());
                                    //html.Append("' CssClass=' btnChgPW button' BackColor='#4bc11d' runat='server' Text='Edit' UseSubmitBehavior='False'  /> ");
                                    //html.Append("<a onclick='editcontact()' href='' class='btneditAddress'>Edit</a> <a onclick='delcontact()' href='' class='btndelAddress'>Delete</a>");
                                    html.Append("</td>");
                                    html.Append("</tr>");
                                }
                                dataAddress.Controls.Add(new Literal { Text = html.ToString() });

                                                            
                            }
                            else {  }



                        }

                    }

                }
            }
        }

        protected void btnmyProfile_Click(object sender, EventArgs e)
        {
            Response.Redirect("MyProfile.aspx");
        }

        protected void btnmyAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("MyAddress.aspx");
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Home.aspx");
        }

        protected void Editprofile_Click(object sender, EventArgs e)
        {
            Response.Redirect("MyProfile.aspx");
        }

        protected void btnOrderHis_Click(object sender, EventArgs e)
        {
            Response.Redirect("MyOrder.aspx");

        }
    }
}
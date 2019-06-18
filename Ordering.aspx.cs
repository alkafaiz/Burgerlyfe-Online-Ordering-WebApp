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
    public partial class Ordering : System.Web.UI.Page
    {
        String SelectedItem = "";
        string constr = ConfigurationManager.ConnectionStrings["BurgerlyfeDBConnectionString"].ConnectionString;
        String UsAddress = "";
        DateTime date = DateTime.Today;

        DateTime RoundUp(DateTime dt, TimeSpan d)
        {
            return new DateTime((dt.Ticks + d.Ticks - 1) / d.Ticks * d.Ticks, dt.Kind);
        }

        protected void Page_Load(object sender, EventArgs e)
        {

            SelectedItem = Request.QueryString["Id"];
            String todaydate = date.ToString("dd-MM-yyyy");


            DateTime nex;
            
            for (int i = 0; i < 6; i++)
            {
                nex=date.AddDays(i + 1);
                txtDate.Items.Add(nex.ToString("dd-MM-yyyy"));
            }
            DateTime now = DateTime.Now;
            DateTime nexx = now.AddMinutes(15);
            while (todaydate.Equals(nexx.ToString("dd-MM-yyyy")))
            {
                var dt3 = RoundUp(nexx, TimeSpan.FromMinutes(15));

                txtTime.Items.Add(dt3.ToString("HH:mm"));
                nexx = nexx.AddMinutes(15);
            }

            String Add = "";
            //if (!IsPostBack)
            //{
                if (Session["Id"] != null)
                {
                    
                                     
                    Signin.Visible = false;
                    myacc.Visible = true;

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
                                        
                                        for (int i = 0; i < dt.Rows.Count; i++)
                                        {
                                            Add = dt.Rows[i][2].ToString() + ", Block " + dt.Rows[i][3].ToString() + ", Level " + dt.Rows[i][4].ToString() + ", Unit " + dt.Rows[i][5].ToString() + ", " + dt.Rows[i][6].ToString() + ", " + dt.Rows[i][7].ToString() + ", " + dt.Rows[i][8].ToString() + ", " + dt.Rows[i][9].ToString();
                                            html.Append("<div class='hoverable1 AddressBox' >");
                                            html.Append("<div class='row-address' style='height:60px; padding-top:13px; margin-bottom:10px; ' >");
                                            html.Append("<div class='show' style='width:7%; float:left; height:120px'>");
                                            html.Append("<h3 class='LabelAddress5'>");
                                            html.Append((i+1).ToString());
                                            html.Append("</h3>");
                                            html.Append("</div>");
                                            html.Append("<div class='show' style='width:60%; float:left; height:120px'>");
                                            html.Append("<h3 class='LabelAddress1'>");
                                            html.Append(dt.Rows[i][10].ToString());
                                            html.Append("</h3>");
                                            html.Append("<h5 class='LabelAddress2'>");
                                            html.Append(Add);
                                            html.Append("</h5>");
                                            html.Append("<h5 class='LabelAddress3'>Store Incharge-SPETALING");                                            
                                            html.Append("<h5 class='LabelAddress4'>Store Status -Online</h5>");
                                            html.Append("</div>");
                                            html.Append("<div class='show' style='width:33%; float:left; padding-top:50px; height:70px'>");
                                            html.Append("<input class='float-rg height3 chkbx' checked='checked' onclick='OrderAddress(");html.Append(dt.Rows[i][0].ToString());html.Append(")' type='checkbox' id='");
                                            html.Append(dt.Rows[i][0].ToString());
                                            html.Append("' />");
                                            html.Append("</div>");
                                            html.Append("</div>");
                                            html.Append("</div>");                                                                                        
                                        }
                                        ItemAddress.Controls.Add(new Literal { Text = html.ToString() });
                                    }
                                    else { }
                                }
                            }
                        }
                        using (SqlCommand cmd = new SqlCommand("SELECT contact,seconContact FROM Customer WHERE Id LIKE '%" + Session["Id"].ToString() + "%' "))
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

                                        for (int i = 0; i < dt.Rows.Count; i++)
                                        {
                                            txtContact.Items.Add(dt.Rows[i][0].ToString());
                                            txtContact.Items.Add(dt.Rows[i][1].ToString());
                                            txtContact.SelectedIndex = 0;
                                        }                                        
                                    }
                                    else { }
                                }
                            }
                        }
                    }
                }
                else
                {

                }
            //}
            UsAddress = Add;
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

        protected void Signin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void btnInitiate_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(constr))
            {
                con.Open();
                string query = "INSERT INTO ItemOrder(OrderID,MenuID,Qty) values(@OrderID,@MenuID,@Qty)";            
                SqlCommand cmd3 = new SqlCommand(query, con);
                Random rnd = new Random();
                int idr = rnd.Next(99999, 1000000) + 1;
                cmd3.Parameters.AddWithValue("@OrderID", idr);
                cmd3.Parameters.AddWithValue("@MenuID", SelectedItem);
                cmd3.Parameters.AddWithValue("@Qty", 1);
                cmd3.ExecuteNonQuery();
                con.Close();
                //pricemenu
                double menuprice = 0;
                using(CreateOrder CO = new CreateOrder())
                {
                    menuprice += CO.retrieveMenuPrice(SelectedItem);
                }

                //DateTime date = DateTime.Today;
                String todaydate = date.ToString("dd-MM-yyyy");

                con.Open();
                string query1 = "INSERT INTO ORDERTABLE(OrderID,CustID,Contact,TotalPrice,TotalQty,AddressCode,DateSend,TimeSend) values(@OrderID,@CustID,@Contact,@TotalPrice,@TotalQty,@AddressCode,@DateSend,@TimeSend)";
                SqlCommand cmd1 = new SqlCommand(query1, con);
                                
                cmd1.Parameters.AddWithValue("@OrderID", idr);
                cmd1.Parameters.AddWithValue("@CustID", Session["Id"].ToString());
                cmd1.Parameters.AddWithValue("@Contact", txtContact.Text);
                cmd1.Parameters.AddWithValue("@TotalPrice", menuprice.ToString());
                cmd1.Parameters.AddWithValue("@TotalQty", 1);
                cmd1.Parameters.AddWithValue("@AddressCode",UsAddress);
                if(txtDate.Text == "Today")
                {
                    cmd1.Parameters.AddWithValue("@DateSend", todaydate);
                }
                else { cmd1.Parameters.AddWithValue("@DateSend", txtDate.Text); }                
                cmd1.Parameters.AddWithValue("@TimeSend",txtTime.Text);

                cmd1.ExecuteNonQuery();
                con.Close();
                

                Response.Redirect("CreateOrder.aspx?id=" + idr);
            }
            
            


        }

        protected void txtDate_SelectedIndexChanged(object sender, EventArgs e)
        {
            DateTime date = DateTime.Now;
            String todaydate = date.ToString("dd-MM-yyyy");
            if (txtDate.SelectedIndex != 0)
            {                
                DateTime nexx = DateTime.Parse("10-11-2019 00:00");                                
                while (nexx.ToString("dd-MM-yyyy").Equals("10-11-2019"))
                {
                    var dt3 = RoundUp(nexx, TimeSpan.FromMinutes(15));

                    txtTime.Items.Add(dt3.ToString("HH:mm"));
                    nexx = nexx.AddMinutes(15);
                }
            }
        }

        protected void btnManageAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("MyAddress.aspx");
        }

        protected void btnManageContact_Click(object sender, EventArgs e)
        {
            //Response.Redirect("MyProfile.aspx");
            btnInitiate.Text = UsAddress;
        }
    }
}
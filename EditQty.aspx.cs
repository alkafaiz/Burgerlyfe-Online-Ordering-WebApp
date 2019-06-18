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
    public partial class EditQty : System.Web.UI.Page
    {
        String OrderID, MenuID;
        string constr = ConfigurationManager.ConnectionStrings["BurgerlyfeDBConnectionString"].ConnectionString;
        double menupr = 0;

        protected void txtQty_SelectedIndexChanged1(object sender, EventArgs e)
        {
            double newprice = menupr * Convert.ToDouble(txtQty.SelectedValue);
            lblsubtotal.Text = newprice.ToString();
            String currtotal = "";
            using (CreateOrder CO = new CreateOrder())
            {
                currtotal = CO.DisplayTotalPrice(OrderID);
            }
            double total = Convert.ToDouble(currtotal);
            lblTotal.Text = (total + newprice).ToString();
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateOrder.aspx?id=" + OrderID + "&opr=cancel");
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            using (CreateOrder CO = new CreateOrder())
            {
                CO.UpdateCart(OrderID, MenuID, Convert.ToInt32(txtQty.Text));
                CO.updateORDERTABLE(OrderID);
            }
            Response.Redirect("CreateOrder.aspx?id=" + OrderID);

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            OrderID = Request.QueryString["Id"];
            MenuID = Request.QueryString["mn"];
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd2 = con.CreateCommand();
            cmd2.CommandType = CommandType.Text;
            cmd2.CommandText = "Select * from Menu where Id like '%" + MenuID + "%'";
            cmd2.ExecuteNonQuery();
            DataTable dt2 = new DataTable();
            SqlDataAdapter sda2 = new SqlDataAdapter(cmd2);
            sda2.Fill(dt2);
            int a = dt2.Rows.Count;
            //btnConfirm.Text = a.ToString();
            //btnCancel.Text = MenuID;
            if (dt2.Rows.Count > 0)
            {
                StringBuilder html = new StringBuilder();
                html.Append("<div style='width:100%; height:230px;'>");
                html.Append("<img style='width:100%; height:auto' src='");
                html.Append(dt2.Rows[0][6].ToString());
                html.Append("' /></div>");
                html.Append("<h3 class='label-menu'>");
                html.Append(dt2.Rows[0][1].ToString());
                html.Append("</h3>");
                html.Append("<h3 class='label-desc' style='line-height:15px'>");
                html.Append(dt2.Rows[0][2].ToString());
                html.Append("</h3>");
                html.Append("<h5 class='widthmax label-price'>RM");
                html.Append(dt2.Rows[0][3].ToString());
                html.Append("</h5>");

                PlaceHolderItem.Controls.Add(new Literal { Text = html.ToString() });
            }
            else {; }
            con.Close();
            //Order Info
            
            using (CreateOrder CO = new CreateOrder())
            {
                double total = Convert.ToDouble(CO.DisplayTotalPrice(OrderID));
                double sbtl = CO.retrieveMenuPrice(MenuID);
                lblTotal.Text = (total + sbtl).ToString();
                lblsubtotal.Text = sbtl.ToString();
                menupr = sbtl;                
            }
            if (!IsPostBack)
            {
                using (CreateOrder CO = new CreateOrder())
                {
                    Dictionary<String, int> GetOrderedItems = CO.GetOrderedItems(OrderID);
                    foreach (KeyValuePair<String, int> item in GetOrderedItems)
                    {
                        if (item.Key.Equals(MenuID))
                        {
                            txtQty.SelectedIndex = (item.Value - 1);
                        }
                    }
                    double newprice = menupr * Convert.ToDouble(txtQty.SelectedValue);
                    lblsubtotal.Text = newprice.ToString();
                }
            }


        }
    }
}
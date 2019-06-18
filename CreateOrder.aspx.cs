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
    public partial class CreateOrder : System.Web.UI.Page
    {
        String OrderID;
        String opr = "";
        string constr = ConfigurationManager.ConnectionStrings["BurgerlyfeDBConnectionString"].ConnectionString;
        Dictionary<String, int> OrderedItem = new Dictionary<string, int>();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(constr);
            OrderID = Request.QueryString["id"];
            opr = "";
            opr = Request.QueryString["opr"];
            //if (opr.Equals("cancel"))
            //{
            //    ScriptManager.RegisterStartupScript(this, this.GetType(), "showMnu", "showPanel();", true);
            //}
            IDorder.Value = OrderID;
            
            con.Open();
            SqlCommand cmd2 = con.CreateCommand();
            cmd2.CommandType = CommandType.Text;
            cmd2.CommandText = "Select * from ItemOrder where OrderID like '%"+OrderID+"%'";
            cmd2.ExecuteNonQuery();
            DataTable dt2 = new DataTable();
            SqlDataAdapter sda2 = new SqlDataAdapter(cmd2);
            sda2.Fill(dt2);
            int a = dt2.Rows.Count;
            if (dt2.Rows.Count > 0)
            {
                Dictionary<String, int> OrderedItem = new Dictionary<string, int>();
                foreach (DataRow dr in dt2.Rows)
                {
                    OrderedItem.Add(dr[1].ToString().Trim(), Convert.ToInt32(dr[2].ToString()));
                    //lblTotal.Text = "0";
                }
                DataTable dt = new DataTable();
                foreach (KeyValuePair<String, int> item in OrderedItem)
                {
                    SqlCommand cmd = con.CreateCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "Select * from Menu where Id like '%"+Convert.ToInt32(item.Key)+"%'";
                    cmd.ExecuteNonQuery();
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    sda.Fill(dt);
                    
                }
                StringBuilder html = new StringBuilder();
                int n = dt.Rows.Count;
                for (int i = 0; i < n; i++)
                {
                    String q = dt.Rows[i][0].ToString().Trim();
                    html.Append("<div class='ItemBox'>");
                    html.Append("<div class='modal-order'>");
                    html.Append("<input type='button' class='btnChgPW button center height2 transi2' style='margin-bottom:10px' value='Edit' onclick='Editqty(");html.Append(dt.Rows[i][0].ToString());html.Append(","); html.Append(OrderID); html.Append(")' />");
                    html.Append("<input type='button' class='btnChgPW button center height2 transi1' value='Delete' onclick='DeleteItem("); html.Append(dt.Rows[i][0].ToString()); html.Append(","); html.Append(OrderID); html.Append(")' />");
                    html.Append("</div>");
                    html.Append("<div class='widthmax heightmax orderItem' style='background-color:#010321;color:white; border:1px solid #d1ceef;border-radius:4px'>");
                    html.Append("<img src='");
                    html.Append(dt.Rows[i][6].ToString());
                    html.Append("' style='width:100%;height:auto' />");
                    html.Append("<h4 class='LabelAddress2' style='margin:15px 0px 2px 15px;text-align:left;font-weight:bold'>");
                    html.Append(dt.Rows[i][1].ToString());
                    html.Append("</h4>");
                    html.Append("<h4 class='LabelAddress2' style='text-align:left;font-size:14px;margin-left:15px;width:40%;float:left'>Qty :");
                    html.Append(OrderedItem[q].ToString());
                    html.Append("</h4>");
                    html.Append("<h4 class='LabelAddress2' style='text-align:right;font-size:14px;margin-right:15px;width:35%;float:right;color:red'>RM");
                    double price = Convert.ToDouble(OrderedItem[q].ToString()) * Convert.ToDouble(dt.Rows[i][3].ToString());
                    html.Append(price.ToString());
                    html.Append("</h4>");
                    html.Append("</div>");
                    html.Append("</div>");
                }
                if (!IsPostBack)
                {
                    lblTotal.Text = DisplayTotalPrice(OrderID);
                }
                Items.Controls.Add(new Literal { Text = html.ToString() });
                int z = OrderedItem.Count;
                

            }
            else { ; }
            con.Close();


        }

        public DataTable ItemInfoOrder(Dictionary<String, int> OrderedItem)
        {
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            DataTable dt = new DataTable();
            foreach (KeyValuePair<String, int> item in OrderedItem)
            {
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Select * from Menu where Id like '%" + Convert.ToInt32(item.Key) + "%'";
                cmd.ExecuteNonQuery();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(dt);

            }
            return dt;
            con.Close();
        }

        public String GetCustName(String CustID)
        {
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd2 = con.CreateCommand();
            cmd2.CommandType = CommandType.Text;
            cmd2.CommandText = "Select name,lastName from Customer where Id like '%" + Convert.ToInt32(CustID) + "%'";
            cmd2.ExecuteNonQuery();
            DataTable dt2 = new DataTable();
            SqlDataAdapter sda2 = new SqlDataAdapter(cmd2);
            sda2.Fill(dt2);
            String name = dt2.Rows[0][0].ToString() + " " + dt2.Rows[0][1].ToString();
            return name;
        }

        public DataTable GetOrderInfo(String OrderID)
        {            
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd2 = con.CreateCommand();
            cmd2.CommandType = CommandType.Text;
            cmd2.CommandText = "Select * from ORDERTABLE where OrderID like '%" + OrderID + "%'";
            cmd2.ExecuteNonQuery();
            DataTable dt2 = new DataTable();
            SqlDataAdapter sda2 = new SqlDataAdapter(cmd2);
            sda2.Fill(dt2);            
            return dt2;
        }

        public DataTable GetAllOrder()
        {
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd2 = con.CreateCommand();
            cmd2.CommandType = CommandType.Text;
            cmd2.CommandText = "Select * from ORDERTABLE ";
            cmd2.ExecuteNonQuery();
            DataTable dt2 = new DataTable();
            SqlDataAdapter sda2 = new SqlDataAdapter(cmd2);
            sda2.Fill(dt2);
            return dt2;
        }

        public DataTable GetAllOrder(String CustID)
        {
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd2 = con.CreateCommand();
            cmd2.CommandType = CommandType.Text;
            cmd2.CommandText = "Select * from ORDERTABLE where CustID like '%" + CustID + "%'";
            cmd2.ExecuteNonQuery();
            DataTable dt2 = new DataTable();
            SqlDataAdapter sda2 = new SqlDataAdapter(cmd2);
            sda2.Fill(dt2);
            return dt2;
        }

        public Dictionary<String, int> GetOrderedItems(String OrderID)
        {
            Dictionary<String, int> OrderedItem = new Dictionary<string, int>();
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd2 = con.CreateCommand();
            cmd2.CommandType = CommandType.Text;
            cmd2.CommandText = "Select * from ItemOrder where OrderID like '%" + OrderID + "%'";
            cmd2.ExecuteNonQuery();
            DataTable dt2 = new DataTable();
            SqlDataAdapter sda2 = new SqlDataAdapter(cmd2);
            sda2.Fill(dt2);
            int a = dt2.Rows.Count;
            if (dt2.Rows.Count > 0)
            {
                foreach (DataRow dr in dt2.Rows)
                {
                    OrderedItem.Add(dr[1].ToString().Trim(), Convert.ToInt32(dr[2].ToString()));
                }
            }
            return OrderedItem;
        }

        public bool checkinCart(String OrderID, String MenuID)
        {
            Dictionary<String, int> OrderedItems = GetOrderedItems(OrderID);
            bool IN = false;
            if (OrderedItems.ContainsKey(MenuID) == true)
            {
                IN = true;
            }
            return IN;

        }

        public String DisplayTotalPrice(String OrderID)
        {
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Select TotalPrice from ORDERTABLE where OrderID like '%" + OrderID + "%'";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            double Total = 0;
            if (dt.Rows.Count > 0)
            {
                if (!dt.Rows[0][0].Equals(null))
                {
                    double CurrentTotal = Convert.ToDouble(dt.Rows[0][0].ToString());
                    Total += CurrentTotal;
                }
                
            }
            return Total.ToString();
            con.Close();
        }

        public double retrieveMenuPrice(String MenuID)
        {
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            //check price menu
            SqlCommand cmd2 = con.CreateCommand();
            cmd2.CommandType = CommandType.Text;
            cmd2.CommandText = "Select Price from Menu where Id like '%" + MenuID + "%'";
            cmd2.ExecuteNonQuery();
            DataTable dt2 = new DataTable();
            SqlDataAdapter sda2 = new SqlDataAdapter(cmd2);
            sda2.Fill(dt2);
            double menuprice = 0;
            if (dt2.Rows.Count > 0)
            {
                double pr = Convert.ToDouble(dt2.Rows[0][0].ToString());
                menuprice += pr;
            }
            con.Close();
            return menuprice;
        }

        public void AddtoCart(String OrderID, String MenuID, int Qty)
        {
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            string query = "INSERT INTO ItemOrder(OrderID, MenuID, Qty) values(@OrderID,@MenuID,@Qty)";
            SqlCommand cmd3 = new SqlCommand(query, con);
            cmd3.Parameters.AddWithValue("@OrderID", OrderID);
            cmd3.Parameters.AddWithValue("@MenuID", MenuID);
            cmd3.Parameters.AddWithValue("@Qty", Qty);
            cmd3.ExecuteNonQuery();
            con.Close();
        }

        public void UpdateCart(String OrderID, String MenuID, int Qty)
        {
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            string query = "UPDATE ItemOrder SET Qty=@Qty WHERE OrderID= '" + Convert.ToInt32(OrderID) + "' AND MenuID='" + Convert.ToInt32(MenuID) + "' ";
            SqlCommand cmd3 = new SqlCommand(query, con);            
            cmd3.Parameters.AddWithValue("@Qty", Qty);
            cmd3.ExecuteNonQuery();
            con.Close();
        }

        public void updateORDERTABLE(String Orderid)
        {
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            string query = "Select * from ItemOrder where OrderID like '%" + Orderid + "%'";
            SqlCommand cmd3 = new SqlCommand(query, con);
            
            cmd3.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(cmd3);
            sda.Fill(dt);
            double TotalPrices = calculateTotalPrice(Orderid);
            double TotalQty = 0;
            
            int n = dt.Rows.Count;
            
            if (dt.Rows.Count > 0)
            {
                for (int i = 0; i < n; i++)
                {                    
                    TotalQty += Convert.ToDouble(dt.Rows[i][2].ToString());
                }
            }
                     
            con.Close();
            con.Open();
            string query2 = "UPDATE ORDERTABLE SET TotalPrice=@TotalPrice,TotalQty=@TotalQty WHERE OrderID= '" + Orderid + "' ";

            SqlCommand cmd2 = new SqlCommand(query2, con);
            cmd2.Parameters.AddWithValue("@TotalPrice", TotalPrices.ToString());
            cmd2.Parameters.AddWithValue("@TotalQty", TotalQty);
            cmd2.ExecuteNonQuery();
            con.Close();



        }



        public double calculateTotalPrice(String OrderID)
        {
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            string query = "Select * from ItemOrder where OrderID like '%" + OrderID + "%'";
            SqlCommand cmd3 = new SqlCommand(query, con);

            cmd3.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(cmd3);
            sda.Fill(dt);
            double TotalPrices = 0;            
            int n = dt.Rows.Count;
            if (dt.Rows.Count > 0)
            {
                for (int i = 0; i < n; i++)
                {
                    TotalPrices += (Convert.ToDouble(dt.Rows[i][2].ToString().Trim().ToString()) * retrieveMenuPrice(dt.Rows[i][1].ToString().Trim().ToString()));                    
                }
            }
            con.Close();            
            
            return TotalPrices;
        }

        public void DeleteItem(String OrderID, String MenuID)
        {
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            string query = "Delete from ItemOrder where OrderID like '%" + OrderID + "%' and MenuID like '%" + MenuID + "%'";
            SqlCommand cmd3 = new SqlCommand(query, con);

            cmd3.ExecuteNonQuery();
            con.Close();
        }

        public void updateTotalPrice(String Orderid, String Menuid, int Qty)
        {
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Select TotalPrice from ORDERTABLE where OrderID like '%" + OrderID + "%'";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            double Total = 0;
            if (dt.Rows.Count > 0)
            {
                
                    double CurrentTotal = Convert.ToDouble(dt.Rows[0][0].ToString());
                    Total += CurrentTotal;
                
                
            }

            double menuprice = retrieveMenuPrice(Menuid);

            Total = Total + (menuprice * Qty);

            string query = "UPDATE ORDERTABLE SET TotalPrice=@TotalPrice WHERE OrderID= '" + Convert.ToInt32(OrderID) + "' ";

            SqlCommand cmd3 = new SqlCommand(query, con);
            cmd3.Parameters.AddWithValue("@TotalPrice", Total);
            cmd3.ExecuteNonQuery();
            con.Close();
        }

        public void updateOrderRecieved(String Orderid)
        {
            DateTime date = DateTime.Now;
            String timerec = date.ToString("dd-MM-yyyy HH.mm");
            SqlConnection con = new SqlConnection(constr);
            con.Open();            
            string query = "UPDATE ORDERTABLE SET TimeRecieved=@TimeRecieved WHERE OrderID= '" + Convert.ToInt32(Orderid) + "' ";

            SqlCommand cmd3 = new SqlCommand(query, con);
            cmd3.Parameters.AddWithValue("@TimeRecieved", timerec);
            cmd3.ExecuteNonQuery();
            con.Close();
        }

        public void updateOrderStatus(String Orderid, String status)
        {            
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            string query = "UPDATE ORDERTABLE SET Status=@Status WHERE OrderID= '" + Convert.ToInt32(Orderid) + "' ";

            SqlCommand cmd3 = new SqlCommand(query, con);
            cmd3.Parameters.AddWithValue("@Status", status);
            cmd3.ExecuteNonQuery();
            con.Close();
        }

        private void redirectItem(String OrderID, String MenuID)
        {
            Response.Redirect("AddItemCart.aspx?Id=" + OrderID + "&mn=" + MenuID);
        }


        protected void btnAddItem_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "showMnu", "showPanel();", true);
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            //ScriptManager.RegisterStartupScript(this, this.GetType(), "showMnu", "showPanel();", true);

            ScriptManager.RegisterStartupScript(this, this.GetType(), "showBack", "showOrder();", true);

        }

        protected void btn101_Click(object sender, EventArgs e)
        {
            redirectItem(OrderID, "101");
        }

        protected void btn102_Click(object sender, EventArgs e)
        {
            redirectItem(OrderID, "102");
        }

        protected void btn103_Click(object sender, EventArgs e)
        {
            redirectItem(OrderID, "103");
        }

        protected void btn104_Click(object sender, EventArgs e)
        {
            redirectItem(OrderID, "104");
        }
        protected void btn105_Click(object sender, EventArgs e)
        {
            redirectItem(OrderID, "105");
        }

        protected void btn106_Click(object sender, EventArgs e)
        {
            redirectItem(OrderID, "106");
        }

        protected void btn107_Click(object sender, EventArgs e)
        {
            redirectItem(OrderID, "107");
        }

        protected void btn108_Click(object sender, EventArgs e)
        {
            redirectItem(OrderID, "108");
        }
        protected void btn109_Click(object sender, EventArgs e)
        {
            redirectItem(OrderID, "109");
        }

        protected void btn110_Click(object sender, EventArgs e)
        {
            redirectItem(OrderID, "110");
        }

        protected void btn111_Click(object sender, EventArgs e)
        {
            redirectItem(OrderID, "111");
        }

        protected void btn112_Click(object sender, EventArgs e)
        {
            redirectItem(OrderID, "112");
        }
        protected void btn113_Click(object sender, EventArgs e)
        {
            redirectItem(OrderID, "113");
        }

        protected void btn114_Click(object sender, EventArgs e)
        {
            redirectItem(OrderID, "114");
        }

        protected void btn115_Click(object sender, EventArgs e)
        {
            redirectItem(OrderID, "115");
        }

        protected void btn116_Click(object sender, EventArgs e)
        {
            redirectItem(OrderID, "116");
        }
        protected void btn117_Click(object sender, EventArgs e)
        {
            redirectItem(OrderID, "117");
        }

        protected void btn118_Click(object sender, EventArgs e)
        {
            redirectItem(OrderID, "118");
        }

        protected void btn119_Click(object sender, EventArgs e)
        {
            redirectItem(OrderID, "119");
        }

        protected void btn120_Click(object sender, EventArgs e)
        {
            redirectItem(OrderID, "120");
        }
        protected void btn121_Click(object sender, EventArgs e)
        {
            redirectItem(OrderID, "121");
        }
        protected void btn122_Click(object sender, EventArgs e)
        {
            redirectItem(OrderID, "122");
        }
        protected void btn123_Click(object sender, EventArgs e)
        {
            redirectItem(OrderID, "123");
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReviewOrder.aspx?id=" + OrderID);
        }

        public void deleteOrder(String OrderID)
        {
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            string query = "Delete from ItemOrder where OrderID like '%" + OrderID + "%' ";
            SqlCommand cmd3 = new SqlCommand(query, con);
            cmd3.ExecuteNonQuery();

            string query2 = "Delete from ORDERTABLE where OrderID like '%" + OrderID + "%' ";
            SqlCommand cmd2 = new SqlCommand(query2, con);
            cmd2.ExecuteNonQuery();

            con.Close();
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            deleteOrder(OrderID);
            Response.Redirect("Home.aspx");
        }

    }
}
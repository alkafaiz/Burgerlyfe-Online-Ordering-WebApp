using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace WebApplication1
{
    public partial class UpdateStatus : System.Web.UI.Page
    {
        String OrderID;
        protected void Page_Load(object sender, EventArgs e)
        {
            OrderID = Request.QueryString["id"];

            Dictionary<String, int> Items = new Dictionary<string, int>();
            DataTable OrderInfo = new DataTable();
            DataTable ItemOrderInfo = new DataTable();

            using (CreateOrder CO = new CreateOrder())
            {
                Items = CO.GetOrderedItems(OrderID);
                OrderInfo = CO.GetOrderInfo(OrderID);
                ItemOrderInfo = CO.ItemInfoOrder(Items);
            }

            StringBuilder htmlMenu = new StringBuilder();
            StringBuilder htmlTotal = new StringBuilder();
            StringBuilder htmlTotalQty = new StringBuilder();

            int n = Items.Count;
            for (int i = 0; i < n; i++)
            {
                htmlMenu.Append("<div class='row2 borderbtm'>");
                htmlMenu.Append("<div style='float:left; width:53%;padding-right:2%; height:100%;' >");
                htmlMenu.Append("<img src='"); htmlMenu.Append(ItemOrderInfo.Rows[i][6].ToString()); htmlMenu.Append("' style='width:15%;height:auto;padding-top:20px;margin-right:10px; float:left' />");
                htmlMenu.Append("<h2 class='label2'>"); htmlMenu.Append(ItemOrderInfo.Rows[i][1].ToString()); htmlMenu.Append("</h2>");
                htmlMenu.Append("</div>");
                htmlMenu.Append("<div style='float:left;width:15%;height:100%;' >");
                htmlMenu.Append("<h2 class='label2' >"); htmlMenu.Append(ItemOrderInfo.Rows[i][3].ToString()); htmlMenu.Append("</h2>");
                htmlMenu.Append("</div>");
                htmlMenu.Append("<div style='float:left;width:15%;height:100%;' >");
                htmlMenu.Append("<h2 class='label2' >"); htmlMenu.Append(Items[ItemOrderInfo.Rows[i][0].ToString()].ToString()); htmlMenu.Append("</h2>");
                htmlMenu.Append("</div>");
                htmlMenu.Append("<div style='float:left;width:15%;height:100%;' >");
                double pr = Convert.ToDouble(Items[ItemOrderInfo.Rows[i][0].ToString()].ToString()) * Convert.ToDouble(ItemOrderInfo.Rows[i][3].ToString());
                htmlMenu.Append("<h2 class='label2' >"); htmlMenu.Append(pr.ToString()); htmlMenu.Append("</h2>");
                htmlMenu.Append("</div>");
                htmlMenu.Append("</div>");
            }
            PlaceHolderItems.Controls.Add(new Literal { Text = htmlMenu.ToString() });

            htmlTotalQty.Append("<h2 class='label2 bold2'>"); htmlTotalQty.Append(OrderInfo.Rows[0][3].ToString()); htmlTotalQty.Append("</h2>");
            htmlTotal.Append("<h2 class='label2 bold2'>RM"); htmlTotal.Append(OrderInfo.Rows[0][2].ToString()); htmlTotal.Append("</h2>");
            PlaceHolderTotal.Controls.Add(new Literal { Text = htmlTotal.ToString() });
            PlaceHolderTotQty.Controls.Add(new Literal { Text = htmlTotalQty.ToString() });

            StringBuilder htmlOrderInfo = new StringBuilder();
            String name;
            using (CreateOrder CO = new CreateOrder())
            {
                name = CO.GetCustName(OrderInfo.Rows[0][1].ToString());
            }
                htmlOrderInfo.Append("<h2 class='label3'>"); htmlOrderInfo.Append(name); htmlOrderInfo.Append("</h2>");
            htmlOrderInfo.Append("<h2 class='label3'>"); htmlOrderInfo.Append(OrderInfo.Rows[0][4].ToString()); htmlOrderInfo.Append("</h2>");
            htmlOrderInfo.Append("<h2 class='label3'>"); htmlOrderInfo.Append(OrderInfo.Rows[0][7].ToString()); htmlOrderInfo.Append("</h2>");
            htmlOrderInfo.Append("<h2 class='label3'>"); htmlOrderInfo.Append(OrderInfo.Rows[0][8].ToString()); htmlOrderInfo.Append("</h2>");
            htmlOrderInfo.Append("</div>");
            htmlOrderInfo.Append("<h2 class='label3' style='float:left;width:60%'>"); htmlOrderInfo.Append(OrderInfo.Rows[0][5].ToString()); htmlOrderInfo.Append("</h2>");
            PlaceHolderOrderInfo.Controls.Add(new Literal { Text = htmlOrderInfo.ToString() });
            lblstatus.Text = OrderInfo.Rows[0][9].ToString();
        }

        protected void btnOnProcess_Click(object sender, EventArgs e)
        {
            using(CreateOrder CO = new CreateOrder())
            {
                CO.updateOrderStatus(OrderID, "On Process");
            }
            Response.Redirect("Dashboard.aspx");
        }

        protected void btnOnDeliv_Click(object sender, EventArgs e)
        {
            using (CreateOrder CO = new CreateOrder())
            {
                CO.updateOrderStatus(OrderID, "On Delivery");
            }
            Response.Redirect("Dashboard.aspx");
        }

        protected void btnComplet_Click(object sender, EventArgs e)
        {
            using (CreateOrder CO = new CreateOrder())
            {
                CO.updateOrderStatus(OrderID, "Completed");
            }
            Response.Redirect("Dashboard.aspx");
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            using (CreateOrder CO = new CreateOrder())
            {
                CO.updateOrderStatus(OrderID, "Canceled");
            }
            Response.Redirect("Dashboard.aspx");
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Dashboard.aspx");
        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");

        }
    }
}
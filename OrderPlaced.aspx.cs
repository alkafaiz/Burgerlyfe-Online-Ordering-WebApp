using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class OrderPlaced : System.Web.UI.Page
    {
        String OrderID;
        protected void Page_Load(object sender, EventArgs e)
        {
            OrderID = Request.QueryString["id"];
            lblID.Text = OrderID;
            using(CreateOrder CO = new CreateOrder())
            {
                CO.updateOrderRecieved(OrderID);
                CO.updateOrderStatus(OrderID, "Accepted");
            }
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Homes.aspx");
        }

        protected void btnOrderH_Click(object sender, EventArgs e)
        {
            Response.Redirect("MyOrder.aspx");
        }
    }
}
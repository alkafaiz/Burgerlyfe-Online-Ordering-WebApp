using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class DeleteItem : System.Web.UI.Page
    {
        String OrderID, MenuID;
        protected void Page_Load(object sender, EventArgs e)
        {
            OrderID = Request.QueryString["Id"];
            MenuID = Request.QueryString["mn"];
            using (CreateOrder CO = new CreateOrder())
            {
                CO.DeleteItem(OrderID, MenuID);
                CO.updateORDERTABLE(OrderID);
            }
            Response.Redirect("CreateOrder.aspx?id=" + OrderID);

        }
    }
}
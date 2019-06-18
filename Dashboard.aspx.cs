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
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable allorder = new DataTable();
            using(CreateOrder CO = new CreateOrder())
            {
                allorder = CO.GetAllOrder();
            }
            StringBuilder html = new StringBuilder();
            int n = allorder.Rows.Count;
            lblQty.Text = n.ToString();
            for (int i = 0; i < n; i++)
            {
                html.Append("<tr>");
                html.Append("<td>");
                html.Append(allorder.Rows[i][0].ToString());
                html.Append("</td>");

                html.Append("<td>");
                html.Append(allorder.Rows[i][6].ToString());
                html.Append("</td>");

                html.Append("<td>");
                html.Append(allorder.Rows[i][3].ToString());
                html.Append("</td>");

                html.Append("<td>RM");
                html.Append(allorder.Rows[i][2].ToString());
                html.Append("</td>");

                html.Append("<td>");
                html.Append(allorder.Rows[i][9].ToString());
                html.Append("</td>");

                html.Append("<td>");
                html.Append("<a href='UpdateStatus.aspx?id=");
                html.Append(allorder.Rows[i][0].ToString());
                html.Append("&opr=view'>Update Status</a>");
                html.Append("</td>");
                html.Append("</tr>");
            }
            dataOrder.Controls.Add(new Literal { Text = html.ToString() });

        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}
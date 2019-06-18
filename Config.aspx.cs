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
    public partial class Config : System.Web.UI.Page
    {
        String Opr, id,mid;
        string constr = ConfigurationManager.ConnectionStrings["BurgerlyfeDBConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(constr);   
            Opr = Request.QueryString["opr"];
            mid = Request.QueryString["mid"];
            //id = Request.QueryString["id"];
            id = "329";
            int ids = Convert.ToInt32(id);
            Console.WriteLine("SUCCESSSSSSSSSSSSSSSSSSSSSSSS");
            if(Opr== "AddItem")
            {
                Response.Write("<div class='menupic'>");
                Response.Write("<div style='width:100%; height:230px;'>");
                Response.Write("<img style='width:100%;height:auto' src='IC-cakefudge.jpg'></div>");
                Response.Write("<h3 class='label-menu'>CAKE FUDGE</h3>");
                Response.Write("<h3 class='label-desc' style='line-height:15px'>Chocolate cake, vanilla ice cream, chocolate sauce</h3>");
                Response.Write("h5 class='widthmax label-price'>RM 8</h5>");                
                Response.Write("</div>");
              
            }
            if (Opr == "test")
            {
                Response.Write("<div class='ItemBox' style='width:100px;height:100px;background-color:red'>TEst</div>");
            }

            if (Opr == "display")
            {
                //Console.WriteLine("SUCCESSSSSSSSSSSSSSSSSSSSSSSS");
                con.Open();
                //for OrderTable
                SqlCommand cmd2 = con.CreateCommand();
                cmd2.CommandType = CommandType.Text;
                cmd2.CommandText = "Select * from ItemOrder where OrderID like '%" + ids + "%'";
                cmd2.ExecuteNonQuery();
                DataTable dt2 = new DataTable();
                SqlDataAdapter sda2 = new SqlDataAdapter(cmd2);
                sda2.Fill(dt2);
                Dictionary<String, int> OrderedItem = new Dictionary<string, int>();
                if (dt2.Rows.Count > 0)
                {
                    foreach(DataRow dr in dt2.Rows)
                    {
                        OrderedItem.Add(dr[1].ToString(), Convert.ToInt32(dr[2].ToString()));
                    }
                }
                
                foreach(KeyValuePair<String,int> item in OrderedItem)
                {
                    SqlCommand cmd = con.CreateCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "Select * from Menu where Id like '%" + item.Key + "%'";
                    cmd.ExecuteNonQuery();
                    DataTable dt = new DataTable();
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    sda.Fill(dt);
                    foreach (DataRow dr in dt.Rows)
                    {                       
                            Response.Write("<div class='ItemBox'>");
                            Response.Write("<div class='widthmax heightmax' style='border: 1px dashed #d1ceef;border-radius:4px'>");
                            Response.Write("<h3 style='width:100%; line-height:280px; text-align:center; color:#d1ceef;font-weight:100;margin:0px'>");
                            Response.Write(dr[1].ToString());
                            Response.Write(dr[2].ToString());
                            Response.Write(dr[3].ToString());
                            Response.Write("</h3>");
                            Response.Write("</div>");
                            Response.Write("</div>");
                     

                    }
                }
                con.Close();
                
            }
        }
    }
}
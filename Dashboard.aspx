<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="WebApplication1.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dashboard | Burgerlyfe Delivery</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet1.css"/>      
    <link rel="icon" href="favicon-burgerlyfe.png" type="image/x-icon" />
    <link href='https://fonts.googleapis.com/css?family=Cantarell' rel='stylesheet'/>
    <link href='https://fonts.googleapis.com/css?family=Leckerli One' rel='stylesheet'/>
    <link href='https://fonts.googleapis.com/css?family=Fjalla One' rel='stylesheet'/>
    <link href='https://fonts.googleapis.com/css?family=Hammersmith One' rel='stylesheet'/>
    <link href='https://fonts.googleapis.com/css?family=Merriweather Sans' rel='stylesheet'/>
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed" rel="stylesheet"/>
</head>
<body style="background-color:#090057">
    <form id="AdminPanel" runat="server">
    <!-- Order Bar -->
        <div id="OrderBar" style="position:relative;top:0;width:100%;">
            <div style="width:100%;height:70px;margin:0px;position:relative;top:0px;background-color:white;display:block ;font-family:'Roboto Condensed', sans-serif">
                <div class="wrapper" style="height:100%;">
                    <div style="width:58%;height:100%;float:left;display:block">
                        <h2 id="labelOrder" style="font-size:23px;line-height:70px; margin:0px; padding:0px 0px 0px 0px;text-align:left">ADMIN DASHBOARD</h2>                        
                    </div>                                                             
                    <div id="btnContainer3" style="width:10% ;height:100%;float:right;">
                        <asp:Button ID="btnLogOut" CssClass="btnSet1 transi2 center height4 widthmax " UseSubmitBehavior="false" Font-Bold="true" runat="server" Text="Log Out" ForeColor="White" OnClick="btnLogOut_Click"/>
                    </div>                    
                </div>            
            </div>
        </div> 

        <div class="wrapper" style="min-height:400px;overflow:-webkit-paged-x;display:block;background-color:#ffffff; margin-top:30px">
            <div style="width:95%;margin:20px auto;height:auto;">
                <h2 style="float:left; margin:0px; padding:10px 0px 10px 0px">ALL ORDER (<span><asp:Label ID="lblQty" runat="server" Text="0"></asp:Label></span>) </h2>
            <div class="myAddress">
                    <table class="tbl1">
                        <thead style="background-color:#f5f5f5">
                            <tr>
                                <th>#</th>
                                <th>Date</th>
                                <th>Total Qty</th>
                                <th>Total Price</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <asp:PlaceHolder ID="dataOrder" runat="server"></asp:PlaceHolder>
                            
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

    </form>
</body>
</html>

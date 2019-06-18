<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderPlaced.aspx.cs" Inherits="WebApplication1.OrderPlaced" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Your order has been sent successfully | Burgerlyfe Delivery</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet1.css"/>           
    <link rel="icon" href="favicon-burgerlyfe.png" type="image/x-icon" />
    <link href='https://fonts.googleapis.com/css?family=Cantarell' rel='stylesheet'/>
    <link href="https://fonts.googleapis.com/css?family=Sacramento" rel="stylesheet"/>
</head>
<body style="background-color:#ededed;font-family:Cantarell">
    <form id="OrderSent" runat="server">
    <div style="width:50%;height:420px;background-color:#f3f3f3;border:1px solid #d5d5d5;border-radius:6px;margin:100px auto;">
    <h1 style="background-color:white;font-family:'Sacramento', cursive; font-size:130px;margin:0px;width:100%;text-align:center;font-weight:300;padding-top:20px; ">Thank You.</h1>    
        <h2 style="background-color:white;font-size:27px;width:100%;margin:0px;text-align:center;font-weight:200;">Your order number <span>
            <asp:Label ID="lblID" runat="server" Text=""></asp:Label></span> has been sent!</h2>
        <h2 style="background-color:white;font-size:27px;width:100%;margin:0px;text-align:center;font-weight:200;padding-bottom:20px;border-bottom:1px solid #cacaca; ">Thank you for supporting us!</h2>
        
        <div style="width:50%;height:50px;margin:20px auto;">
            <div style="width:49%;height:100%;float:left;margin-right:2%">
                <asp:Button ID="btnOrderH" CssClass="btnSet1 transi2 center widthmax" Font-Bold="true" runat="server" Text="Track Order" ForeColor="White" OnClick="btnOrderH_Click" />
            </div>
            <div style="width:49%;height:100%;float:left">
                <asp:Button ID="btnHome" CssClass="btnSet1 transi2 center widthmax" Font-Bold="true" runat="server" Text="Home" ForeColor="White" OnClick="btnHome_Click" />
            </div>
        </div>
        
    </div>
    </form>
</body>
</html>

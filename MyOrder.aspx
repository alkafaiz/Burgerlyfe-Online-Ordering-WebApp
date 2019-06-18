<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyOrder.aspx.cs" Inherits="WebApplication1.MyOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Order History | Burgerlyfe Delivery</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet1.css"/>      
    <link rel="icon" href="favicon-burgerlyfe.png" type="image/x-icon" />
    <link href='https://fonts.googleapis.com/css?family=Cantarell' rel='stylesheet'/>
    <link href='https://fonts.googleapis.com/css?family=Leckerli One' rel='stylesheet'/>
    <link href='https://fonts.googleapis.com/css?family=Fjalla One' rel='stylesheet'/>
    <link href='https://fonts.googleapis.com/css?family=Hammersmith One' rel='stylesheet'/>
    <link href='https://fonts.googleapis.com/css?family=Merriweather Sans' rel='stylesheet'/>
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed" rel="stylesheet"/>
</head>
<body>
    <form id="MyOrderForm" runat="server">
    <div id="header-menu" >
            <div class="wrapper">
                <div style="float:left;margin:10px 0px"><a href="Home.aspx"><img src="BURGERLYFE LOGO 90x90.png" /></a></div>
                <ul id="mainmenu">
                  <li><asp:LinkButton ID="Signin" CssClass="linkMM" runat="server" Visible="False">Sign In</asp:LinkButton></li>
                  <li><asp:LinkButton ID="myacc" CssClass="linkMM" runat="server" >My Account</asp:LinkButton>
                      <ul class="dropdown">
                          <li><asp:LinkButton ID="Myorder" runat="server" OnClick="Myorder_Click">My Order</asp:LinkButton></li>
                          <li><asp:LinkButton ID="Editprofile" runat="server" OnClick="Editprofile_Click" >My Profile</asp:LinkButton></li>
                          <li><asp:LinkButton ID="Logout" runat="server" OnClick="Logout_Click">Log Out</asp:LinkButton></li>
                      </ul>
                  </li>

                  <li><a href="FeedBack.aspx">Feedback</a></li>
                  <li><a href="AboutUs.aspx">About Us</a></li>
                  <li><a href="Ourmenus.aspx">Our Menus</a></li>
                  <li style="float:right"><a href="Home.aspx">Home</a></li>              
                </ul>
            </div>
        </div>

        <!-- Start content -->
        <div id="Content" style="width:100%; padding-bottom:30px;  background-color:#f7f7f7; height:auto; margin-top:0px">

            <div class="wrapper" style="height:100px;border:1px solid #f2f2f2;margin-bottom:30px;background-color:white">
                <asp:LinkButton ID="btnmyProfile" CssClass="profMenu " runat="server" OnClick="btnmyProfile_Click">MY PROFILE</asp:LinkButton>
                <asp:LinkButton ID="btnmyAdd" CssClass="profMenu " runat="server" OnClick="btnmyAdd_Click">MY ADDRESS</asp:LinkButton>
                <asp:LinkButton ID="btnmyFav" CssClass="profMenu" runat="server">MY FAVOURITE</asp:LinkButton>
                <asp:LinkButton ID="btnOrderHis" CssClass="profMenu proMenuactive" runat="server" >ORDER HISTORY</asp:LinkButton>
                
            </div>
         
        <div class="wrapper" style="height:auto; padding-bottom:50px; padding-top:20px; margin-top:0px; border:1px solid #f2f2f2; background-color:white; ">
            <div class="row-address">
                <h2 style="float:left; margin:0px; padding:10px 0px 10px 0px">ORDER HISTORY (<span><asp:Label ID="lblQty" runat="server" Text="0"></asp:Label></span>) </h2>
                <asp:Button ID="btnNewOrder" CssClass="float-rg btnChgPW button" BackColor="#4bc11d" runat="server" Text="Place New Order" UseSubmitBehavior="False" OnClick="btnNewOrder_Click"  />
            </div>
            <div class="row-address">
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
           
    </div>

        <!-- Footer -->
        <div id="footer">
            <div class="wrapper" >
                <div class="footer-box">
                    <h4 style="font-size: 20px; margin-bottom:0px">About Us</h4>
                    <p style="margin-top:5px">Lorem Ipsum ist in der Indust rie ber eits der Standard s ein unbekannter Schr. Industrie ber eits der Standard Demo-Text seit 1500, als ein unbekannter Schr.</p>
                </div>

                <div class="footer-box" style="margin:0px; padding-left:60px; ">
                    <h4 style="font-size: 20px; margin-bottom:5px">Contact Us</h4>
                    <img style="float:left; margin:0px 5px 3px 0px" src="phone-icon.png" /><p style="margin:0px 0px 2px 0px;">+6011 2928 3128</p>                    
                    <img style="float:left; margin:0px 5px 3px 0px" src="wa-icon.png" /><p style="margin:0px 0px 2px 0px;">+6012 9431 2289</p>
                    <img style="float:left; margin:0px 5px 3px 0px" src="ig-icon.png" /><p style="margin:0px 0px 2px 0px;">burgerlyfe.my</p>
                    <img style="float:left; margin:0px 5px 3px 0px" src="fb-icon.png" /><p style="margin:0px 0px 2px 0px;">Burgerlyfe Malaysia</p>
                    <img style="float:left; margin:0px 5px 3px 0px" src="email-icon.png" /><p style="color:#d89713; margin:0px 0px 2px 0px;">burgerlyfe@cs.com</p>
                    
                </div>
                
                <div class="footer-box" style=" padding-right:0px">
                    <h4 style="font-size: 20px; margin-bottom:0px;">Location</h4>
                    <p style="margin-top:5px; margin-bottom:0px">Lorem Ipsum ist in der Indust rie ber eits der Standard s ein unbekannter Schr.</p>
                    <p style="margin-top:0px;">57000</p>
                </div>
            </div>

        </div>
        <script>
            var popup = document.getElementById("popUP");

            function playPopUp(){
                popup.style.animationPlayState = "running";
            }
        </script>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ordering.aspx.cs" Inherits="WebApplication1.Ordering" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Order Info | Burgerlyfe Delivery</title>
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
    <form id="InitiateOrderForm" runat="server">    
        <div id="header-menu" >
                <div class="wrapper">
                    <div style="float:left;margin:10px 0px"><a href="Home.aspx"><img src="BURGERLYFE LOGO 90x90.png" /></a></div>
                    <ul id="mainmenu">
                      <li><asp:LinkButton ID="Signin" CssClass="linkMM" runat="server" Visible="true" OnClick="Signin_Click">Sign In</asp:LinkButton></li>
                      <li><asp:LinkButton ID="myacc" CssClass="linkMM" runat="server" Visible="False" >My Account</asp:LinkButton>
                          <ul class="dropdown">
                              <li><asp:LinkButton ID="Myorder" runat="server">My Order</asp:LinkButton></li>
                              <li><asp:LinkButton ID="Editprofile" runat="server" OnClick="Editprofile_Click" >My Profile</asp:LinkButton></li>
                              <li><asp:LinkButton ID="Logout" runat="server" OnClick="Logout_Click">Log Out</asp:LinkButton></li>
                          </ul>
                      </li>

                      <li><a href="FeedBack.aspx">Feedback</a></li>
                      <li><a href="AboutUs.aspx">About Us</a></li>
                      <li><a class="active" href="Ourmenus.aspx">Our Menus</a></li>
                      <li style="float:right"><a href="Home.aspx">Home</a></li>              
                    </ul>
                </div>
            </div>

        <!-- Start content -->
        <div id="Content" style="width:100%; padding-bottom:30px; overflow:-webkit-paged-x; background-color:#f7f7f7; height:auto; margin-top:0px">
         
        <div class="wrapper" style="min-height:400px; height:auto; padding-bottom:50px; padding-top:0px; margin-top:0px;  ">
            <h1 style="margin:0px; width:100%; text-align:center; height:auto; padding-bottom:20px; font-size:40px; font-family: 'Fjalla One'; color:#0f2633">~ Order Information ~</h1>             
            <div style="width:60%;min-height:440px; padding-bottom:20px;overflow:-webkit-paged-x; background-color:white; border:1px solid #cacaca; border-radius:5px;"  class="center">
                
                <div class="row-address">
                    <h2 style="font-size:20px; margin:0px; padding:10px 0px 10px 0px">Choose Delivery Date & Time</h2>
                </div>
                
                <div class="row-address" >
                    <div style="width:49.5%; margin-right:1%; float:left; display:block">
                        <h4 style="font-weight:100; margin:0px;padding:0px">Date</h4>
                        <asp:DropDownList ID="txtDate" CssClass="txt-style txt-style-wid" runat="server" OnSelectedIndexChanged="txtDate_SelectedIndexChanged">
                            <asp:ListItem>Today</asp:ListItem>                                                       
                        </asp:DropDownList>
                    </div>
                    <div style="width:49.5%; float:left; display:block">
                        <h4 style="font-weight:100; margin:0px;padding:0px">Time</h4>
                        <asp:DropDownList ID="txtTime" CssClass="txt-style txt-style-wid" runat="server">                                                                                
                        </asp:DropDownList>
                    </div>
                </div>
                <div style="border-bottom:1px solid #f3f3f3; height:20px; margin-bottom:10px; width:100%; display:inline-block"></div>
                <div class="row-address" style="min-height:40px; margin-bottom:10px; " >
                    <div style="width:74%; margin-right:1%; float:left; display:block">
                        <h2 style="font-size:20px; margin:0px; padding:10px 0px 10px 0px">Choose Address</h2>                                                      
                    </div>
                    <div style="width:25%; float:left; display:block;padding-top:5px; ">
                        <asp:Button ID="btnManageAdd" CssClass="btnChgPW button center float-rg" runat="server" Text="Manage Address" OnClick="btnManageAdd_Click" />                        
                    </div>
                </div>
                <!-- Item Address -->
                <asp:PlaceHolder ID="ItemAddress" runat="server"></asp:PlaceHolder> 
                <!--
                <div class="hoverable1 AddressBox" >
                <div class="row-address" style="height:60px; padding-top:13px; margin-bottom:10px; " >
                    <div class="show" style="width:7%; float:left;height:120px">
                        <h3 class="LabelAddress5">1</h3>
                    </div>
                    <div class="show" style="width:60%; float:left;height:120px">
                        <h3 class="LabelAddress1">Home</h3>
                        <h5 class="LabelAddress2">Block B, Level 16, Unit 3, Taman Sri Endah,Kuala Lumpur, 57000, Wilayah Persekutuan Kuala Lumpur</h5>
                        <h5 class="LabelAddress3">Store Incharge - SPETALING</h5>
                        <h5 class="LabelAddress4">Store Status - Online</h5>
                    </div>
                    <div class="show" style="width:33%; float:left;height:120px">
                        <asp:CheckBox ID="CheckBox1" CssClass="float-rg height3" runat="server" />
                    </div>                    
                </div>
                </div> -->
                

                
                <!-- Contact Person -->
                <div class="row-address">
                    <h2 style="font-size:20px; margin:0px; padding:10px 0px 10px 0px">Choose Contact Number</h2>
                </div>
                
                <div class="row-address" >
                    <div style="width:49.5%; margin-right:1%; float:left; display:block">
                        <h4 style="font-weight:100; margin:0px;padding:0px">Contact</h4>
                        <asp:DropDownList ID="txtContact" CssClass="txt-style txt-style-wid" runat="server">                                                       
                        </asp:DropDownList>
                    </div>
                    <div style="width:49.5%; float:left; padding-top:30px; display:block">
                        <asp:Button ID="btnManageContact" CssClass="btnChgPW button center float-rg" runat="server" Text="Manage Contact" OnClick="btnManageContact_Click" />                                                
                    </div>
                </div>
                <div class="row-address">
                </div>
            </div>
            <div style="width:60%; margin-top:10px"  class="center">                
                <asp:Button ID="btnInitiate" CssClass="button center btnDeliv" runat="server" Text="Start Delivery Order" OnClick="btnInitiate_Click" />                                                                    
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

        <script type="text/javascript">
            var bt = document.getElementsByClassName("chkbx");
            function check(){
            if (bt.checked == true) {
                var x = document.getElementsByClassName("AddressBox");
                x.style.background-color="#f2f2f2";
            }
            }
            check();
        </script>

    </form>
</body>
</html>

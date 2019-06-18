<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="WebApplication1.AboutUs" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Us</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet1.css"/>      
    <link rel="icon" href="favicon-burgerlyfe.png" type="image/x-icon" />
    <link href='https://fonts.googleapis.com/css?family=Cantarell' rel='stylesheet'/>
    <link href='https://fonts.googleapis.com/css?family=Leckerli One' rel='stylesheet'/>
    <link href='https://fonts.googleapis.com/css?family=Fjalla One' rel='stylesheet'/>
    <link href='https://fonts.googleapis.com/css?family=Hammersmith One' rel='stylesheet'/>
    <link href='https://fonts.googleapis.com/css?family=Merriweather Sans' rel='stylesheet'/>
</head>
<body>
    
    <form id="abtus" runat="server">
        <!-- <asp:HiddenField ID="CustID" runat="server" /> -->
        <div style="width:100%;height:auto;">
        <div id="top-bar" class="wrapper">     
            <ul id="top-bar-item">
                <!--
                <li><a style="margin:0px; color:#858585" href="Registration.aspx"> Sign Up Here</a></li>
                <li><p style="margin:0px; text-decoration:none; color:#858585"> You're not registered?</p></li>
                -->
                <li><asp:LinkButton ID="signuplink" CssClass="lbltop" runat="server" ForeColor="#A0A0A0" OnClick="signuplink_Click"> Sign up here</asp:LinkButton></li>
                <li><asp:Label ID="lblCust" runat="server" CssClass="lbltop" Text="You're not registered?"></asp:Label></li>

                <li style="float:left"><div style="margin-right:10px; "><a href="#instagram.com"><img class="icon-top" style="margin-top:2px; width:15px; height:auto" src="ig-top-icon.png" /></a></div></li>
                <li style="float:left"><div style="margin-right:5px;"><a href="#twitter.com"><img class="icon-top" style="margin-top:2px; width:15px; height:auto" src="twitter-top-icon.png" /></a></div></li>
                <li style="float:left"><div><a href="#facebook.com"><img  class="icon-top" style="margin-top:2px; width:15px; height:auto" src="fb-top-icon.png" /></a></div></li>
            </ul>      
            
                                                    
        </div>
            </div>
        <div id="header-menu" >
            <div class="wrapper">
                <div style="float:left;margin:10px 0px"><a href="Home.aspx"><img src="BURGERLYFE LOGO 90x90.png" /></a></div>
                <ul id="mainmenu">
                  <li><asp:LinkButton ID="Signin" CssClass="linkMM" runat="server" OnClick="Signin_Click">Sign In</asp:LinkButton></li>
                  <li><asp:LinkButton ID="myacc" CssClass="linkMM" runat="server" Visible="False">My Account</asp:LinkButton>
                      <ul class="dropdown">
                          <li><asp:LinkButton ID="Myorder" runat="server">My Order</asp:LinkButton></li>
                          <li><asp:LinkButton ID="Editprofile" runat="server" OnClick="Editprofile_Click">My Profile</asp:LinkButton></li>
                          <li><asp:LinkButton ID="Logout" runat="server" OnClick="Logout_Click">Log Out</asp:LinkButton></li>
                      </ul>
                  </li>

                  <li><a href="FeedBack.aspx">Feedback</a></li>
                  <li><a href="AboutUs.aspx">About Us</a></li>
                  <li><a href="Ourmenus.aspx">Our Menus</a></li>
                  <li style="float:right"><a class="active" href="Home.aspx">Home</a></li>              
                </ul>
            </div>
           
        </div>
         <div class="wrapper" style="margin-top:30px; margin-bottom:30px; height:405px; display:block;">
             <div style="float:left;">
                <img style="margin-top:33px;" src="Chefaboutus.jpg" />
                 </div>
             <div style="float:left; width:54.7%; padding:0px 0px 0px 50px; font-size:18.3px; line-height:3.3; margin-top:0; font-family:'Merriweather Sans'">
             <p>BurgerLyfe was established in 2003 by four siblings with a vision to provide good burger and service for the people of malaysia, the inspiration came from expiriencing excelent burgers from In-n-Out(USA) and ShakeShake(USA). We believe on putting a great emphasis on our employees and customers, because satisfied individuals will produce better products and customer satisfaction. Customers are the best salesman. </p>
             </div>    
            </div>
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
    </form>
</body>
</html>

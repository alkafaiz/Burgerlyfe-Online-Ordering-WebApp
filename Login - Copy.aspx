<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login | Burgerlyfe Delivery</title>
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
    <form id="Login" runat="server">
        
    <div style="width:100%;height:auto;">
        <div id="top-bar" class="wrapper">     
            <ul id="top-bar-item">
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
                  <li><a class="active" href="Login.aspx">Log In</a></li>
                  <li><a href="FeedBack.aspx">Feedback</a></li>
                  <li><a href="About Us.aspx">About Us</a></li>
                  <li><a href="Our menus.aspx">Our Menus</a></li>
                  <li style="float:right"><a href="Home.aspx">Home</a></li>              
                </ul>
            </div>
        </div>
    
    <div id="Content" style="width:100%; padding-bottom:100px; background-color:#f7f7f7; height:auto; margin-top:0px">
        
        <div class="wrapper" style="width:55%; height:300px; padding-top:20px; margin-top:0px; border:1px solid #f2f2f2; background-color:white; ">
            <div id="inputbox" style="height:300px;">
                <div class="row">
                    <h2 style="margin:0px; padding:10px 0px 10px 40px">Log In</h2>
                </div>
                <div class="row">
                    <div class="field-label">
                        <h5 class="label-form">Email<span style="color:coral">*</span> </h5>
                    </div>
                    <div class="field-txt">
                        <asp:TextBox ID="txtEmail" CssClass="txt-style" runat="server" placeholder="e.g. faiz@mail.com" TextMode="Email"></asp:TextBox>
                    </div>
                </div>
                <div class="row" >
                    <div class="field-label">
                        <h5 class="label-form">Password<span style="color:coral">*</span></h5>
                    </div>
                    <div class="field-txt">
                        <asp:TextBox ID="txtPw" CssClass="txt-style" runat="server" placeholder="e.g. abcd123" TextMode="Password"></asp:TextBox>
                        
                    </div>
                </div>
                <div class="row" >                    
                    <div class="field-txt" style="float:right; display:block">
                        <asp:Label ID="errorMsg" CssClass="errorMsg" runat="server" Text="Your email or password is invalid" Visible="False"></asp:Label>
                        <asp:Button ID="btnLogin" CssClass="btnSubmit button " runat="server" Text="Log In" OnClick="btnLogin_Click" />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BurgerlyfeDBConnectionString %>" SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>
                    </div>
                </div>
                <div class="row" >                      
                    <div class="field-txt" style="float:right;">
                        <!-- <div id="errorMsg" style="width: 67%; height: auto; background-color:red; padding: 6px; font-size:12px; margin-top:15px; display:none" > Your email or password is invalid</div> 
                        <asp:Label ID="asas" CssClass="errorMsg" runat="server" Text="Your email or password is invalid" Visible="True"></asp:Label> -->
                    </div>
                </div>
                
                
            </div>         
            
           
                 
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

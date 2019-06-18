<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Regis-success.aspx.cs" Inherits="WebApplication1.Regis_success" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Success | Burgerlyfe Delivery</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet1.css"/>      
    <link rel="icon" href="favicon-burgerlyfe.png" type="image/x-icon" />
    <link href='https://fonts.googleapis.com/css?family=Cantarell' rel='stylesheet'/>
    <link href='https://fonts.googleapis.com/css?family=Leckerli One' rel='stylesheet'/>
    <link href='https://fonts.googleapis.com/css?family=Fjalla One' rel='stylesheet'/>
    <link href='https://fonts.googleapis.com/css?family=Hammersmith One' rel='stylesheet'/>
    <link href='https://fonts.googleapis.com/css?family=Merriweather Sans' rel='stylesheet'/>
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed" rel="stylesheet"/>
</head>

    <script>
function showError() {
    var x = document.getElementById("errorMsg");
    if (x.style.display === "none") {
        x.style.display = "block";
    } else {
        x.style.display = "none";
    }
}
</script>


<body>
    <form id="RegisSuccess" runat="server">
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
    
    <div id="Content" style="width:100%; background-color:#f7f7f7; height:auto; margin-top:0px">
        <h1 style="margin:0px 0px 30px 150px; font-size:30px;">YOUR ACCOUNT HAS BEEN CREATED!</h1>  
        <div class="wrapper" style="height:600px; padding-top:20px; margin-top:0px; border:1px solid #f2f2f2; background-color:white; ">
            <div id="inputbox">
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
                    <div class="field-txt" style="float:right">
                        <asp:Button ID="btnLogin" CssClass="btnSubmit button " runat="server" Text="Log In" OnClick="btnLogin_Click" />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BurgerlyfeDBConnectionString %>" SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>
                    </div>
                </div>
                <div class="row" >  
                    <div class="field-label">                  
                    <button onclick="showError()">Try it</button>
                        </div>
                    <div class="field-txt" style="float:right">
                        <div id="errorMsg" style="width: 67%; height: auto; background-color:red; padding: 6px; font-size:12px; margin-top:15px; display:none" > Your email or password is invalid</div> 
                        <asp:PlaceHolder ID="errorMsg2"  runat="server"></asp:PlaceHolder>
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

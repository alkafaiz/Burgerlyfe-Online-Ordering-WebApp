<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="WebApplication1.Resigstration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create new account | Burgerlyfe Delivery</title>
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
    <form id="RegisForm" runat="server">
    <div style="width:100%;height:auto;">
        <div id="top-bar" class="wrapper">     
            <ul id="top-bar-item">
                <li><a style="margin:0px; color:#858585" href="Registration.aspx"> Sign Up Here</a></li>
                <li><p style="margin:0px; text-decoration:none; color:#858585"> You're not registered?</p></li>                
                <li style="float:left"><div style="margin-right:10px; "><a href="#instagram.com"><img style="margin-top:2px; width:15px; height:auto" src="ig-top-icon.png" /></a></div></li>
                <li style="float:left"><div style="margin-right:5px;"><a href="#twitter.com"><img style="margin-top:2px; width:15px; height:auto" src="twitter-top-icon.png" /></a></div></li>
                <li style="float:left"><div><a href="#facebook.com"><img style="margin-top:2px; width:15px; height:auto" src="fb-top-icon.png" /></a></div></li>
            </ul>                                                                      
        </div>
    </div>

    <div id="header-menu" >
            <div class="wrapper">
                <div style="float:left;margin:10px 0px"><a href="Home.aspx"><img src="BURGERLYFE LOGO 90x90.png" /></a></div>
                <ul id="mainmenu">
                  <li><a href="Login.aspx">Log In</a></li>
                  <li><a href="FeedBack.aspx">Feedback</a></li>
                  <li><a href="AboutUs.aspx">About Us</a></li>
                  <li><a href="Ourmenus.aspx">Our Menus</a></li>
                  <li style="float:right"><a href="Home.aspx">Home</a></li>              
                </ul>
            </div>
        </div>
    <!-- content -->
    <div id="Content" style="width:100%; background-color:#f7f7f7; height:auto; margin-top:0px">
        <h1 style="margin:0px 0px 30px 150px; font-size:30px;">CREATE NEW ACCOUNT</h1>  
        <div class="wrapper" style="height:1000px; padding-top:20px; margin-top:0px; border:1px solid #f2f2f2; background-color:white; ">
            <div id="inputbox">
                <div class="row">
                    <h2 style="margin:0px; padding:10px 0px 10px 40px">ACCOUNT INFORMATION</h2>
                </div>
                <div class="row">
                    <div class="field-label">
                        <h5 class="label-form">Email<span style="color:coral">*</span> </h5>
                    </div>
                    <div class="field-txt">
                        <asp:TextBox ID="txtEmail" CssClass="txt-style" runat="server" placeholder="e.g. faiz@mail.com" TextMode="Email"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator CssClass="Error" runat="server"
                ControlToValidate="txtEmail"
                ErrorMessage="Enter Email."></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row" >
                    <div class="field-label">
                        <h5 class="label-form">Password<span style="color:coral">*</span></h5>
                    </div>
                    <div class="field-txt">
                        <asp:TextBox ID="txtPw" CssClass="txt-style" runat="server" placeholder="e.g. abcd123" TextMode="Password"></asp:TextBox>
                        <asp:RegularExpressionValidator  CssClass="Error" runat="server" ControlToValidate="txtPw"

                ErrorMessage="Minimum password length is 6" ValidationExpression="^([a-zA-Z0-9@#$%^&+=*]{6,50})$"

                ValidationGroup="RegisterCheck" />
                    </div>
                </div>
                <div class="row">
                    <div class="field-label">
                        <h5 class="label-form">Retype Password<span style="color:coral">*</span></h5>
                    </div>
                    <div class="field-txt">
                        <asp:TextBox ID="txtRetypePw" CssClass="txt-style" runat="server" placeholder="Same password as above" TextMode="Password"></asp:TextBox>
                        <asp:CompareValidator CssClass="Error" runat="server" ControlToCompare="txtRetypePw"

                ControlToValidate="txtPw" Type="String" Operator="Equal" ValidationGroup="RegisterCheck"

                ErrorMessage="Password should match"></asp:CompareValidator>
                        
                    </div>
                </div>
                <div class="row">
                    <h2 style="margin:0px; padding:10px 0px 10px 40px">PERSONAL INFORMATION</h2>
                </div>
                <div class="row">
                    <div class="field-label">
                        <h5 class="label-form">Name<span style="color:coral">*</span> </h5>
                    </div>
                    <div class="field-txt">
                        <asp:DropDownList ID="txtTitle" CssClass="txt-style txttitle"  runat="server">
                            <asp:ListItem Selected="True">Mr</asp:ListItem>
                            <asp:ListItem>Mrs</asp:ListItem>
                            <asp:ListItem>Ms</asp:ListItem>
                        </asp:DropDownList>
                        <asp:TextBox ID="txtName" CssClass="txt-style txtname" placeholder="e.g. Faiz" runat="server"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator  CssClass="ErrorName" runat="server"
                ControlToValidate="txtName"
                ErrorMessage="Enter Name."></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row" >
                    <div class="field-label">
                        <h5 class="label-form">Contact Number<span style="color:coral">*</span></h5>
                    </div>
                    <div class="field-txt">
                        <asp:TextBox ID="txtContact" CssClass="txt-style" placeholder="e.g. 03746182" runat="server" TextMode="Phone"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator CssClass="Error" runat="server"
                ControlToValidate="txtContact"
                ErrorMessage="Enter Contact Number."></asp:RequiredFieldValidator>
                    </div>
                </div>



                <div class="row">
                    <h2 style="margin:0px; padding:10px 0px 10px 40px">ADDRESS INFORMATION</h2>
                </div>  
                <div class="row" >
                    <div class="field-label">
                        <h5 class="label-form">Building Name</h5>
                    </div>
                    <div class="field-txt">
                        <asp:TextBox ID="txtBuilding" CssClass="txt-style" placeholder="e.g. Endah Regal Condominium" runat="server" TextMode="SingleLine"></asp:TextBox>
                    </div>
                </div> 
                <div class="row" >
                    <div class="field-label">
                        <h5 class="label-form">Block</h5>
                    </div>
                    <div class="field-txt">
                        <asp:TextBox ID="txtBlock" CssClass="txt-style" placeholder="e.g. C" runat="server" TextMode="SingleLine"></asp:TextBox>
                    </div>
                </div>     
                <div class="row" >
                    <div class="field-label">
                        <h5 class="label-form">Level</h5>
                    </div>
                    <div class="field-txt">
                        <asp:TextBox ID="txtLevel" CssClass="txt-style" placeholder="e.g. 16" runat="server" TextMode="SingleLine"></asp:TextBox>
                    </div>
                </div>   
                <div class="row" >
                    <div class="field-label">
                        <h5 class="label-form">Unit</h5>
                    </div>
                    <div class="field-txt">
                        <asp:TextBox ID="txtUnit" CssClass="txt-style" placeholder="e.g. 3" runat="server" TextMode="SingleLine"></asp:TextBox>
                    </div>
                </div>       
                <div class="row" style="height:110px;" >
                    <div class="field-label">
                        <h5 class="label-form">Address<span style="color:coral">*</span></h5>
                    </div>
                    <div class="field-txt">
                        <asp:TextBox ID="txtAddress" CssClass="txt-style txtaddr" placeholder="e.g. Jalan 3/149e" runat="server" TextMode="MultiLine"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator CssClass="Error" runat="server"
                ControlToValidate="txtAddress"
                ErrorMessage="Enter Address."></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row" >
                    <div class="field-label">
                        <h5 class="label-form">State<span style="color:coral">*</span></h5>
                    </div>
                    <div class="field-txt">
                        <asp:TextBox ID="txtState" CssClass="txt-style" placeholder="e.g. Kuala Lumpur" runat="server" TextMode="SingleLine"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator CssClass="Error" runat="server"
                ControlToValidate="txtState"
                ErrorMessage="Enter State."></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row" >
                    <div class="field-label">
                        <h5 class="label-form">City<span style="color:coral">*</span></h5>
                    </div>
                    <div class="field-txt">
                        <asp:TextBox ID="txtCity" CssClass="txt-style" placeholder="e.g. Kuala Lumpur" runat="server" TextMode="SingleLine"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator CssClass="Error" runat="server"
                ControlToValidate="txtCity"
                ErrorMessage="Enter City."></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row" >
                    <div class="field-label">
                        <h5 class="label-form">Post Code</h5>
                    </div>
                    <div class="field-txt">
                        <asp:TextBox ID="txtPostcode" CssClass="txt-style" placeholder="e.g. 57000" runat="server" TextMode="SingleLine"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator CssClass="Error" runat="server"
                ControlToValidate="txtPostcode"
                ErrorMessage="Enter Post Code."></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row" >                    
                    <div class="field-txt" style="float:right">
                        <asp:Button ID="btnSubmit" CssClass="btnSubmit button " runat="server" Text="Submit" UseSubmitBehavior="False" OnClick="btnSubmit_Click" />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BurgerlyfeDBConnectionString %>" SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>
                    </div>
                </div>
                
            </div>         
           
           
                 
        </div>
    </div>
    
        <!-- Modal saved -->
        <div id="myModal" class="modal">
            <div class="modal-content">
                <div id="ModalForm" >
                    <p style="text-align:center; font-size:20px;">Congratulations, your account has been created. Please Log in.</p>
                    <asp:Button ID="btnLogin" CssClass="center btnChgPW button block " runat="server" Text="Log in" UseSubmitBehavior="False" OnClick="btnLogin_Click" />
                </div>
            </div>
        </div>

        <!-- footer -->

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
            var modal = document.getElementById('myModal');
            function savedPopUp() {
                modal.style.display = "block";
            }
            window.onclick = function (event) {
                if (event.target == modal) {
                    window.location.href = "Login.aspx";
                    modal.style.display = "none";
                }
            }
        </script>

    </form>
</body>
</html>

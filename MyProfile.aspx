<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyProfile.aspx.cs" Inherits="WebApplication1.MyProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My Profile | Burgerlyfe Delivery</title>
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
    <form id="MyProfileForm" runat="server">
    <div id="header-menu" >
            <div class="wrapper">
                <div style="float:left;margin:10px 0px"><a href="Home.aspx"><img src="BURGERLYFE LOGO 90x90.png" /></a></div>
                <ul id="mainmenu">
                  <li><asp:LinkButton ID="Signin" CssClass="linkMM" runat="server" Visible="False">Sign In</asp:LinkButton></li>
                  <li><asp:LinkButton ID="myacc" CssClass="linkMM" runat="server" >My Account</asp:LinkButton>
                      <ul class="dropdown">
                          <li><asp:LinkButton ID="Myorder" runat="server">My Order</asp:LinkButton></li>
                          <li><asp:LinkButton ID="Editprofile" runat="server" >My Profile</asp:LinkButton></li>
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
                <asp:LinkButton ID="btnmyProfile" CssClass="profMenu proMenuactive" runat="server">MY PROFILE</asp:LinkButton>
                <asp:LinkButton ID="btnmyAdd" CssClass="profMenu" runat="server" OnClick="btnmyAdd_Click">MY ADDRESS</asp:LinkButton>
                <asp:LinkButton ID="btnmyFav" CssClass="profMenu" runat="server">MY FAVOURITE</asp:LinkButton>
                <asp:LinkButton ID="btnOrderHis" CssClass="profMenu" runat="server" OnClick="btnOrderHis_Click">ORDER HISTORY</asp:LinkButton>
                
            </div>
         
        <div class="wrapper" style="height:700px; padding-top:20px; margin-top:0px; border:1px solid #f2f2f2; background-color:white; ">
            <div id="inputbox">
                <div class="row profilerow">
                    <h2 style="margin:0px; padding:10px 0px 10px 0px">ACCOUNT INFORMATION</h2>
                </div>
                <!-- new input field -->
                <div class="row profilerow">
                    <div class="field-label field-com1">
                        <h5 class="label-form bold" style="text-align:left;">Email<span style="color:coral">*</span> </h5>
                    </div>
                    <div class="field-txt field-com2">
                        <asp:Label ID="lblEmail" runat="server" CssClass="txtAccInfo" Text=""></asp:Label>
                        <asp:TextBox ID="txtEmail" CssClass="txt-style txt-style-wid" runat="server" placeholder="e.g. faiz@mail.com" TextMode="Email" Visible="False"></asp:TextBox>
                        <asp:TextBox ID="TextBox2" CssClass="txt-style txt-style-wid" runat="server" placeholder="e.g. faiz@mail.com" TextMode="Email" Visible="False"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator CssClass="Error" runat="server"
                ControlToValidate="txtEmail"
                ErrorMessage="*"></asp:RequiredFieldValidator>
                    </div>
                    <div class="editform">
                        <asp:LinkButton ID="btnEditEmail" runat="server" OnClick="btnEditEmail_Click" UseSubmitBehavior="False">Edit</asp:LinkButton>
                        <asp:LinkButton ID="btnSaveEmail" runat="server" Visible="false" OnClick="btnSaveEmail_Click">Save</asp:LinkButton>
                    </div>
                </div>

                <!-- new input field -->
                <div class="row profilerow">
                    <div class="field-label field-com1">
                        <h5 class="label-form bold" style="text-align:left;">Password<span style="color:coral">*</span> </h5>
                    </div>
                    <div class="field-txt field-com2">
                        <asp:Label ID="lblPW" runat="server" CssClass="txtAccInfo" Text=""></asp:Label>
                        <asp:TextBox ID="TextBox1" CssClass="txt-style txt-style-wid" runat="server" placeholder="e.g. faiz@mail.com" TextMode="Email" Visible="False"></asp:TextBox>
                    </div>
                    <div class="editform">
                        <asp:LinkButton ID="btnEditPW" runat="server" OnClick="btnEditPW_Click">Edit</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton2" runat="server" Visible="false">Save</asp:LinkButton>
                    </div>
                </div>

                <!-- new input field -->
                <div class="row profilerow">
                    <div class="field-label field-com1">
                        <h5 class="label-form bold" style="text-align:left;">Title<span style="color:coral">*</span> </h5>
                    </div>
                    <div class="field-txt field-com2">
                        <asp:Label ID="lblTitle" runat="server" CssClass="txtAccInfo" Text=""></asp:Label>
                        <asp:DropDownList ID="txtTitle" CssClass="txt-style txt-style-wid" Visible="false" runat="server">
                            <asp:ListItem>Mr</asp:ListItem>
                            <asp:ListItem>Mrs</asp:ListItem>
                            <asp:ListItem>Ms</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="editform">
                        <asp:LinkButton ID="btnEditTitle" runat="server" OnClick="btnEditTitle_Click">Edit</asp:LinkButton>
                        <asp:LinkButton ID="btnSaveTitle" runat="server" Visible="false" OnClick="btnSaveTitle_Click">Save</asp:LinkButton>
                    </div>
                </div>

                <!-- new input field -->
                <div class="row profilerow">
                    <div class="field-label field-com1">
                        <h5 class="label-form bold" style="text-align:left;">First Name<span style="color:coral">*</span> </h5>
                    </div>
                    <div class="field-txt field-com2">
                        <asp:Label ID="lblFName" runat="server" CssClass="txtAccInfo" Text=""></asp:Label>
                        <asp:TextBox ID="txtFName" CssClass="txt-style txt-style-wid" runat="server" placeholder="e.g. faiz@mail.com" Visible="False"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator CssClass="Error" runat="server"
                ControlToValidate="txtFname"
                ErrorMessage="*"></asp:RequiredFieldValidator>
                    </div>
                    <div class="editform">
                        <asp:LinkButton ID="btnEditFName" runat="server" OnClick="btnEditFName_Click">Edit</asp:LinkButton>
                        <asp:LinkButton ID="btnSaveFName" runat="server" Visible="false" OnClick="btnSaveFName_Click">Save</asp:LinkButton>
                    </div>
                </div>

                <!-- new input field -->
                <div class="row profilerow">
                    <div class="field-label field-com1">
                        <h5 class="label-form bold" style="text-align:left;">Last Name </h5>
                    </div>
                    <div class="field-txt field-com2">
                        <asp:Label ID="lblLName" runat="server" CssClass="txtAccInfo" Text=""></asp:Label>
                        <asp:TextBox ID="txtLName" CssClass="txt-style txt-style-wid" runat="server" placeholder="e.g. faiz@mail.com"  Visible="False"></asp:TextBox>
                    </div>
                    <div class="editform">
                        <asp:LinkButton ID="btnEditLName" runat="server" OnClick="btnEditLName_Click">Edit</asp:LinkButton>
                        <asp:LinkButton ID="btnSaveLName" runat="server" Visible="false" OnClick="btnSaveLName_Click">Save</asp:LinkButton>
                    </div>
                </div>

                <!-- new input field -->
                <div class="row profilerow">
                    <div class="field-label field-com1">
                        <h5 class="label-form bold" style="text-align:left;">Date of Birth</h5>
                    </div>
                    <div class="field-txt field-com2">
                        <asp:Label ID="lblDoB" runat="server" CssClass="txtAccInfo" Text=""></asp:Label>
                        <asp:TextBox ID="txtDoB" CssClass="txt-style txt-style-wid" runat="server" placeholder="e.g. faiz@mail.com" Visible="False" TextMode="Date"></asp:TextBox>
                    </div>
                    <div class="editform">
                        <asp:LinkButton ID="btnEditDoB" runat="server" OnClick="btnEditDoB_Click">Edit</asp:LinkButton>
                        <asp:LinkButton ID="btnSaveDoB" runat="server" Visible="false" OnClick="btnSaveDoB_Click">Save</asp:LinkButton>
                    </div>
                </div>

                <!-- new input field -->
                <div class="row profilerow">
                    <div class="field-label field-com1">
                        <h5 class="label-form bold" style="text-align:left;">Phone No<span style="color:coral">*</span> </h5>
                    </div>
                    <div class="field-txt field-com2">
                        <asp:Label ID="lblPhNo" runat="server" CssClass="txtAccInfo" Text=""></asp:Label>
                        <asp:TextBox ID="txtPhNo" CssClass="txt-style txt-style-wid" runat="server" placeholder="e.g. faiz@mail.com" Visible="False" TextMode="Phone"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator CssClass="Error" runat="server"
                ControlToValidate="txtPhNo"
                ErrorMessage="*"></asp:RequiredFieldValidator>
                    </div>
                    <div class="editform">
                        <asp:LinkButton ID="btnEditPhNo" runat="server" OnClick="btnEditPhNo_Click">Edit</asp:LinkButton>
                        <asp:LinkButton ID="btnSavePhNo" runat="server" Visible="false" OnClick="btnSavePhNo_Click">Save</asp:LinkButton>
                    </div>
                </div>

                <!-- new input field -->
                <div class="row profilerow">
                    <div class="field-label field-com1">
                        <h5 class="label-form bold" style="text-align:left;">Secondary Phone No</h5>
                    </div>
                    <div class="field-txt field-com2">
                        <asp:Label ID="lblSecPhNo" runat="server" CssClass="txtAccInfo" Text=""></asp:Label>
                        <asp:TextBox ID="txtSecPhNo" CssClass="txt-style txt-style-wid" runat="server" placeholder="e.g. faiz@mail.com" Visible="False"></asp:TextBox>
                    </div>
                    <div class="editform">
                        <asp:LinkButton ID="btnEditSecPhNo" runat="server" OnClick="btnEditSecPhNo_Click">Edit</asp:LinkButton>
                        <asp:LinkButton ID="btnSaveSecPhNo" runat="server" Visible="false" OnClick="btnSaveSecPhNo_Click">Save</asp:LinkButton>
                    </div>
                </div>
                
                
            </div>         
            <!--side box-->
            <div style="width:36%;height:auto; margin-left:30px; display:block; float:left">
                <div style="width:100%;height:50px;">
                    <h2 style="margin:0px; padding:10px 0px 10px 0px">eVoucher</h2>
                </div>
                <div style="width:100%;height:400px; background-color:#e2e2e2; ">
                    <h3 style="font-size:23px; margin-top:0px; font-weight:600;text-align:center;padding-top:150px">You dont have an eVoucer</h3>
                    <h6 style="font-size:20px; font-weight:100;text-align:center;margin-top:0px;padding:0px 20px 0px 20px;">Probably it has expired or no longer available.</h6>
                </div>
            </div>
           
                 
        </div>
    </div>

        <!-- save notice pop up -->
        <div id="popUP" class="savedPopUp">
            <h5 style="color:white; margin:15px auto 15px auto; font-size:15px;font-family: 'Roboto Condensed', sans-serif; display:block; text-align:center;">Change has been saved!</h5>
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

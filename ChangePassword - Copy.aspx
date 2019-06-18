<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="WebApplication1.ChangePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Change Password | Burgerlyfe Delivery</title>
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
    <form id="form1" runat="server">
    <div id="header-menu" >
            <div class="wrapper">
                <div style="float:left;margin:10px 0px"><a href="Home.aspx"><img src="BURGERLYFE LOGO 90x90.png" /></a></div>
                <ul id="mainmenu">
                  <li><asp:LinkButton ID="Signin" CssClass="linkMM" runat="server" Visible="False">Sign In</asp:LinkButton></li>
                  <li><asp:LinkButton ID="myacc" CssClass="linkMM" runat="server" >My Account</asp:LinkButton>
                      <ul class="dropdown">
                          <li><asp:LinkButton ID="Myorder" runat="server">My Order</asp:LinkButton></li>
                          <li><asp:LinkButton ID="Editprofile" runat="server" OnClick="Editprofile_Click">Edit Profile</asp:LinkButton></li>
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
        <div id="Content" style="width:100%; background-color:#f7f7f7; height:auto; padding-bottom:60px; margin-top:0px">
        
        <div class="wrapper" style="height:300px; width:56%; padding-top:20px; margin-top:0px; border:1px solid #f2f2f2; background-color:white; ">
            <div id="inputbox">
                <div class="row">
                    <h2 style="margin:0px; padding:10px 0px 10px 40px">CHANGE PASSWORD</h2>
                </div>
                <div id="CurrentPW" class="row">
                    <div class="field-label">
                        <asp:Label ID="lblCrPW" CssClass="label-form lblASP" runat="server" Text="Current Password"></asp:Label>
                    </div>
                    <div class="field-txt">
                        <asp:TextBox ID="txtcurrentPW" CssClass="txt-style" runat="server" placeholder="type your current password.." TextMode="Password"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator CssClass="Error" runat="server"
                ControlToValidate="txtcurrentPW"
                ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div id="NewPW" class="row hiden">
                    <div class="field-label">
                        <asp:Label ID="lblNewPW" CssClass="label-form lblASP" runat="server" Text="New Password" ></asp:Label>                                            
                    </div>
                    <div class="field-txt">
                        <asp:TextBox ID="txtNewPW" CssClass="txt-style" runat="server" placeholder="e.g. abcd123" TextMode="Password" ></asp:TextBox>
                        <asp:RegularExpressionValidator  CssClass="Error" runat="server" ControlToValidate="txtNewPw"

                ErrorMessage="Minimum password length is 6" ValidationExpression="^([a-zA-Z0-9@#$%^&+=*]{6,50})$"

                ValidationGroup="RegisterCheck" />
                    </div>
                </div>
                <div id="ReNewPW" class="row hiden">
                    <div class="field-label">
                        <asp:Label ID="Label1" CssClass="label-form lblASP" runat="server" Text="Retype Password" ></asp:Label>                                            
                    </div>
                    <div class="field-txt">
                        <asp:TextBox ID="txtreNewPW" CssClass="txt-style" runat="server" placeholder="e.g. abcd123" TextMode="Password"></asp:TextBox>
                        <asp:CompareValidator CssClass="Error" runat="server" ControlToCompare="txtreNewPw"

                ControlToValidate="txtNewPw" Type="String" Operator="Equal" ValidationGroup="RegisterCheck"

                ErrorMessage="Password should match"></asp:CompareValidator>
                    </div>
                </div>
                <div class="row">
                    <div class="field-txt" style="float:right">
                        <asp:Button ID="btnNextChPW" CssClass="btnChgPW button " runat="server" Text="Next" UseSubmitBehavior="False" OnClick="btnNextChPW_Click"    />
                        <asp:Label ID="error" CssClass="errorMsg" runat="server" Text="Password is incorrect" Visible="False"></asp:Label>                                            
                        <asp:Button ID="btnConfirm" CssClass="btnChgPW button hiden " runat="server" Text="Confirm" UseSubmitBehavior="False" OnClick="btnConfirm_Click"   />
                        <asp:Label ID="error2" CssClass="errorMsg" runat="server" Text="Password does not match" Visible="False"></asp:Label>  
                    </div>
                </div>               
                                               
            </div>         
           
           
                 
        </div>
    </div>

        <!-- Modal saved -->
        <div id="myModal" class="modal">
            <div class="modal-content">
                <div id="ModalForm" >
                    <p style="text-align:center; font-size:20px;">Your password has been changed</p>
                    <asp:Button ID="btnSaved" CssClass="center btnChgPW button  " runat="server" Text="Back" UseSubmitBehavior="False" OnClick="btnSaved_Click"   />
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


// Get the button that opens the modal
var modal = document.getElementById('myModal');
var btnNext = document.getElementById("btnNextChPW");
var formNPW = document.getElementById("NewPW");
var btnConfirm = document.getElementById("btnConfirm");
var formCPW = document.getElementById("CurrentPW");
var formRNPW = document.getElementById("ReNewPW");
var btnSaved = document.getElementById('btnSaved');
function showNPWform() {
    formNPW.style.display = "block";
    btnNext.style.display = "none";
    btnConfirm.style.display = "block";
    formCPW.style.display = "none";
    formRNPW.style.display = "block";        
}

function savedPopUp() {
    modal.style.display = "block";
}

window.onclick = function (event) {
    if (event.target == modal) {
        window.location.href = "MyProfile.aspx";
        modal.style.display = "none";
    }
}

</script>

    </form>
</body>
</html>

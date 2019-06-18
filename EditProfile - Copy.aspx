<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditProfile.aspx.cs" Inherits="WebApplication1.EditProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Edit account | Burgerlyfe Delivery</title>
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
                  <li><a href="About Us.aspx">About Us</a></li>
                  <li><a href="Our menus.aspx">Our Menus</a></li>
                  <li style="float:right"><a href="Home.aspx">Home</a></li>              
                </ul>
            </div>
        </div>

        <!-- Start content -->
        <div id="Content" style="width:100%; background-color:#f7f7f7; height:auto; margin-top:0px">
        <h1 style="margin:0px 0px 30px 150px; font-size:30px;">EDIT ACCOUNT</h1>  
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
                    </div>
                </div>
                <div class="row" >
                    
                    <div class="field-txt" style="float:right">
                        <!--<button id="myBtn" class="button btnChgPW">Change Password</button>  -->
                         <asp:Button ID="myBtn" CssClass="btnChgPW button " runat="server" Text="Change Password" UseSubmitBehavior="False" OnClick="myBtn_Click"  />
                        <!-- The Modal -->
                        <div id="myModal" class="modal">

                          <!-- Modal content -->
                          <div class="modal-content">
                            <span class="close">&times;</span>
                              <div id="changePWform">
                                  <div class="row">
                                    <h2 style="margin:0px; padding:10px 0px 10px 40px">CHANGE PASSWORD</h2>
                                </div>
                                <div id="CurrentPW" class="row">
                                        <div class="field-label">
                                            <asp:Label ID="lblCrPW" CssClass="label-form lblASP" runat="server" Text="Current Password"></asp:Label>
                                            <!-- <h5 class="label-form">Current Password<span style="color:coral">*</span> </h5> -->
                                        </div>
                                        <div class="field-txt">
                                            <asp:TextBox ID="txtcurrentPW" CssClass="txt-style" runat="server" placeholder="type your current password.." TextMode="Password"></asp:TextBox>
                                        </div>
                                    </div>
                                  <div id="NewPW" class="row hiden">
                                        <div class="field-label">
                                            <asp:Label ID="lblNewPW" CssClass="label-form lblASP" runat="server" Text="New Password" Visible="False"></asp:Label>                                            
                                        </div>
                                        <div class="field-txt">
                                            <asp:TextBox ID="txtNewPW" CssClass="txt-style" runat="server" placeholder="e.g. abcd123" TextMode="Password" Visible="False"></asp:TextBox>
                                        </div>
                                    </div>
                                  <div id="ReNewPW" class="row hiden">
                                        <div class="field-label">
                                            <asp:Label ID="lblrePW" CssClass="label-form lblASP" runat="server" Text="Retype Password" Visible="False"></asp:Label>                                            
                                        </div>
                                        <div class="field-txt">
                                            <asp:TextBox ID="txtRePW" CssClass="txt-style" runat="server" placeholder="e.g. abcd123" TextMode="Password" Visible="False"></asp:TextBox>
                                        </div>
                                    </div>
                                  <div class="row">
                                      <div class="field-txt" style="float:right">
                                          <asp:Button ID="btnNextChPW" CssClass="btnChgPW button " runat="server" Text="Next" UseSubmitBehavior="False"  OnClick="btnNextChPW_Click"  />
                                          <asp:Button ID="btnConfirm" CssClass="btnChgPW button hiden " runat="server" Text="Confirm" UseSubmitBehavior="False"   />
                                      </div>
                                  </div>
                                </div>
                          </div>

                        </div>
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
                    </div>
                </div>
                <div class="row" >
                    <div class="field-label">
                        <h5 class="label-form">Contact Number<span style="color:coral">*</span></h5>
                    </div>
                    <div class="field-txt">
                        <asp:TextBox ID="txtContact" CssClass="txt-style" placeholder="e.g. 03746182" runat="server" TextMode="Phone"></asp:TextBox>
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
                    </div>
                </div>
                <div class="row" >
                    <div class="field-label">
                        <h5 class="label-form">State<span style="color:coral">*</span></h5>
                    </div>
                    <div class="field-txt">
                        <asp:TextBox ID="txtState" CssClass="txt-style" placeholder="e.g. Kuala Lumpur" runat="server" TextMode="SingleLine"></asp:TextBox>
                    </div>
                </div>
                <div class="row" >
                    <div class="field-label">
                        <h5 class="label-form">City<span style="color:coral">*</span></h5>
                    </div>
                    <div class="field-txt">
                        <asp:TextBox ID="txtCity" CssClass="txt-style" placeholder="e.g. Kuala Lumpur" runat="server" TextMode="SingleLine"></asp:TextBox>
                    </div>
                </div>
                <div class="row" >
                    <div class="field-label">
                        <h5 class="label-form">Post Code</h5>
                    </div>
                    <div class="field-txt">
                        <asp:TextBox ID="txtPostcode" CssClass="txt-style" placeholder="e.g. 57000" runat="server" TextMode="SingleLine"></asp:TextBox>
                    </div>
                </div>
                <div class="row" >                    
                    <div class="field-txt" style="float:right">
                        <asp:Button ID="btnSaveChanges" CssClass="btnSubmit button " runat="server" Text="Save Changes" OnClick="btnSaveChanges_Click" />
                        <asp:Label ID="lblSaved" runat="server" Text="Changes has saved!" Visible="false"></asp:Label>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BurgerlyfeDBConnectionString %>" SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>
                    </div>
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

    </form>

    <!-- Pop Up JS -->
    <script>
// Get the modal
var modal = document.getElementById('myModal');

// Get the button that opens the modal
var btn = document.getElementById("myBtn");
var btnNext = document.getElementById("btnNextChPW");
var formNPW = document.getElementById("NewPW");
var btnConfirm = document.getElementById("btnConfirm");
var formCPW = document.getElementById("CurrentPW");
var formRNPW = document.getElementById("ReNewPW");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

function showNPWform() {
    formNPW.style.display = "block";
    btnNext.style.display = "none";
    btnConfirm.style.display = "block";
    formCPW.style.display = "none";
    formRNPW.style.display = "block";
    modal.style.position = "fixed";
    btn.style.backgroundColor = "#f2f2f2";
}
/*
btnNext.onclick = function () {
    formNPW.style.display = "block";
    btnNext.style.display = "none";
    btnConfirm.style.display = "block";
    formCPW.style.display = "none";
    formRNPW.style.display = "block";
}

// When the user clicks the button, open the modal 
btn.onclick = function() {
    modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    modal.style.display = "none";
}*/

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>

</body>
</html>

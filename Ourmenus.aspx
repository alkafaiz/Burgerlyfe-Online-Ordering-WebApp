<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ourmenus.aspx.cs" Inherits="WebApplication1.Ourmenus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Menus | Burgerlyfe Delivery</title>
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
    <form id="MenuForm" runat="server">
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
                      <li><asp:LinkButton ID="Signin" CssClass="linkMM" runat="server" Visible="true" OnClick="Signin_Click">Sign In</asp:LinkButton></li>
                      <li><asp:LinkButton ID="myacc" CssClass="linkMM" runat="server" Visible="False" >My Account</asp:LinkButton>
                          <ul class="dropdown">
                              <li><asp:LinkButton ID="Myorder" runat="server" OnClick="Myorder_Click">My Order</asp:LinkButton></li>
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
        <div id="Content" style="width:100%; padding-bottom:30px; overflow:-webkit-paged-x; background-color:#80CED7; height:auto; margin-top:0px">
         
        <div class="wrapper" style="min-height:400px; height:auto; padding-bottom:50px; padding-top:0px; margin-top:0px;  ">
            <h1 style="margin:0px; width:100%; text-align:center; height:auto; padding-bottom:20px; font-size:40px; font-family: 'Fjalla One'; color:#0f2633">~ BURGERLYFE MENU ~</h1>
            <div id="MenuClass">
                <div style="width:100%;display:block">
                    <h5 style="padding:10px;margin:0px;">Showing meal for</h5>
                </div>
                <div style="width:100%;display:block; border-bottom:solid 1px #d6d6d6">
                    <button type="button" class="btnMenuFilter activeMenu" onclick="filterSelection('all')">All</button>                    
                </div>
                <div style="width:100%;display:block; border-bottom:solid 1px #d6d6d6">
                    <button type="button" class="btnMenuFilter" onclick="filterSelection('Burger')">Burger</button>              
                </div>
                <div style="width:100%;display:block; border-bottom:solid 1px #d6d6d6">
                    <button type="button" class="btnMenuFilter" onclick="filterSelection('Pasta')">Pasta</button>                                        
                </div>
                <div style="width:100%;display:block; border-bottom:solid 1px #d6d6d6">
                    <button type="button" class="btnMenuFilter" onclick="filterSelection('IC')">IceCream</button>                                        
                </div>
            </div>                                       
            <div style="width:84%; height:300px; float:left; display:inline-block; float:left; margin-left:1%; border-radius:5px; ">
                <!-- Menu Burger -->
                <div id="MenuBurger">
                    <div style="width:100%; height:49px; background-color:#FDFFFC;margin-bottom:12px;">
                        <div style="float:left; width:auto;height:inherit;padding-right:50px; background-color:#C1292E">
                            <h6 style="font-size:24px;padding:10px; color:#FDFFFC;margin:0px">BURGER</h6>
                        </div>                    
                    </div>
                    <div class="MenuBox">  
                        <div class="modal-order">
                            <!--<button class="btnChgPW button center height1 transi2" onclick="redirect();">Order This</button>-->
                            <asp:Button ID="btn101" CssClass="btnChgPW button center height1" BackColor="#4bc11d" runat="server" Text="Order This" CommandArgument="101" OnCommand="btn101_Command" /> 
                        </div>
                        <div class="menupic" >
                            <div style="width:100%; height:230px"><img style="width:100%; height:auto" src="Burger-MegaSpecial.jpg" /></div>
                            <h3 class="label-menu">MEGA SPECIAL BURGER</h3>  
                            <h3 class="label-desc">½ size, full dressing, beef, cheese & sauces</h3>                          
                            <h5 class="widthmax label-price" >RM 16.5</h5>                            
                        </div>                                              
                    </div>
                    <div class="MenuBox MenuBoxCenter">
                        <div class="modal-order">
                            <asp:Button ID="Button1" CssClass="btnChgPW button center height1" BackColor="#4bc11d" runat="server" Text="Order This" CommandArgument="102" OnCommand="Button1_Command" />
                        </div>
                        <div class="menupic">
                            <div style="width:100%; height:230px"><img style="width:100%; height:auto" src="Burger-Special.jpg" /></div>
                            <h3 class="label-menu">SPECIAL BURGER</h3>    
                            <h3 class="label-desc">¼ size, full dressing, beef, cheese & sauces</h3>                          
                            <h5 class="widthmax label-price" >RM 14.5</h5> 
                        </div> 
                    </div>
                    <div class="MenuBox ">
                        <div class="modal-order">
                            <asp:Button ID="Button2" CssClass="btnChgPW button center height1" BackColor="#4bc11d" runat="server" Text="Order This" CommandArgument="103" OnCommand="Button2_Command" />
                        </div>
                        <div class="menupic">
                            <div style="width:100%; height:230px;"><img style="width:100%; height:auto" src="Burger-ChickenChesse.jpg" /></div>
                            <h3 class="label-menu">CHICKEN CHEESE BURGER</h3>                            
                            <h3 class="label-desc">Full dressing, chicken, cheese & sauce</h3>  
                            <h5 class="widthmax label-price" >RM 12.5</h5> 
                        </div>
                    </div>
                    <div class="MenuBox">
                        <div class="modal-order">
                            <asp:Button ID="Button3" CssClass="btnChgPW button center height1" BackColor="#4bc11d" runat="server" Text="Order This" CommandArgument="104" OnCommand="Button3_Command" />
                        </div>
                        <div class="menupic">
                            <div style="width:100%; height:230px; "><img style="width:100%; height:auto" src="Burger-ChickenFillet.jpg" /></div>
                            <h3 class="label-menu">CHICKEN FILLET BURGER</h3>                         
                            <h3 class="label-desc">Full dressing, chicken fillet, cheese & sauce</h3>     
                            <h5 class="widthmax label-price" >RM 15</h5> 
                        </div>
                    </div>
                    <div class="MenuBox MenuBoxCenter">
                        <div class="modal-order">
                            <asp:Button ID="Button4" CssClass="btnChgPW button center height1" BackColor="#4bc11d" runat="server" Text="Order This" CommandArgument="105" OnCommand="Button4_Command" />
                        </div>
                        <div class="menupic">
                            <div style="width:100%; height:230px; "><img style="width:100%; height:auto" src="Burger-Beef.jpg" /></div>
                            <h3 class="label-menu">BEEF BURGER</h3>                            
                            <h3 class="label-desc">Full dressing, beef & sauce</h3>  
                            <h5 class="widthmax label-price" >RM 11.5</h5> 
                        </div>
                    </div>
                    <div class="MenuBox">
                        <div class="modal-order">
                            <asp:Button ID="Button5" CssClass="btnChgPW button center height1" BackColor="#4bc11d" runat="server" Text="Order This" CommandArgument="106" OnCommand="Button5_Command" />
                        </div>
                        <div class="menupic">
                            <div style="width:100%; height:230px; "><img style="width:100%; height:auto" src="Burger-Chicken.jpg" /></div>
                            <h3 class="label-menu">CHICKEN BURGER</h3>                            
                            <h3 class="label-desc">Full dressing, chicken & sauce</h3>  
                            <h5 class="widthmax label-price" >RM 10.5</h5> 
                        </div>
                    </div>
                    <div class="MenuBox">
                        <div class="modal-order">
                            <asp:Button ID="Button6" CssClass="btnChgPW button center height1" BackColor="#4bc11d" runat="server" Text="Order This" CommandArgument="107" OnCommand="Button6_Command" />
                        </div>
                        <div class="menupic">
                            <div style="width:100%; height:230px; "><img style="width:100%; height:auto" src="Burger-Salad.jpg" /></div>
                            <h3 class="label-menu">SALAD BURGER</h3>                            
                            <h3 class="label-desc">Full dressing with cheese</h3>  
                            <h5 class="widthmax label-price" >RM 8</h5> 
                        </div>
                    </div>
                    <div class="MenuBox MenuBoxCenter">
                        <div class="modal-order">
                            <asp:Button ID="Button7" CssClass="btnChgPW button center height1" BackColor="#4bc11d" runat="server" Text="Order This" CommandArgument="108" OnCommand="Button7_Command" />
                        </div>
                        <div class="menupic">
                            <div style="width:100%; height:230px; "><img style="width:100%; height:auto" src="Burger-DoubleCheese.jpg" /></div>
                            <h3 class="label-menu">DOUBLE CHEESE BURGER</h3>                          
                            <h3 class="label-desc">Full dressing, beef/chicken, cheese & sauce</h3>    
                            <h5 class="widthmax label-price" >RM 13.5</h5> 
                        </div>
                    </div>
                    <div class="MenuBox">
                        <div class="modal-order">
                            <asp:Button ID="Button8" CssClass="btnChgPW button center height1" BackColor="#4bc11d" runat="server" Text="Order This" CommandArgument="109" OnCommand="Button8_Command" />
                        </div>
                        <div class="menupic">
                            <div style="width:100%; height:230px; "><img style="width:100%; height:auto" src="Burger-Cheese.jpg" /></div>
                            <h3 class="label-menu">CHEESE BURGER</h3>                            
                            <h3 class="label-desc">Full dressing, beef/chicken, cheese & sauce</h3>  
                            <h5 class="widthmax label-price" >RM 11.5</h5> 
                        </div>
                    </div>
                    <div class="MenuBox">
                        <div class="modal-order">
                            <asp:Button ID="Button9" CssClass="btnChgPW button center height1" BackColor="#4bc11d" runat="server" Text="Order This" CommandArgument="110" OnCommand="Button9_Command" />
                        </div>
                        <div class="menupic">
                            <div style="width:100%; height:230px; "><img style="width:100%; height:auto" src="Burger-Spicy.jpg" /></div>
                            <h3 class="label-menu">SPICY FLAVOURED BURGER</h3>                        
                            <h3 class="label-desc" style="line-height:15px">Full dressing, beef/chicken, chilli, cheese & sauce</h3>      
                            <h5 class="widthmax label-price" >RM 12</h5> 
                        </div>
                    </div>          
                    <div class="MenuBox MenuBoxCenter">
                        <div class="modal-order">
                            <asp:Button ID="Button21" CssClass="btnChgPW button center height1" BackColor="#4bc11d" runat="server" Text="Order This" CommandArgument="122" OnCommand="Button21_Command" />
                        </div>
                        <div class="menupic">
                            <div style="width:100%; height:230px; "><img style="width:100%; height:auto" src="Burger-AllAmerican.jpg" /></div>
                            <h3 class="label-menu">ALL AMERICAN BURGER</h3>                        
                            <h3 class="label-desc" style="line-height:15px">Full dressing, wagyu beef, chilli, cheese & sauce</h3>      
                            <h5 class="widthmax label-price" >RM 15</h5> 
                        </div>
                    </div>  
                    <div class="MenuBox">
                        <div class="modal-order">
                            <asp:Button ID="Button22" CssClass="btnChgPW button center height1" BackColor="#4bc11d" runat="server" Text="Order This" CommandArgument="123" OnCommand="Button22_Command" />
                        </div>
                        <div class="menupic">
                            <div style="width:100%; height:230px; "><img style="width:100%; height:auto" src="Burger-BaconTruffle.jpg" /></div>
                            <h3 class="label-menu">BACON TRUFFLE BURGER</h3>                        
                            <h3 class="label-desc" >Full dressing, bacon, truffle, cheese & sauce</h3>      
                            <h5 class="widthmax label-price" >RM 13.5</h5> 
                        </div>
                    </div>        
                </div>

                <!-- Menu Pasta -->
                <div id="MenuPasta">
                    <div style="width:100%; height:49px; background-color:#FDFFFC;display:inline-block; margin-bottom:12px;">
                        <div style="float:left; width:auto;height:inherit;padding-right:50px; background-color:#C1292E">
                            <h6 style="font-size:24px;padding:10px; color:#FDFFFC;margin:0px">PASTA</h6>
                        </div>                    
                    </div>
                    <div class="MenuBox">
                        <div class="modal-order">
                            <asp:Button ID="Button10" CssClass="btnChgPW button center height1" BackColor="#4bc11d" runat="server" Text="Order This" CommandArgument="111" OnCommand="Button10_Command" />
                        </div>
                        <div class="menupic">
                            <div style="width:100%; height:230px; "><img style="width:100%; height:auto" src="Pasta-SpaghettiMeatSauce.jpeg" /></div>
                            <h3 class="label-menu">SPAGEHETTI & MEAT SAUCE</h3>                       
                            <h3 class="label-desc">Pasta with bolognese</h3>       
                            <h5 class="widthmax label-price" >RM 15</h5> 
                        </div>
                    </div>
                    <div class="MenuBox MenuBoxCenter">
                        <div class="modal-order">
                            <asp:Button ID="Button11" CssClass="btnChgPW button center height1" BackColor="#4bc11d" runat="server" Text="Order This" CommandArgument="112" OnCommand="Button11_Command" />
                        </div>
                        <div class="menupic">
                            <div style="width:100%; height:230px; "><img style="width:100%; height:auto" src="Pasta-SpaghettiMeatball.jpg" /></div>
                            <h3 class="label-menu">SPAGEHETTI & MEATBALLS</h3>                        
                            <h3 class="label-desc">Pasta with meatballs </h3>      
                            <h5 class="widthmax label-price" >RM 17</h5> 
                        </div>
                    </div>
                    <div class="MenuBox ">
                        <div class="modal-order">
                            <asp:Button ID="Button12" CssClass="btnChgPW button center height1" BackColor="#4bc11d" runat="server" Text="Order This" CommandArgument="121" OnCommand="Button12_Command" />
                        </div>
                        <div class="menupic">
                            <div style="width:100%; height:230px; "><img style="width:100%; height:auto" src="Pasta-spaghettimarinara.jpg" /></div>
                            <h3 class="label-menu">SPAGEHETTI MARINARA</h3>                           
                            <h3 class="label-desc">Pasta with marinara sauce</h3>   
                            <h5 class="widthmax label-price" >RM 15</h5> 
                        </div>
                    </div>
                    <div class="MenuBox">
                        <div class="modal-order">
                            <asp:Button ID="Button13" CssClass="btnChgPW button center height1" BackColor="#4bc11d" runat="server" Text="Order This" CommandArgument="113" OnCommand="Button13_Command" />
                        </div>
                        <div class="menupic">
                            <div style="width:100%; height:230px; "><img style="width:100%; height:auto" src="Pasta-lasagne.jpg" /></div>
                            <h3 class="label-menu">LASAGNA</h3>                            
                            <h3 class="label-desc">Traditional style, with pine nuts</h3>  
                            <h5 class="widthmax label-price" >RM 17.75</h5> 
                        </div>
                    </div>
                    <div class="MenuBox MenuBoxCenter">
                        <div class="modal-order">
                            <asp:Button ID="Button14" CssClass="btnChgPW button center height1" BackColor="#4bc11d" runat="server" Text="Order This" CommandArgument="114" OnCommand="Button14_Command" />
                        </div>
                        <div class="menupic">
                            <div style="width:100%; height:230px; "><img style="width:100%; height:auto" src="Pasta-FettuccineCarbonara.jpg" /></div>
                            <h3 class="label-menu">FETTUCINE CARBONARA</h3>                           
                            <h3 class="label-desc">With grilled chicken</h3>   
                            <h5 class="widthmax label-price" >RM 13</h5> 
                        </div>
                    </div>
                </div>
                
                <!-- Menu Ice Cream -->
                <div id="MenuIC">
                    <div style="width:100%; height:49px; background-color:#FDFFFC;display:inline-block; margin-bottom:12px;">
                        <div style="float:left; width:auto;height:inherit;padding-right:50px; background-color:#C1292E">
                            <h6 style="font-size:24px;padding:10px; color:#FDFFFC;margin:0px">ICE CREAM</h6>
                        </div>                    
                    </div>
                    <div class="MenuBox">
                        <div class="modal-order">
                            <asp:Button ID="Button15" CssClass="btnChgPW button center height1" BackColor="#4bc11d" runat="server" Text="Order This" CommandArgument="115" OnCommand="Button15_Command" />
                        </div>
                        <div class="menupic">
                            <div style="width:100%; height:230px; "><img style="width:100%; height:auto" src="IC-HotChoco.jpg" /></div>
                            <h3 class="label-menu">HOT CHOCOLATE FUDGE</h3>                           
                            <h3 class="label-desc" style="line-height:15px">Vanilla ice cream, hot chocolate sauce, roasted nuts</h3>   
                            <h5 class="widthmax label-price" >RM 6</h5> 
                        </div>
                    </div>
                    <div class="MenuBox MenuBoxCenter">
                        <div class="modal-order">
                            <asp:Button ID="Button16" CssClass="btnChgPW button center height1" BackColor="#4bc11d" runat="server" Text="Order This" CommandArgument="116" OnCommand="Button16_Command" />
                        </div>
                        <div class="menupic">
                            <div style="width:100%; height:230px; "><img style="width:100%; height:auto" src="IC-Fudge.jpg" /></div>
                            <h3 class="label-menu">CHOCOLATE FUDGE</h3>                            
                            <h3 class="label-desc" style="line-height:15px">Chocolate ice cream, hot chocolate, roasted nuts</h3>  
                            <h5 class="widthmax label-price" >RM 6</h5> 
                        </div>
                    </div>
                    <div class="MenuBox ">
                        <div class="modal-order">
                            <asp:Button ID="Button17" CssClass="btnChgPW button center height1" BackColor="#4bc11d" runat="server" Text="Order This"  CommandArgument="117" OnCommand="Button17_Command" />
                        </div>
                        <div class="menupic">
                            <div style="width:100%; height:230px; "><img style="width:100%; height:auto" src="IC-BananaSundae.jpeg" /></div>
                            <h3 class="label-menu">BANANA SUNDAE</h3>                            
                            <h3 class="label-desc">Banana gulkand, vanilla ice cream, cream</h3>  
                            <h5 class="widthmax label-price" >RM 6</h5> 
                        </div>
                    </div>
                    <div class="MenuBox">
                        <div class="modal-order">
                            <asp:Button ID="Button18" CssClass="btnChgPW button center height1" BackColor="#4bc11d" runat="server" Text="Order This" CommandArgument="118" OnCommand="Button18_Command" />
                        </div>
                        <div class="menupic">
                            <div style="width:100%; height:230px; "><img style="width:100%; height:auto" src="IC-CaramelCashew.jpg" /></div>
                            <h3 class="label-menu">CARAMEL CASHEW SUNDAE</h3>                         
                            <h3 class="label-desc" style="line-height:15px">Vanilla ice cream, cream, caramel sauce, roasted cashew</h3>     
                            <h5 class="widthmax label-price" >RM 6</h5> 
                        </div>
                    </div>
                    <div class="MenuBox MenuBoxCenter">
                        <div class="modal-order">
                            <asp:Button ID="Button19" CssClass="btnChgPW button center height1" BackColor="#4bc11d" runat="server" Text="Order This" CommandArgument="119" OnCommand="Button19_Command" />
                        </div>
                        <div class="menupic">
                            <div style="width:100%; height:230px; "><img style="width:100%; height:auto" src="IC-blackforest.jpeg" /></div>
                            <h3 style="line-height:21px" class="label-menu">BLACK FOREST With ICE CREAM</h3>                            
                            <h3 class="label-desc">Black forest coke, vanilla ice cream, chocolate</h3>  
                            <h5 class="widthmax label-price" >RM 6</h5> 
                        </div>
                    </div>
                    <div class="MenuBox">
                        <div class="modal-order">
                            <asp:Button ID="Button20" CssClass="btnChgPW button center height1" BackColor="#4bc11d" runat="server" Text="Order This" CommandArgument="120" OnCommand="Button20_Command" />
                        </div>
                        <div class="menupic">
                            <div style="width:100%; height:230px; "><img style="width:100%; height:auto" src="IC-cakefudge.jpg" /></div>
                            <h3 class="label-menu">CAKE FUDGE</h3>                            
                            <h3 class="label-desc" style="line-height:15px">Chocolate cake, vanilla ice cream, chocolate sauce</h3>  
                            <h5 class="widthmax label-price" >RM 8</h5> 
                        </div>
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

        <script type="text/javascript">

            function init() {
                window.location.href = "Home.aspx";
            }
            var burger = document.getElementById("MenuBurger");
            var pasta = document.getElementById("MenuPasta");
            var IC = document.getElementById("MenuIC");
            function filterSelection(food) {
                if (food == "all") {
                    burger.style.display = "block";
                    pasta.style.display = "block";
                    IC.style.display = "block";
                }
                if (food == "Burger") {
                    burger.style.display="block";
                    pasta.style.display="none";
                    IC.style.display="none";
                }
                if (food == "Pasta") {
                    burger.style.display = "none";
                    pasta.style.display = "block";
                    IC.style.display = "none";
                }
                if (food == "IC") {
                    burger.style.display = "none";
                    pasta.style.display = "none";
                    IC.style.display = "block";
                }
            }

            
            /*
            filterSelection("all")            
            function filterSelection(c) {
                var x, i;
                x = document.getElementsByClassName("filterDiv");
                if (c == "all") c = "";
                // Add the "show" class (display:block) to the filtered elements, and remove the "show" class from the elements that are not selected
                for (i = 0; i < x.length; i++) {
                    w3RemoveClass(x[i], "show");
                    if (x[i].className.indexOf(c) > -1) w3AddClass(x[i], "show");
                }
            } 
            // Show filtered elements
            function w3AddClass(element, name) {
                var i, arr1, arr2;
                arr1 = element.className.split(" ");
                arr2 = name.split(" ");
                for (i = 0; i < arr2.length; i++) {
                    if (arr1.indexOf(arr2[i]) == -1) {
                        element.className += " " + arr2[i];
                    }
                }
            }
            // Hide elements that are not selected
            function w3RemoveClass(element, name) {
                var i, arr1, arr2;
                arr1 = element.className.split(" ");
                arr2 = name.split(" ");
                for (i = 0; i < arr2.length; i++) {
                    while (arr1.indexOf(arr2[i]) > -1) {
                        arr1.splice(arr1.indexOf(arr2[i]), 1);
                    }
                }
                element.className = arr1.join(" ");
            }*/
            // Add active class to the current control button (highlight it)
            var btnContainer = document.getElementById("MenuClass");
            var btns = btnContainer.getElementsByClassName("btnMenuFilter");
            for (var i = 0; i < btns.length; i++) {
                btns[i].addEventListener("click", function () {
                    var current = document.getElementsByClassName("activeMenu");
                    current[0].className = current[0].className.replace(" activeMenu", "");
                    this.className += " activeMenu";
                });
            }
        </script>

    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateOrder.aspx.cs" Inherits="WebApplication1.CreateOrder" EnableViewStateMac ="false" EnableSessionState="True" EnableEventValidation ="false" ValidateRequest ="false" ViewStateEncryptionMode ="Never"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create Order | Burgerlyfe Delivery</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet1.css"/>           
    <link rel="icon" href="favicon-burgerlyfe.png" type="image/x-icon" />
    <link href='https://fonts.googleapis.com/css?family=Cantarell' rel='stylesheet'/>
    <link href='https://fonts.googleapis.com/css?family=Leckerli One' rel='stylesheet'/>
    <link href='https://fonts.googleapis.com/css?family=Fjalla One' rel='stylesheet'/>
    <link href='https://fonts.googleapis.com/css?family=Hammersmith One' rel='stylesheet'/>
    <link href='https://fonts.googleapis.com/css?family=Merriweather Sans' rel='stylesheet'/>
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed" rel="stylesheet"/>
</head>
<body style="background-color:#090057;padding-bottom:100px;">
    <form id="CreateOrderForm" runat="server"> 
        
        
        <!-- Order Bar -->
        <div id="OrderBar" style="position:relative;top:0;width:100%;">
            <div style="width:100%;height:70px;margin:0px;position:relative;top:0px;background-color:white;display:block ;font-family:'Roboto Condensed', sans-serif">
                <div class="wrapper" style="height:100%;">
                    <div style="width:58%;height:100%;float:left;display:block">
                        <h2 id="labelOrder" style="font-size:23px;line-height:70px; margin:0px; padding:0px 0px 0px 0px;text-align:left">CART</h2>
                        <h2 id="labelSelectI" style="font-size:23px;line-height:70px; margin:0px; padding:0px 0px 0px 0px;text-align:left;display:none">SELECT ITEM(s)</h2>
                    </div>                    
                    <div id="btnContainer1" style="width:10% ;height:100%;float:right;display:block">
                        <asp:Button ID="btnConfirm" CssClass="btnSet1 transi2 center height4 widthmax" Font-Bold="true" runat="server" Text="Confirm" ForeColor="White" OnClick="btnConfirm_Click" />
                    </div> 
                    <div id="btnContainer2" style="width:10%;margin-right:1%;height:100%;float:right;display:block">
                        <asp:Button ID="btnCancel" CssClass="btnSet1 transi1 center height4 widthmax" Font-Bold="true" runat="server" Text="Cancel" ForeColor="White" OnClick="btnCancel_Click" />
                    </div>  
                    <div id="btnContainer3" style="width:10% ;height:100%;float:right;display:none">
                        <asp:Button ID="btnBack" CssClass="btnSet1 transi2 center height4 widthmax " UseSubmitBehavior="false" Font-Bold="true" runat="server" Text="Back" ForeColor="White" OnClick="btnBack_Click" />
                    </div>
                    <div style="width:20%;margin-right:1%;height:100%;float:right;display:block">
                        <h2 style="font-size:20px;line-height:29px; margin:0px; padding:13px 0px 0px 0px;text-align:right;color:#939393">TOTAL 
                            <span style="color:#e64f4f">RM
                                <asp:Label ID="lblTotal" runat="server" Text="0" Font-Size="20"></asp:Label>
                            </span>
                        </h2>
                        <h2 style="font-size:13px;line-height:14px; margin:0px; padding:0px 0px 0px 0px;text-align:right;color:#939393;font-style:italic">Incl. GST 6%</h2>
                    </div>
                </div>            
            </div>
        </div> 
        <!-- First Panel -->
        <div id="Panel1" class="widthmax" style="margin-top:20px; display:block">            
            <div class="wrapper" style="min-height:400px;overflow:-webkit-paged-x;display:block;margin-top:30px">
                <div style="height:60px;display:block;margin-bottom:30px" class="widthmax">
                    <asp:Button ID="btnAddItem" CssClass="btnSet2 transi3 center " UseSubmitBehavior="false" runat="server" Text="Add Item" ForeColor="White" OnClick="btnAddItem_Click" />
                </div>               
                
                <!-- <div id="NoItem" class="ItemBox">                          
                    <div class="widthmax heightmax" style="border:1px dashed #d1ceef;border-radius:4px">
                        <h3 style="width:100%;line-height:280px;text-align:center;color:#d1ceef;font-weight:100;margin:0px">Item</h3>                                                      
                    </div>                                              
                </div>  -->
                <%--<div class="ItemBox">       
                    <div class="modal-order">                            
                        <input type="button" class="btnChgPW button center height2 transi2" style="margin-bottom:10px" value="Edit" onclick="" />
                        <input type="button" class="btnChgPW button center height2 transi1" value="Delete" onclick="" />
                        </div>                   
                        <div class="widthmax heightmax orderItem" style="background-color:#010321;color:white; border:1px solid #d1ceef;border-radius:4px">
                        <img src="Burger-MegaSpecial.jpg" style="width:100%;height:auto" />
                        <h4 class="LabelAddress2" style="margin:15px 0px 2px 15px;text-align:left;font-weight:bold">MEGA SPECIAL BURGER</h4>
                        <h4 class="LabelAddress2" style="text-align:left;font-size:14px;margin-left:15px">Qty : 1</h4>                        
                        

                                            <div class="col-sm-6">
                                                <div class="image-caption cast-shadow mb-xs-32">
                                                    <img alt="Captioned Image" src="img/home7.jpg" />
                                                    <div class="caption">
                                                        <p>
                                                            <strong>Package:</strong> Trip to Japan
                                                        </p>
                                                        
                                                    </div>
                                                </div><br />
                                                <a class="btn" href="#">Edit</a>
                                                <a class="btn" href="#">Delete</a>
                                            </div>


                    </div>                                              
                </div>--%> 
                <div id="itemlist">
                    <asp:PlaceHolder ID="Items" runat="server"></asp:PlaceHolder>

                </div>              
            </div>
        </div>
        <!-- First Panel Ends -->

        <!-- Second Panel Starts -->
        <div id="Panel2" class="widthmax heightmax" style="background-color:firebrick; overflow:auto;position:absolute;display:none;transition:.5s ease">
        
        <div id="Content" style="width:100%; padding-bottom:30px;overflow:-webkit-paged-x;  background-color:#80CED7; height:auto; margin-top:0px">
         
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
                            <!--<input type="button" onclick="addItem(101)" value="Order This" class="btnChgPW button center height1 transi2"/>-->
                            <asp:Button ID="btn101" CssClass="btnChgPW button center height1" UseSubmitBehavior="false" BackColor="#4bc11d" runat="server" Text="Order This" OnClick="btn101_Click" />
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
                            <asp:Button ID="btn102" CssClass="btnChgPW button center height1" BackColor="#4bc11d" runat="server" Text="Order This" OnClick="btn102_Click" />
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
                            <asp:Button ID="btn103" CssClass="btnChgPW button center height1" BackColor="#4bc11d" runat="server" Text="Order This" OnClick="btn103_Click" />
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
                            <asp:Button ID="btn104" CssClass="btnChgPW button center height1" BackColor="#4bc11d" runat="server" Text="Order This" OnClick="btn104_Click" />
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
                            <asp:Button ID="btn105" CssClass="btnChgPW button center height1" BackColor="#4bc11d" runat="server" Text="Order This" OnClick="btn105_Click" />
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
                            <asp:Button ID="btn106" CssClass="btnChgPW button center height1" BackColor="#4bc11d" runat="server" Text="Order This" OnClick="btn106_Click" />
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
                            <asp:Button ID="btn107" CssClass="btnChgPW button center height1" BackColor="#4bc11d" runat="server" Text="Order This" OnClick="btn107_Click" />
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
                            <asp:Button ID="btn108" CssClass="btnChgPW button center height1" BackColor="#4bc11d" runat="server" Text="Order This" OnClick="btn108_Click" />
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
                            <asp:Button ID="btn109" CssClass="btnChgPW button center height1" BackColor="#4bc11d" runat="server" Text="Order This" OnClick="btn109_Click" />
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
                            <asp:Button ID="btn110" CssClass="btnChgPW button center height1" BackColor="#4bc11d" runat="server" Text="Order This" OnClick="btn110_Click" />
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
                            <asp:Button ID="btn122" CssClass="btnChgPW button center height1" BackColor="#4bc11d" runat="server" Text="Order This" OnClick="btn122_Click" />
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
                            <asp:Button ID="btn123" CssClass="btnChgPW button center height1" BackColor="#4bc11d" runat="server" Text="Order This" OnClick="btn123_Click" />
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
                            <asp:Button ID="btn111" CssClass="btnChgPW button center height1" BackColor="#4bc11d" runat="server" Text="Order This" OnClick="btn111_Click" />
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
                            <asp:Button ID="btn112" CssClass="btnChgPW button center height1" BackColor="#4bc11d" runat="server" Text="Order This" OnClick="btn112_Click" />
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
                            <asp:Button ID="btn121" CssClass="btnChgPW button center height1" BackColor="#4bc11d" runat="server" Text="Order This" OnClick="btn121_Click" />
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
                            <asp:Button ID="btn113" CssClass="btnChgPW button center height1" BackColor="#4bc11d" runat="server" Text="Order This" OnClick="btn113_Click" />
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
                            <asp:Button ID="btn114" CssClass="btnChgPW button center height1" BackColor="#4bc11d" runat="server" Text="Order This" OnClick="btn114_Click" />
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
                            <asp:Button ID="btn115" CssClass="btnChgPW button center height1" BackColor="#4bc11d" runat="server" Text="Order This" OnClick="btn115_Click" />
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
                            <asp:Button ID="btn116" CssClass="btnChgPW button center height1" BackColor="#4bc11d" runat="server" Text="Order This" OnClick="btn116_Click" />
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
                            <asp:Button ID="btn117" CssClass="btnChgPW button center height1" BackColor="#4bc11d" runat="server" Text="Order This" OnClick="btn117_Click" />
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
                            <asp:Button ID="btn118" CssClass="btnChgPW button center height1" BackColor="#4bc11d" runat="server" Text="Order This" OnClick="btn118_Click" />
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
                            <asp:Button ID="btn119" CssClass="btnChgPW button center height1" BackColor="#4bc11d" runat="server" Text="Order This" OnClick="btn119_Click" />
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
                            <asp:Button ID="btn120" CssClass="btnChgPW button center height1" BackColor="#4bc11d" runat="server" Text="Order This" OnClick="btn120_Click" />
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
        </div>

        <!-- Third Panel Starts -->
        <div id="Panel3" class="widthmax heightmax" style="z-index:20; background-color:#f2f2f2; overflow:auto;position:absolute;display:none;transition:.5s ease">
            <div style="width:50%;height:60%;background-color:white;border:1px solid #d5d5d5;border-radius:6px;margin:50px auto">
                <div id="EditQty" class="MenuBox" style="width:291px;margin:14px 15px;border:1px solid #3c3c3c">                        
                        <!--<div class="menupic">
                            <div style="width:100%; height:230px; "><img style="width:100%; height:auto" src="IC-cakefudge.jpg" /></div>
                            <h3 class="label-menu">CAKE FUDGE</h3>                            
                            <h3 class="label-desc" style="line-height:15px">Chocolate cake, vanilla ice cream, chocolate sauce</h3>  
                            <h5 class="widthmax label-price" >RM 8</h5> 
                        </div>-->
                    </div>
            </div>
        </div>
        <asp:HiddenField ID="IDorder" runat="server" />
        <!-- save notice pop up -->
        <div id="popUP" class="savedPopUp">
            <h5 style="color:white; margin:15px auto 15px auto; font-size:15px;font-family: 'Roboto Condensed', sans-serif; display:block; text-align:center;">Item(s) have been added to cart!</h5>
        </div>

        <!-- JS -->
        <script type="text/javascript">
            var s="";
            function getID(id) {
                s = id;
            }

            function Display() {
                var xmlhttp = new XMLHttpRequest();
                xmlhttp.open("GET", "Config.aspx?opr=test", false);
                xmlhttp.send(null);
                document.getElementById("itemlist").innerHTML = xmlhttp.responseText;
            }

            function DisplayItem(as) {                
                var xmlhttp = new XMLHttpRequest();
                xmlhttp.open("GET", "Config.aspx?opr=display&id=" + as, false);
                xmlhttp.send(null);
                document.getElementById("itemlist").innerHTML = xmlhttp.responseText;
            }
        </script>

        <script type="text/javascript">
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
                    burger.style.display = "block";
                    pasta.style.display = "none";
                    IC.style.display = "none";
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
            var popup = document.getElementById("popUP");
            function playPopUp() {
                popup.style.animationPlayState = "running";
            }

            var lbOrder = document.getElementById("labelOrder");
            var lbSelectI = document.getElementById("labelSelectI");
            var btnCo = document.getElementById("btnContainer1");
            var btnCa = document.getElementById("btnContainer2");
            var btnB = document.getElementById("btnContainer3");

            var MenuForm = document.getElementById("Panel2");
            var AddItemForm = document.getElementById("Panel3");
            var InitialForm = document.getElementById("Panel1");
            var btnViewMenu = document.getElementById("btnAddItem");
            function showPanel() {
                
                InitialForm.style.display = "none";
                MenuForm.style.display = "block";
                lbOrder.style.display = "none";
                lbSelectI.style.display = "block";
                btnCo.style.display = "none";
                btnCa.style.display = "none";
                btnB.style.display = "block";
                
            }

            function showOrder() {
                if (AddItemForm.style.display == "block") {
                    showPanel()
                }
                else{
                InitialForm.style.display = "block";
                MenuForm.style.display = "none";
                lbOrder.style.display = "block";
                lbSelectI.style.display = "none";
                btnCo.style.display = "block";
                btnCa.style.display = "block";
                btnB.style.display = "none";
                    }
            }

            function showPanel3() {
                InitialForm.style.display = "none";
                MenuForm.style.display = "none";
                lbOrder.style.display = "none";
                lbSelectI.style.display = "block";
                btnCo.style.display = "none";
                btnCa.style.display = "none";
                btnB.style.display = "block";
                AddItemForm.style.display = "block";
            }
            var idord = document.getElementById("IDorder");
            function addItem(id) {
                window.location = "AddItemCart.aspx?id=" + idord + "&mn=" + id;
                /*
                showPanel3();
                var xmlhttp = new XMLHttpRequest();

                xmlhttp.open("GET", "Config.aspx?opr=AddItem", false);
                xmlhttp.send();
                document.getElementById("EditQty").innerHTML = xmlhttp.responseText;*/
            }

            function Editqty(MenuID, OrderID) {
                window.location = "EditQty.aspx?id=" + OrderID + "&mn=" + MenuID;
            }
            function DeleteItem(MenuID, OrderID) {
                window.location = "DeleteItem.aspx?id=" + OrderID + "&mn=" + MenuID;
            }
        </script>
    </form>
</body>
</html>

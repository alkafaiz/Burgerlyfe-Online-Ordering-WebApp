<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateStatus.aspx.cs" Inherits="WebApplication1.UpdateStatus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Order Status | Burgerlyfe Delivery</title>
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
    <form id="updateStatus" runat="server">
    <!-- Order Bar -->
        <div id="OrderBar" style="position:relative;top:0;width:100%;">
            <div style="width:100%;height:70px;margin:0px;position:relative;top:0px;background-color:white;display:block ;font-family:'Roboto Condensed', sans-serif">
                <div class="wrapper" style="height:100%;">
                    <div style="width:58%;height:100%;float:left;display:block">
                        <h2 id="labelOrder" style="font-size:23px;line-height:70px; margin:0px; padding:0px 0px 0px 0px;text-align:left">ADMIN DASHBOARD</h2>                        
                    </div>                                                             
                    <div id="btnContainer3" style="width:10% ;height:100%;float:right;">
                        <asp:Button ID="btnLogOut" CssClass="btnSet1 transi1 center height4 widthmax " UseSubmitBehavior="false" Font-Bold="true" runat="server" Text="Log Out" ForeColor="White" OnClick="btnLogOut_Click"/>
                    </div>           
                    <div id="btnContainer2" style="width:10%;margin-right:1%; height:100%;float:right;">
                        <asp:Button ID="btnBack" CssClass="btnSet1 transi1 center height4 widthmax " UseSubmitBehavior="false" Font-Bold="true" runat="server" Text="Back" ForeColor="White" OnClick="btnBack_Click"/>
                    </div>          
                </div>            
            </div>
        </div> 
        <!-- Third Panel Starts -->
        <div id="Panel3" class="widthmax heightmax" style="z-index:20; font-family:'Cantarell'; background-color:#f2f2f2; position:absolute;;transition:.5s ease">
            <div style="width:50%;padding-bottom:30px; background-color:white;border:1px solid #d5d5d5;border-radius:6px;margin:50px auto">
                <div style="width:100%;min-height:70%;margin:20px auto;">
                    <div class="row2 borderbtm">
                        <h1 id="lblHead" class="LabelAddress3" style=" line-height:80px;margin:0px; font-size:45px;text-align:left">Update Status</h1>
                        <asp:Label ID="lblHeadView" CssClass="LabelAddress3 labelviewOrder" Visible="false" runat="server" Text=""></asp:Label>
                    </div>
                    <div id="header" class="row2 borderbtm" style="height:50px; ">
                        <div style="float:left; width:55%;height:100%;">
                            <h2 class="label1">Menu</h2>
                        </div>
                        <div style="float:left;width:15%;height:100%;">
                            <h2 class="label1">Price</h2>
                        </div>
                        <div style="float:left;width:15%;height:100%;">
                            <h2 class="label1">Qty</h2>
                        </div>
                        <div style="float:left;width:15%;height:100%;">
                            <h2 class="label1">SubTotal</h2>
                        </div>
                    </div>
                    <asp:PlaceHolder ID="PlaceHolderItems" runat="server"></asp:PlaceHolder>                    
                        <div id="total" class="row2 borderbtm">
                        <div style="float:left; width:70%; height:100%;">                                                        
                            <h2 class="label2 bold2">TOTAL</h2>
                        </div>                        
                        <div style="float:left;width:15%;height:100%;">
                            <asp:PlaceHolder ID="PlaceHolderTotQty" runat="server"></asp:PlaceHolder>
                        </div>
                        <div style="float:left;width:15%;height:100%;">
                            <asp:PlaceHolder ID="PlaceHolderTotal" runat="server"></asp:PlaceHolder>                            
                        </div>
                    </div>
                    <!--Order Info-->
                    <div class="row2 borderbtm" style="height:150px; padding-bottom:10px; ">
                        <h1 class="LabelAddress3" style="width:100%; line-height:30px;margin:10px 0px 0px 0px; font-size:18px;text-align:left">Deliver to</h1>
                        <div style="width:40%;height:130px;float:left">
                            <asp:PlaceHolder ID="PlaceHolderOrderInfo" runat="server"></asp:PlaceHolder>                                                    
                    </div>
                        
                </div>   
                    <div class="row2 borderbtm">
                            <div style="width:21%;height:40px;float:left; margin:0px; ">
                                <h1 class="LabelAddress3" style="width:100%; line-height:40px;margin:0px 0px 0px 0px; font-size:18px;text-align:left">Update to:</h1>        
                            </div>
                            <div style="width:19%;height:40px;float:left; margin:0px; margin-right:1%;">
                                <asp:Button ID="btnOnProcess" CssClass="btnSet1 transi2 center martop1 widthmax" Font-Bold="true" runat="server" Text="On Process" ForeColor="White" OnClick="btnOnProcess_Click"/>                                
                            </div>
                            <div style="width:19%;height:40px;float:left; margin:0px; margin-right:1%;">
                                <asp:Button ID="btnOnDeliv" CssClass="btnSet1 transi2 center martop1 widthmax" Font-Bold="true" runat="server" Text="On Delivery" ForeColor="White" OnClick="btnOnDeliv_Click"/>
                            </div>
                            <div style="width:19%;height:40px;float:left; margin:0px; margin-right:1%; ">
                                <asp:Button ID="btnComplet" CssClass="btnSet1 transi2 center martop1 widthmax" Font-Bold="true" runat="server" Text="Completed" ForeColor="White" OnClick="btnComplet_Click"/>
                            </div>
                            <div style="width:19%;height:40px;float:left; margin:0px;">
                                <asp:Button ID="btnCancel" CssClass="btnSet1 transi2 center martop1 widthmax" Font-Bold="true" runat="server" Text="Canceled" ForeColor="White" OnClick="btnCancel_Click"/>
                            </div>
                                <h1 class="LabelAddress3" style="width:100%; line-height:40px;margin:0px 0px 0px 21%; font-size:14px;text-align:left;">Current Status: <span style="color:#2dc217">
                                    <asp:Label ID="lblstatus" runat="server" Text=""></asp:Label></span></h1>                                
                        </div>            
            </div>
        </div>
    </form>
</body>
</html>

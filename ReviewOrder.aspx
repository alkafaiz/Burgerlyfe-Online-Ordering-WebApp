<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReviewOrder.aspx.cs" Inherits="WebApplication1.ReviewOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Review Order | Burgerlyfe Delivery</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet1.css"/>           
    <link rel="icon" href="favicon-burgerlyfe.png" type="image/x-icon" />
    <link href='https://fonts.googleapis.com/css?family=Cantarell' rel='stylesheet'/>
    <link href='https://fonts.googleapis.com/css?family=Leckerli One' rel='stylesheet'/>
    <link href='https://fonts.googleapis.com/css?family=Fjalla One' rel='stylesheet'/>
    <link href='https://fonts.googleapis.com/css?family=Hammersmith One' rel='stylesheet'/>
    <link href='https://fonts.googleapis.com/css?family=Merriweather Sans' rel='stylesheet'/>
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed" rel="stylesheet"/>
</head>
<body style="background-color:#ededed">
    <form id="ReviewOrderForm" runat="server">
    <!-- Order Bar -->
        <div id="OrderBar" style="position:relative;top:0;width:100%;">
            <div style="width:100%;height:70px;margin:0px;position:relative;top:0px;background-color:white;display:block ;font-family:'Roboto Condensed', sans-serif">
                <div class="wrapper" style="height:100%;">
                    <div style="width:58%;height:100%;float:left;display:block">
                        <h2 id="labelOrder" style="font-size:23px;line-height:70px; margin:0px; padding:0px 0px 0px 0px;text-align:left">REVIEW ORDER</h2>
                        <h2 id="labelVIEW" style="font-size:23px;line-height:70px; margin:0px; padding:0px 0px 0px 0px;text-align:left;display:none">ORDER DETAIL</h2>
                    </div>                    
                    <div id="btnContainer1" style="width:10% ;height:100%;float:right;display:block">
                        <asp:Button ID="btnConfirm" CssClass="btnSet1 transi2 center height4 widthmax" Font-Bold="true" runat="server" Text="Confirm" ForeColor="White" OnClick="btnConfirm_Click" />
                    </div> 
                    <div id="btnContainer2" style="width:10%;margin-right:1%;height:100%;float:right;display:block">
                        <asp:Button ID="btnCancel" CssClass="btnSet1 transi1 center height4 widthmax" Font-Bold="true" runat="server" Text="Cancel" ForeColor="White" OnClick="btnCancel_Click" />
                    </div>  
                    <div id="btnContainer3" style="width:10%;margin-right:1%;height:100%;float:right;display:block">
                        <asp:Button ID="btnBack" CssClass="btnSet1 transi1 center height4 widthmax" UseSubmitBehavior="false" Font-Bold="true" runat="server" Text="Back" ForeColor="White" OnClick="btnBack_Click"  />
                    </div>
                    <div id="btnContainer4" style="width:10%;margin-right:1%;height:100%;float:right;display:none">
                        <asp:Button ID="btnBackPr" CssClass="btnSet1 transi1 center height4 widthmax" UseSubmitBehavior="false" Font-Bold="true" runat="server" Text="Back" ForeColor="White" OnClick="btnBackPr_Click"  />
                    </div>
                    <div style="width:20%;margin-right:1%;height:100%;float:right;display:none">
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
        <!-- Third Panel Starts -->
        <div id="Panel3" class="widthmax heightmax" style="z-index:20; font-family:'Cantarell'; background-color:#f2f2f2; position:absolute;;transition:.5s ease">
            <div style="width:50%;padding-bottom:30px; background-color:white;border:1px solid #d5d5d5;border-radius:6px;margin:50px auto">
                <div style="width:100%;min-height:70%;margin:20px auto;">
                    <div class="row2 borderbtm">
                        <h1 id="lblHead" class="LabelAddress3" style=" line-height:80px;margin:0px; font-size:45px;text-align:left">Confirm Your Order</h1>
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
                    <%--<div class="row2 borderbtm">
                        <div style="float:left; width:53%;padding-right:2%; height:100%;">                            
                            <<img src="Burger-AllAmerican.jpg" style="width:15%;height:auto;padding-top:20px;margin-right:10px; float:left" />
                            <h2 class="label2">All American Burger</h2>
                        </div>
                        <div style="float:left;width:15%;height:100%;">                            
                            <h2 class="label2">15.00</h2>
                        </div>
                        <div style="float:left;width:15%;height:100%;">                            
                            <h2 class="label2">2</h2>
                        </div>
                        <div style="float:left;width:15%;height:100%;">                            
                            <h2 class="label2">30.00</h2>
                        </div>
                    </div>--%>
                        <div id="total" class="row2 borderbtm">
                        <div style="float:left; width:70%; height:100%;">                                                        
                            <h2 class="label2 bold2">TOTAL</h2>
                        </div>                        
                        <div style="float:left;width:15%;height:100%;">
                            <asp:PlaceHolder ID="PlaceHolderTotQty" runat="server"></asp:PlaceHolder>
                            <%--<h2 class="label2 bold2">2</h2>--%>
                        </div>
                        <div style="float:left;width:15%;height:100%;">
                            <asp:PlaceHolder ID="PlaceHolderTotal" runat="server"></asp:PlaceHolder>
                            <%--<h2 class="label2 bold2">30.00</h2>--%>
                        </div>
                    </div>
                    <!--Order Info-->
                    <div class="row2 borderbtm" style="height:150px; padding-bottom:10px; ">
                        <h1 class="LabelAddress3" style="width:100%; line-height:30px;margin:10px 0px 0px 0px; font-size:18px;text-align:left">Deliver to</h1>
                        <div style="width:40%;height:130px;float:left">
                            <asp:PlaceHolder ID="PlaceHolderOrderInfo" runat="server"></asp:PlaceHolder>
                            <%--<h2 class="label3">Yeca Ayesha Nabila</h2>
                            <h2 class="label3">+60119275862</h2>
                            <h2 class="label3">22-05-2018</h2>
                            <h2 class="label3">13:45</h2>
                        </div>
                        
                        <h2 class="label3" style="float:left;width:60%">Endah Promenade, Block D, Level 20, Unit 4, Jalan 3e/200, Kuala Lumpur, Kuala Lumpur, 57000</h2>--%>
                        

                    </div>
                </div>
               
            </div>
        </div>
            <script type="text/javascript">
                var lbl3 = document.getElementById("lblHead");                
                var lbl1 = document.getElementById("labelVIEW");
                var lbl2 = document.getElementById("labelOrder");
                var btn1 = document.getElementById("btnContainer1");
                var btn2 = document.getElementById("btnContainer2");
                var btn3 = document.getElementById("btnContainer3");
                var btn4 = document.getElementById("btnContainer4");
                function viewOnly() {
                    btn1.style.display = "none";
                    btn2.style.display = "none";
                    btn3.style.display = "none";
                    btn4.style.display = "block";
                    lbl2.style.display = "none";
                    lbl1.style.display = "block";
                    lbl2.style.display = "none";
                    lbl3.style.display = "none";
                    
                }
            </script>
    </form>
</body>
</html>

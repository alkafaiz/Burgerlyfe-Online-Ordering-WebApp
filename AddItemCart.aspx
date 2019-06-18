<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddItemCart.aspx.cs" Inherits="WebApplication1.AddItemCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Item Order | Burgerlyfe Delivery</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet1.css"/>           
    <link rel="icon" href="favicon-burgerlyfe.png" type="image/x-icon" />
    <link href='https://fonts.googleapis.com/css?family=Cantarell' rel='stylesheet'/>
    <link href='https://fonts.googleapis.com/css?family=Leckerli One' rel='stylesheet'/>
    <link href='https://fonts.googleapis.com/css?family=Fjalla One' rel='stylesheet'/>
    <link href='https://fonts.googleapis.com/css?family=Hammersmith One' rel='stylesheet'/>
    <link href='https://fonts.googleapis.com/css?family=Merriweather Sans' rel='stylesheet'/>
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed" rel="stylesheet"/>
</head>
<body style="background-color:#e1e1e1;font-family: 'Roboto Condensed', sans-serif;">
    <form id="form1" runat="server">
    <div id="OrderBar" style="position:relative;top:0;width:100%;">
            <div style="width:100%;height:70px;margin:0px;position:relative;top:0px;background-color:white;display:block ;font-family:'Roboto Condensed', sans-serif">
                <div class="wrapper" style="height:100%;">
                    <div style="width:58%;height:100%;float:left;display:block">
                        <h2 id="labelOrder" style="font-size:23px;line-height:70px; margin:0px; padding:0px 0px 0px 0px;text-align:left">ADD ITEM</h2>
                        <h2 id="labelSelectI" style="font-size:23px;line-height:70px; margin:0px; padding:0px 0px 0px 0px;text-align:left;display:none">SELECT ITEM(s)</h2>
                    </div>                    
                    <div id="btnContainer1" style="width:10% ;height:100%;float:right;display:none">
                        <asp:Button ID="btnConfirm" CssClass="btnSet1 transi2 center height4 widthmax" Font-Bold="true" runat="server" Text="Confirm" ForeColor="White" OnClick="btnConfirm_Click" />
                    </div> 
                    <div id="btnContainer2" style="width:10%;margin-right:1%;height:100%;float:right;display:block">
                        <asp:Button ID="btnCancel" CssClass="btnSet1 transi1 center height4 widthmax" Font-Bold="true" runat="server" Text="Cancel" ForeColor="White" OnClick="btnCancel_Click" />
                    </div>  
                    <div id="btnContainer3" style="width:10% ;height:100%;float:right;display:none">
                        <asp:Button ID="btnBack" CssClass="btnSet1 transi2 center height4 widthmax" UseSubmitBehavior="false" Font-Bold="true" runat="server" Text="Back" ForeColor="White" OnClick="btnBack_Click"  />
                    </div>
                    <div style="width:20%;margin-right:1%;height:100%;float:right;display:block">
                        <h2 style="font-size:20px;line-height:29px; margin:0px; padding:13px 0px 0px 0px;text-align:right;color:#939393">TOTAL 
                            <span style="color:#e64f4f">RM
                                <asp:Label ID="lblTotal" runat="server" Text="50" Font-Size="20"></asp:Label>
                            </span>
                        </h2>
                        <h2 style="font-size:13px;line-height:14px; margin:0px; padding:0px 0px 0px 0px;text-align:right;color:#939393;font-style:italic">Incl. GST 6%</h2>
                    </div>
                </div>            
            </div>
        </div> 
        <!-- Third Panel Starts -->
        <div id="Panel3" class="widthmax heightmax" style="z-index:20; background-color:#f2f2f2; overflow:auto;position:absolute;;transition:.5s ease">
            <div style="width:50%;height:60%;background-color:white;border:1px solid #d5d5d5;border-radius:6px;margin:50px auto">
                <div id="EditQty" class="MenuBox" style="width:291px;margin:14px 15px;border:1px solid #3c3c3c">                        
                        <div class="menupic">
                            <asp:PlaceHolder ID="PlaceHolderItem" runat="server"></asp:PlaceHolder>
                            <%--<div style="width:100%; height:230px; "><img style="width:100%; height:auto" src="IC-cakefudge.jpg" /></div>
                            <h3 class="label-menu">CAKE FUDGE</h3>                            
                            <h3 class="label-desc" style="line-height:15px">Chocolate cake, vanilla ice cream, chocolate sauce</h3>  
                            <h5 class="widthmax label-price" >RM 8</h5> --%>
                        </div>
                </div>
                <div style="float:right; width:270px; height:200px; margin:80px 50px 0px 0px;">
                    <h3 class="LabelAddress2" style="width:100%;font-size:24px; margin-bottom:10px">Order Qty:</h3>
                    <asp:DropDownList ID="txtQty" CssClass="txt-style txt-style-wid widthmax marbot1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="txtQty_SelectedIndexChanged1" >
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                    </asp:DropDownList>
                    <h4 id="labelSubT" class="LabelAddress3" style="width:40%;font-size:18px;margin-top:5px;">Subtotal RM<span><asp:Label ID="lblsubtotal" runat="server" Text="0" ></asp:Label></span></h4>
                    <asp:Button ID="btnEdit" UseSubmitBehavior="false" Visible="false" CssClass="btnChgPW button center float-rg transi1" runat="server" Text="Edit Qty" OnClick="btnEdit_Click" /> 
                    <h4 id="labelAdded" class="LabelAddress3 " style="display:none; width:100%;color:darkred; font-size:15px;margin-top:50px;">This item has been added to cart.</h4>

                    <asp:Button ID="btnAddtoCart" UseSubmitBehavior="false" CssClass="btnChgPW button center float-rg transi2" runat="server" Text="Add to Cart" OnClick="btnAddtoCart_Click" /> 
                </div>
            </div>
        </div>
        <!-- save notice pop up -->
        <div id="popUP" class="savedPopUp">
            <h5 style="color:white; margin:15px auto 15px auto; font-size:15px;font-family: 'Roboto Condensed', sans-serif; display:block; text-align:center;">Item has been added!</h5>
        </div>

        <script>
            var popup = document.getElementById("popUP");
            var labelAdd = document.getElementById("labelAdded");
            var labelSubT = document.getElementById("labelSubT");
            function showlabelAdded() {
                labelAdd.style.display = "block";
                labelSubT.style.display = "none";
            }
            function hidelabelAdded() {
                labelAdd.style.display = "none";
                labelSubT.style.display = "block";
            }
            function playPopUp(){
                popup.style.animationPlayState = "running";
            }
        </script>
    </form>
</body>
</html>

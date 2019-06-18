<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <input type="button" value="test" onclick="Display()" />
    
        
        <div id="tes"></div>

    </div>
        <script type="text/javascript">
            function Display() {
                var xmlhttp = new XMLHttpRequest();
               
                xmlhttp.open("GET", "Config.aspx?opr=test", false);                
                xmlhttp.send();
                document.getElementById("tes").innerHTML = xmlhttp.responseText;

            }
        </script>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddComande.aspx.cs" Inherits="userControl.AddComande" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Add Command</title>
    <style>
        h1 {
            text-align: center;
        }
        .auto-style1 {
         background-color: #FFCCFF;
         width: 325px;
         }
         .auto-style2 {
             background-color: #CCFFFF;
             width: 40%;
         }
         .auto-style3 {
             width: 620%;
             background-color: #99FFCC;
         }
         .main {
             display: flex;
         }
        .auto-style4 {
            width: 183px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Add Command</h1>
        <div id="main">
            <div class="inputs">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2">Article</td>
                        <td class="auto-style3">
                            <input id="article" type="text" class="auto-style4"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Price</td>
                        <td class="auto-style3">
                            <input id="prix" type="text" class="auto-style4" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Quantite</td>
                        <td class="auto-style3">
                            <input id="quantite" type="number" min="1" value="1" class="auto-style4"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Submit</td>
                        <td class="auto-style3">
                            <asp:Button ID="Button1" runat="server" Text="Add" />
                        </td>
                    </tr>
                </table>
            </div>
            <div class="outputs">

            </div>
        </div>
    </form>
</body>
</html>

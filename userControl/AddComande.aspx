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
        .auto-style4 {
            width: 183px;
        }
        .auto-style5 {
            background-color:cadetblue;
            margin-left: 55px;
        }
        header{
            display: flex;
            text-align: center;
        }
        h1{
            text-align: center;
            flex: 1;
        }
        #main {
             display: flex;
         }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Timer ID="Timer1" runat="server" OnTick="Timer1_Tick"></asp:Timer>
            </ContentTemplate>
        </asp:UpdatePanel>
        <header>
            <h1 class="title">Add Command</h1>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="commandes.aspx" ><h2>Commandes</h2></asp:HyperLink>
        </header>
        <div id="main">
            <div class="inputs">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2">Article ID</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="articleId" runat="server" class="auto-style4"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Article</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="article" runat="server" class="auto-style4"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Price</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="prix" runat="server" class="auto-style4"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Quantite</td>
                        <td class="auto-style3">
                            <input id="quantite" runat="server" type="number" min="1" value="1" class="auto-style4"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Submit</td>
                        <td class="auto-style3">
                            <asp:Button ID="Button1" runat="server" Text="Add" CssClass="auto-style5" Width="79px" OnClick="Button1_Click" />
                        </td>
                    </tr>
                </table>
            </div>
            <div class="outputs">
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                        reciept
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
    </form>
</body>
</html>

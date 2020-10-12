<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="details.aspx.cs" Inherits="userControl.details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Details</title>
</head>
<style type="text/css">
    .body {
        background-color: #f3eded
    }
    .auto-style3 {
        width: 112px;
    }
    .Cmp {
        width: 560px;
    }
</style>
<body>
    <form id="form1" runat="server">
        <div style="display: flex; text-align:center; ">
            <h1 style="flex:2; color: #808080">Detail</h1> 
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="commandes.aspx" ><h2>Commandes</h2></asp:HyperLink>
        </div>
        <div style="width:560px; margin:0 auto; background-color:#dbe9ea; padding: 10px;" >
            &nbsp;<strong>Commande</h2> n: <%= codecmd %> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Le <strong><%= date %><strong>
            <br /><br /><br />
            <div class="Cmp">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3">Code Article</td>
                        <td class="auto-style3">Libele</td>
                        <td class="auto-style3">Prix Unitaire</td>
                        <td class="auto-style3">Quantité</td>
                        <td class="auto-style3">Total Article</td>
                    </tr>
                </table>
                <hr />
            </div>
            <asp:Panel ID="Panel1" runat="server"></asp:Panel>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <%# afficherCtrl(Eval("Idcmp").ToString()) %>
                </ItemTemplate>
            </asp:Repeater>
            <div class="Cmp">
                <hr />
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3"><strong><h3>Total</h3></strong></td>
                        <td class="auto-style3"></td>
                        <td class="auto-style3"></td>
                        <td class="auto-style3"></td>
                        <td class="auto-style3"><h3><%= total %><h3></td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>

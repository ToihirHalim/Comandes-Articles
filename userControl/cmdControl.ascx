<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="cmdControl.ascx.cs" Inherits="userControl.cmdControl" %>
 <style type="text/css">
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
 </style>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">Code Commande</td>
            <td class="auto-style3"><strong><asp:Label ID="lbCodeCmd" runat="server" Text="Label"></asp:Label>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style2">Date Commande</td>
            <td class="auto-style3"><strong><asp:Label ID="lbDateCmd" runat="server" Text="Label"></asp:Label>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:LinkButton ID="LinkButton1" runat="server" onClick="Button1_Click">Detail </asp:LinkButton>
            </td>
            <td class="auto-style3"><strong>$<asp:Label ID="prix" runat="server" Text="Label"></asp:Label>
                </strong></td>
        </tr>
    </table>

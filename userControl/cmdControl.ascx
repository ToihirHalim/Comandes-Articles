<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="cmdControl.ascx.cs" Inherits="userControl.cmdControl" %>
 <style type="text/css">
     .auto-style1 {
         background-color: #FFCCFF;
     }
     .auto-style2 {
         background-color: #CCFFFF;
         width: 113px;
     }
     .auto-style3 {
         width: 212px;
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
            <td class="auto-style3"></td>
        </tr>
    </table>
    <br />

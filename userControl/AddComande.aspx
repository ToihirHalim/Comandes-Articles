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
            margin-left: 3px;
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
        header{
            display: flex;
            justify-content: space-between;
            text-align: center;
        }
        .inputs{
            flex: 1;
        }
        .outputs{
            flex: 1;
        }
        .auto-style6 {
            background-color: cadetblue;
            margin-left: 15px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        
        <header>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="commandes.aspx" ><h2>Commandes</h2></asp:HyperLink>
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="commandes.aspx" ><h2>Add Command</h2></asp:HyperLink>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="commandes.aspx" ><h2>Add Article</h2></asp:HyperLink>
        </header>
        <div id="main">
            <div class="inputs">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2">Article ID</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="Id" runat="server" class="auto-style4"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Libele</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="Libele" runat="server" class="auto-style4"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Quantite</td>
                        <td class="auto-style3">
                            <input id="quantite" runat="server" type="number" min="1" value="1" class="auto-style4"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Add</td>
                        <td class="auto-style3">
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                     <asp:Button ID="Button2" runat="server" Text="Delete" CssClass="auto-style5" Width="77px" OnClick="delete" />
                                     <asp:Button ID="Button1" runat="server" Text="Add" CssClass="auto-style5" Width="79px" OnClick="add" />
                                </ContentTemplate>
                             </asp:UpdatePanel>
                         </td>
                    </tr>
                </table>
                <section id="buttons">
                    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                        <ContentTemplate>
                            <asp:Button ID="Cancel" runat="server" Text="Cancel" OnClick="cancel" Height="63px" Width="129px" BackColor="Red" />
                            <asp:Button ID="Submit" runat="server" Text="Submit" OnClick="submit" Height="63px" Width="191px" BackColor="Lime"/>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </section>
            </div>
            <div class="outputs">
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                        <asp:Panel ID="Panel1" runat="server"></asp:Panel>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddArticle.aspx.cs" Inherits="userControl.AddArticle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Add Article</title>
    <style>
        .container{
            width: 100%;
        }
        .auto-style1 {
             background-color: #FFCCFF;
             width: 325px;
             margin: 25vh auto 0 auto;
         }
         .auto-style2 {
             background-color: #CCFFFF;
             width: 40%;
         }
         .auto-style3 {
             width: 60%;
             background-color: #99FFCC;
         }
         header {
             display: flex;
             justify-content: space-between;
         }
         .error{
             width: 100%;
             margin: 10px auto;
             color: red;
             text-align:center;
         }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <header>
             <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="commandes.aspx" ><h2>Commandes</h2></asp:HyperLink>
            <h1>Add Article</h1>
             <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="AddComande.aspx" ><h2>Add command</h2></asp:HyperLink>
        </header>

        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="container">
                    <table class="auto-style1">
                        
                        <tr>
                            <td class="auto-style2">Article</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="article" runat="server" class="auto-style4" Width="182px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Price</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="prix" runat="server" class="auto-style4" Width="182px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Submit</td>
                            <td class="auto-style3">
                                <asp:Button ID="Button1" runat="server" Text="Add" CssClass="auto-style5" Width="79px" style="margin-left: 55px" OnClick="Button1_Click" />
                            </td>
                        </tr>
                    </table>
                    <div class="error">
                        <asp:Label ID="error" runat="server" Text=""></asp:Label>
                    </div>
                    
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
        
    </form>
</body>
</html>

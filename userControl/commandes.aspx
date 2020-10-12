<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="commandes.aspx.cs" Inherits="userControl.commandes" %>
<%@ Register src="~/cmdControl.ascx"  TagPrefix="uc" TagName="Student"%> 

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Commandes</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>les Commandes</h1>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>

                    <asp:Repeater ID="Repeater1" runat="server" OnItemDataBound="Repeater1_ItemDataBound" >
                        <ItemTemplate>
                             <uc:Student ID="cmdcntrl" runat="server" />
                        </ItemTemplate>
                    </asp:Repeater>

                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>

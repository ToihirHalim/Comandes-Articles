﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="commandes.aspx.cs" Inherits="userControl.commandes" %>
<%@ Register src="~/cmdControl.ascx"  TagPrefix="uc" TagName="Student"%> 

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Commandes</title>
    <style>
        h1 {
            text-align: center;
            margin-bottom: 90px;
        }
        #main {
            width: 80%;
            margin: auto;
            display: grid;
            grid-gap: 10px 40px;
            grid-template-columns: repeat(auto-fill, 325px);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>les Commandes</h1>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <main id="main">
                        <asp:Repeater ID="Repeater1" runat="server" OnItemDataBound="Repeater1_ItemDataBound" >
                            <ItemTemplate>
                                 <uc:Student ID="cmdcntrl" runat="server"/>
                            </ItemTemplate>
                        </asp:Repeater>
                    </main>

                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
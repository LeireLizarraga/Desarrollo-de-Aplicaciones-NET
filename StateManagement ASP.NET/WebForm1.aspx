﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="GestiondeEstado.WebForm1" EnableViewState="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title><%=Application["AppMsg"].ToString() %></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1><asp:Label ID="lblApp" runat="server" Text="Label"></asp:Label></h1>
            Usuarios Conectados<asp:Label ID="lblMsg" runat="server" Text="Label"></asp:Label>
        </div>

        <div>
        Contar Clicks<asp:Label ID="lblCounter" runat="server" />
            <asp:Button ID="btnIncrement" runat="server" Text="Contar" onclick="btnIncrement_Click" />
        </div>
    </form>
</body>
</html>

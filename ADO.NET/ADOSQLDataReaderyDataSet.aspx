﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ADOSQLDataReaderyDataSet.aspx.cs" Inherits="SuperHeroes.ADOSQLDataReader" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
  
    <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" onclick="btnActualizar_Click" />
    <asp:Button ID="btnActualizarConDataSet" runat="server" Text="DataSet" onclick="btnActualizarConDataSet_Click"/>
    <asp:GridView ID="GridView1" runat="server"></asp:GridView>

    </form>
</body>
</html>

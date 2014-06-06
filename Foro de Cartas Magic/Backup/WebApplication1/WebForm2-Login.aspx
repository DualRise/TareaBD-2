<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2-Login.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 300px">
    
        INICIO DE SESION<br />
        <br />
        Nombre:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" style="margin-top: 0px" Width="137px"></asp:TextBox>
        <br />
        <br />
        Contraseña:&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="TextBox2" TextMode="password" runat="server" style="margin-top: 0px"></asp:TextBox>
        <br />
        <br />&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Height="32px" onclick="Button1_Click" 
            Text="Aceptar" Width="65px" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Height="31px" onclick="Button2_Click" 
            Text="Volver" Width="62px" />
    
    &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Height="31px" onclick="Button3_Click" 
            Text="VISITA" Width="64px" />
    
    </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3-Ingresar.aspx.cs" Inherits="WebApplication1.WebForm3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 266px">
    <form id="form1" runat="server">
    <div style="height: 264px">
    
        INGRESAR EN EL SISTEMA<br />
        <br />
        Nombre:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="INombre" runat="server"></asp:TextBox>
        <br />
        Contraseña:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="IContraseña" runat="server"></asp:TextBox>
        <br />
        Repetir Contraseña:&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="RContraseña" runat="server"></asp:TextBox>
        <br />
       Fecha de Nacimiento:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="IFecha" runat="server"></asp:TextBox>
        <br />
        Sexo:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="ISexo" runat="server"></asp:TextBox>
        <br />
        Avatar Url:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="IUrl" runat="server"></asp:TextBox>
        <br />
        <br />
&nbsp;
        <asp:Button ID="Button1" runat="server" Height="34px" onclick="Button1_Click" 
            Text="Ingresar" Width="74px" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Height="34px" onclick="Button2_Click" 
            Text="Volver" Width="68px" />
    
    </div>
    </form>
</body>
</html>

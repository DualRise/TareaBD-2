<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3-Ingresar.aspx.cs" Inherits="WebApplication1.WebForm3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            background-color: #99CC00;
            font-weight: bold;
        }
        .auto-style2 {
            color: #339933;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }
    </style>
</head>
<body style="height: 266px">
    <form id="form1" runat="server">
    <div style="height: 264px">
    
        <strong><span class="auto-style2">FORO DE CARTAS MAGIC</span><br class="auto-style2" />
        <br class="auto-style2" />
        <span class="auto-style2">INGRESAR USUARIO EN EL SISTEMA:</span></strong><br />
        <br />
        Nombre:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="INombre" runat="server"></asp:TextBox>
        <br />
        Contraseña:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="IContraseña" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        Confirmar Contraseña:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="RContraseña" runat="server" TextMode="Password"></asp:TextBox>
        <br />
       Fecha de Nacimiento:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="IFecha" runat="server"></asp:TextBox>
        <br />
        Sexo:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="ISexo" runat="server"></asp:TextBox>
        <br />
        Avatar Url:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="IUrl" runat="server"></asp:TextBox>
        <br />
        <br />
&nbsp;
        <asp:Button ID="Button1" runat="server" Height="34px" onclick="Button1_Click" 
            Text="Registrar" Width="74px" CssClass="auto-style1" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Height="34px" onclick="Button2_Click" 
            Text="Volver" Width="68px" CssClass="auto-style1" />
    
    </div>
    </form>
</body>
</html>

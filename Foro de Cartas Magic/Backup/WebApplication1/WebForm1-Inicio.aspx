<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1-Inicio.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 373px; width: 428px; margin-left: 4px">
    
        FORO DE CARTAS MAGIC<br />
        <br />
        CATALOGO DE CATEGORIAS PUBLICAS<br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="id_buzon" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="id_buzon" HeaderText="id_buzon" 
                    InsertVisible="False" ReadOnly="True" SortExpression="id_buzon" />
                <asp:BoundField DataField="id_usuario" HeaderText="id_usuario" 
                    SortExpression="id_usuario" />
                <asp:BoundField DataField="mensajes" HeaderText="mensajes" 
                    SortExpression="mensajes" />
                <asp:BoundField DataField="mensajes_sin_leer" HeaderText="mensajes_sin_leer" 
                    SortExpression="mensajes_sin_leer" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:TareaBDConnectionString %>" 
            SelectCommand="SELECT * FROM [Buzon_entrada]"></asp:SqlDataSource>
        <br />
        <br />
&nbsp;<asp:Button ID="Button1" runat="server" Height="36px" onclick="Button1_Click" 
            Text="Iniciar Sesion" Width="105px" />
        <br />
        <br />
&nbsp;<asp:Button ID="Button2" runat="server" Height="30px" onclick="Button2_Click" 
            Text="Registrarse" Width="105px" />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>

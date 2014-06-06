<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm10-Perfil2.aspx.cs" Inherits="WebApplication1.WebForm10_Perfil2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            background-color: #99CC00;
            font-weight: bold;
        }
        .auto-style2 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            color: #339933;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <span class="auto-style2"><strong>FORO DE CARTAS MAGIC</strong></span><strong><br class="auto-style2" />
        <br class="auto-style2" />
        </strong><span class="auto-style2"><strong>INFORMACIÓN:</strong></span><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_usuario" DataSourceID="SqlDataSource1" Height="47px" style="text-align: left" Width="637px">
            <Columns>
                <asp:BoundField DataField="id_usuario" HeaderText="id_usuario" InsertVisible="False" ReadOnly="True" SortExpression="id_usuario" Visible="False" />
                <asp:BoundField DataField="id_grupo" HeaderText="id_grupo" SortExpression="id_grupo" Visible="False" />
                <asp:BoundField DataField="nombre" HeaderText="Nombre" SortExpression="nombre" />
                <asp:BoundField DataField="contraseña" HeaderText="Contraseña" SortExpression="contraseña" />
                <asp:BoundField DataField="cantidad_comentarios" HeaderText="N° de Comentarios" SortExpression="cantidad_comentarios" />
                <asp:BoundField DataField="avatar_url" HeaderText="Avatar" SortExpression="avatar_url" />
                <asp:BoundField DataField="fecha_nacimiento" HeaderText="Fecha de Nacimiento" SortExpression="fecha_nacimiento" />
                <asp:BoundField DataField="sexo" HeaderText="Sexo" SortExpression="sexo" />
                <asp:BoundField DataField="fecha_registro" HeaderText="Fecha de registro" SortExpression="fecha_registro" />
            </Columns>
            <RowStyle HorizontalAlign="Center" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TareaBD2ConnectionString %>" SelectCommand="SELECT [id_usuario], [id_grupo], [nombre], [contraseña], [cantidad_comentarios], [avatar_url], [fecha_nacimiento], [sexo], [fecha_registro] FROM [Usuario] WHERE ([nombre] = @nombre)">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="nombre" Name="nombre" QueryStringField="nombre" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Button ID="Button1" runat="server" CssClass="auto-style1" OnClick="Button1_Click" Text="Editar" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" CssClass="auto-style1" OnClick="Button2_Click" Text="Volver" />
    
    </div>
    </form>
</body>
</html>

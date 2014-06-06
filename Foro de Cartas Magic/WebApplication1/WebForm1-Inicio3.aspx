<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1-Inicio3.aspx.cs" Inherits="WebApplication1.WebForm1_Inicio3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #339933;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }
        .auto-style2 {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <span class="auto-style1"><strong>FORO DE CARTAS MAGIC</strong></span><strong><br class="auto-style1" />
        <br class="auto-style1" />
        </strong>
        <span class="auto-style1"><strong>SUBFOROS DE LA CATEGORÍA:</strong></span><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" ShowHeader="False" CssClass="auto-style1">
            <Columns>
                <asp:BoundField DataField="nombre" HeaderText="nombre" ShowHeader="False" SortExpression="nombre" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TareaBD2ConnectionString %>" SelectCommand="SELECT [nombre] FROM [Categoria] WHERE ([id_categoria] = @id_categoria)">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="id_categoria" Name="id_categoria" SessionField="id_categoria" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        TEMA:<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="nombre" HeaderText="Nombre" SortExpression="nombre" />
                <asp:BoundField DataField="descripcion" HeaderText="Descripción" SortExpression="descripcion" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TareaBD2ConnectionString %>" SelectCommand="SELECT [nombre], [descripcion] FROM [Tema] WHERE ([id_tema] = @id_tema)">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="id_tema" Name="id_tema" SessionField="id_tema" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        CONTENIDO:<asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" Height="112px" ShowHeader="False" Width="222px">
            <Columns>
                <asp:BoundField DataField="mensaje" HeaderText="mensaje" SortExpression="mensaje" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:TareaBD2ConnectionString %>" SelectCommand="SELECT [mensaje] FROM [Tema] WHERE ([id_tema] = @id_tema)">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="id_tema" Name="id_tema" SessionField="id_tema" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        RESPUESTAS:<asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="id_comentario" DataSourceID="SqlDataSource4">
            <Columns>
                <asp:BoundField DataField="avatar_url" HeaderText="Avatar" SortExpression="avatar_url" />
                <asp:BoundField DataField="nombre" HeaderText="Usuario" SortExpression="nombre" />
                <asp:BoundField DataField="mensaje" HeaderText="Contenido" SortExpression="mensaje" />
                <asp:BoundField DataField="id_comentario" HeaderText="id_comentario" InsertVisible="False" ReadOnly="True" SortExpression="id_comentario" Visible="False" />
                <asp:BoundField DataField="id_usuario" HeaderText="id_usuario" SortExpression="id_usuario" Visible="False" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:TareaBD2ConnectionString %>" SelectCommand="SELECT Comentario.mensaje, Usuario.nombre, Usuario.avatar_url, Comentario.id_comentario, Comentario.id_usuario FROM Comentario INNER JOIN Usuario ON Comentario.id_usuario = Usuario.id_usuario AND Comentario.id_usuario = Usuario.id_usuario WHERE (Comentario.id_tema = @id_tema)">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="id_tema" Name="id_tema" SessionField="id_tema" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Height="31px" OnClick="Button1_Click" Text="Iniciar sesión" Width="101px" style="background-color: #99CC00" CssClass="auto-style2" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Height="31px" OnClick="Button2_Click" Text="Registrarse" Width="84px" style="background-color: #99CC00" CssClass="auto-style2" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Height="31px" OnClick="Button3_Click" Text="Volver" Width="84px" style="background-color: #99CC00" CssClass="auto-style2" />
    
    </div>
    </form>
</body>
</html>

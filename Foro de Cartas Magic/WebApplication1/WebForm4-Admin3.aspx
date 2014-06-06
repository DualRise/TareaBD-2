<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4-Admin3.aspx.cs" Inherits="WebApplication1.WebForm4_Admin3" %>

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
    
        F<strong><span class="auto-style2">ORO DE CARTAS MAGIC</span><br class="auto-style2" />
        <br class="auto-style2" />
        <span class="auto-style2">SUBFOROS DE LA CATEGORÍA</span></strong>:<asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" ShowHeader="False">
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TareaBD2ConnectionString %>" SelectCommand="SELECT [nombre] FROM [Categoria] WHERE ([id_categoria] = @id_categoria)">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="id_categoria" Name="id_categoria" SessionField="id_categoria" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        TEMA:<asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataKeyNames="id_usuario" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="id_usuario" HeaderText="id_usuario" SortExpression="id_usuario" Visible="False" />
                <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TareaBD2ConnectionString %>" SelectCommand="SELECT [id_usuario], [nombre], [descripcion] FROM [Tema] WHERE ([id_tema] = @id_tema)">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="id_tema" Name="id_tema" SessionField="id_tema" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        CONTENIDO:<asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" Height="117px" ShowHeader="False" Width="286px">
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
        <br />
        RESPUESTAS:<asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" OnSelectedIndexChanged="GridView7_SelectedIndexChanged" Width="236px" DataKeyNames="id_comentario">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="nombre" HeaderText="Usuario" SortExpression="nombre" />
                <asp:BoundField DataField="avatar_url" HeaderText="Avatar" SortExpression="avatar_url" />
                <asp:BoundField DataField="mensaje" HeaderText="Respuesta" SortExpression="mensaje" />
                <asp:BoundField DataField="id_comentario" HeaderText="id_comentario" InsertVisible="False" ReadOnly="True" SortExpression="id_comentario" Visible="False" />
                <asp:BoundField DataField="id_usuario" HeaderText="id_usuario" SortExpression="id_usuario" Visible="False" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:TareaBD2ConnectionString %>" SelectCommand="SELECT Comentario.mensaje, Usuario.nombre, Usuario.avatar_url, Comentario.id_comentario, Comentario.id_usuario FROM Comentario INNER JOIN Usuario ON Comentario.id_usuario = Usuario.id_usuario AND Comentario.id_usuario = Usuario.id_usuario WHERE (Comentario.id_tema = @id_tema)" DeleteCommand="DELETE FROM Comentario WHERE (id_comentario = @id_comentario) AND (id_usuario = @id_usuariolog) OR (id_comentario = @id_comentario) AND (@id_grupolog = 1)" UpdateCommand="UPDATE Comentario SET mensaje = @mensaje WHERE id_comentario=@id_comentario AND id_usuario=@id_usuario">
            <DeleteParameters>
                <asp:Parameter Name="id_comentario" />
                <asp:SessionParameter DefaultValue="id_usuario" Name="id_usuariolog" SessionField="id_usuario" />
                <asp:SessionParameter DefaultValue="id_grupo" Name="id_grupolog" SessionField="id_grupo" />
            </DeleteParameters>
            <SelectParameters>
                <asp:SessionParameter DefaultValue="id_tema" Name="id_tema" SessionField="id_tema" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="mensaje" />
                <asp:Parameter Name="id_comentario" />
                <asp:SessionParameter DefaultValue="id_usuario" Name="id_usuario" SessionField="id_usuario" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        Comentario:<br />
&nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="104px" Width="288px" TextMode="MultiLine"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Height="29px" OnClick="Button1_Click" Text="Enviar" Width="69px" CssClass="auto-style1" />
        <br />
        <br />
        &nbsp;<asp:Button ID="Button2" runat="server" Height="30px" OnClick="Button2_Click" Text="Cancelar" Width="88px" CssClass="auto-style1" />
    
    </div>
    </form>
</body>
</html>

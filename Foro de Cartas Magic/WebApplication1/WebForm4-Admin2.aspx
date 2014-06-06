<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4-Admin2.aspx.cs" Inherits="WebApplication1.WebForm4_Admin2" %>

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
        </strong><span class="auto-style2"><strong>SUBFOROS DE LA CATEGORÍA</strong></span>:<asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource4" ShowHeader="False">
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:TareaBD2ConnectionString %>" SelectCommand="SELECT [nombre] FROM [Categoria] WHERE ([id_categoria] = @id_categoria)">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="id_categoria" Name="id_categoria" SessionField="id_categoria" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="id_tema" DataSourceID="SqlDataSource5" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
            <Columns>
                <asp:CommandField SelectText="Ver" ShowSelectButton="True" />
                <asp:BoundField DataField="id_tema" HeaderText="id_tema" InsertVisible="False" ReadOnly="True" SortExpression="id_tema" Visible="False" />
                <asp:BoundField DataField="id_categoria" HeaderText="id_categoria" SortExpression="id_categoria" Visible="False" />
                <asp:BoundField DataField="id_usuario" HeaderText="id_usuario" SortExpression="id_usuario" Visible="False" />
                <asp:BoundField DataField="mensaje" HeaderText="mensaje" SortExpression="mensaje" Visible="False" />
                <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
                <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                <asp:CheckBoxField DataField="publico" HeaderText="publico" SortExpression="publico" Visible="False" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:TareaBD2ConnectionString %>" SelectCommand="SELECT [id_tema], [id_categoria], [id_usuario], [mensaje], [descripcion], [nombre], [publico] FROM [Tema] WHERE ([id_categoria] = @id_categoria)" DeleteCommand="DELETE FROM Tema WHERE (id_tema = @id_tema) AND @id_grupolog=1 OR (id_tema = @id_tema) OR @id_grupolog=4">
            <DeleteParameters>
                <asp:SessionParameter DefaultValue="id_usuario" Name="id_usuario" SessionField="id_usuario" />
                <asp:SessionParameter DefaultValue="id_grupo" Name="id_grupolog" SessionField="id_grupo" />
            </DeleteParameters>
            <SelectParameters>
                <asp:SessionParameter DefaultValue="id_categoria" Name="id_categoria" SessionField="id_categoria" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
    
    </div>
        <asp:Button ID="Button1" runat="server" Height="33px" Text="Volver" Width="76px" OnClick="Button1_Click" CssClass="auto-style1" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Height="32px" Text="Cerrar sesión" Width="119px" CssClass="auto-style1" OnClick="Button2_Click" />
    </form>
</body>
</html>

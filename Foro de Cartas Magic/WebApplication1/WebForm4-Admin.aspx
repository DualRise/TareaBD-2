<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4-Admin.aspx.cs" Inherits="WebApplication1.WebForm4" %>

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
<body style="height: 191px">
    <form id="form1" runat="server">
    <div style="height: 190px">
    
        <strong><span class="auto-style2">FORO DE CARTAS MAGIC<br />
        </span>
        <br class="auto-style2" />
        </strong><span class="auto-style2"><strong>MENU ADMINISTRADOR</strong></span><strong><br class="auto-style2" />
        <br class="auto-style2" />
        </strong><span class="auto-style2"><strong>CATALOGO DE CATEGORIAS:</strong></span><br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_categoria" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField SelectText="Entrar" ShowSelectButton="True" />
                <asp:BoundField DataField="id_categoria" HeaderText="id_categoria" InsertVisible="False" ReadOnly="True" SortExpression="id_categoria" Visible="False" />
                <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
                <asp:CheckBoxField DataField="publico" HeaderText="publico" SortExpression="publico" Visible="False" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TareaBD2ConnectionString %>" SelectCommand="SELECT [id_categoria], [nombre], [descripcion], [publico] FROM [Categoria]" DeleteCommand="DELETE FROM Categoria WHERE (@id_usuario = 1) AND (id_categoria = @id_categoria) OR (@id_usuario = 4) AND (id_categoria = @id_categoria)">
            <DeleteParameters>
                <asp:SessionParameter DefaultValue="id_usuario" Name="id_usuario" SessionField="id_usuario" />
                <asp:Parameter Name="id_categoria" />
            </DeleteParameters>
        </asp:SqlDataSource>
        <br />
        &nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" CssClass="auto-style1" Height="31px" OnClick="Button2_Click" Text="Ver Usuarios" Width="88px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Height="32px" onclick="Button1_Click" 
            Text="Cerrar sesión" Width="86px" CssClass="auto-style1" />
        <br />
    
    </div>
    </form>
</body>
</html>

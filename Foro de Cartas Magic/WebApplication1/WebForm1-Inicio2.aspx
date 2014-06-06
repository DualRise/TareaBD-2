<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1-Inicio2.aspx.cs" Inherits="WebApplication1.WebForm1_Inicio2" %>

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
        <span class="auto-style1"><strong>SUBFOROS DE LA CATEGORÍA:</strong></span><asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource3" ShowHeader="False">
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:TareaBD2ConnectionString %>" SelectCommand="SELECT [nombre] FROM [Categoria] WHERE ([id_categoria] = @id_categoria)">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="id_categoria" Name="id_categoria" SessionField="id_categoria" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_tema" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField SelectText="Ver" ShowSelectButton="True" />
                <asp:BoundField DataField="id_tema" HeaderText="id_tema" InsertVisible="False" ReadOnly="True" SortExpression="id_tema" Visible="False" />
                <asp:BoundField DataField="id_categoria" HeaderText="id_categoria" SortExpression="id_categoria" Visible="False" />
                <asp:BoundField DataField="id_usuario" HeaderText="id_usuario" SortExpression="id_usuario" Visible="False" />
                <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
                <asp:BoundField DataField="mensaje" HeaderText="mensaje" SortExpression="mensaje" Visible="False" />
                <asp:CheckBoxField DataField="publico" HeaderText="publico" SortExpression="publico" Visible="False" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TareaBD2ConnectionString %>" SelectCommand="SELECT [id_tema], [id_categoria], [id_usuario], [nombre], [descripcion], [mensaje], [publico] FROM [Tema] WHERE (([publico] = @publico) AND ([id_categoria] = @id_categoria))">
            <SelectParameters>
                <asp:Parameter DefaultValue="True" Name="publico" Type="Boolean" />
                <asp:SessionParameter DefaultValue="id_categoria" Name="id_categoria" SessionField="id_categoria" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
    
    </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Iniciar sesión" Height="30px" Width="106px" style="background-color: #99CC00" CssClass="auto-style2" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Registrar" Height="31px" OnClick="Button2_Click" Width="84px" style="background-color: #99CC00" CssClass="auto-style2" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Height="31px" OnClick="Button3_Click" Text="Volver" Width="84px" style="background-color: #99CC00" CssClass="auto-style2" />
    </form>
</body>
</html>

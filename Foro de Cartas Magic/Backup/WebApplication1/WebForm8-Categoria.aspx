<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm8-Categoria.aspx.cs" Inherits="WebApplication1.WebForm8" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    SELECCIONAR CATEGORIA<br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="id_categoria" DataSourceID="SqlDataSource1" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="id_categoria" HeaderText="id_categoria" 
                InsertVisible="False" ReadOnly="True" SortExpression="id_categoria" />
            <asp:BoundField DataField="nombre" HeaderText="nombre" 
                SortExpression="nombre" />
            <asp:BoundField DataField="descripcion" HeaderText="descripcion" 
                SortExpression="descripcion" />
            <asp:CheckBoxField DataField="publico" HeaderText="publico" 
                SortExpression="publico" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:TareaBDConnectionString %>" 
        SelectCommand="SELECT * FROM [Categoria]"></asp:SqlDataSource>
    <br />
    <br />
    <asp:Button ID="Button3" runat="server" onclick="Button3_Click1" Text="Volver" 
        Width="98px" />
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1-Inicio.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #339933;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 373px; width: 428px; margin-left: 4px">
    
        <span class="auto-style1"><strong>FORO DE CARTAS MAGIC</strong></span><strong><br class="auto-style1" />
        <br class="auto-style1" />
        </strong>
        <span class="auto-style1"><strong>CATALOGO DE CATEGORIAS PUBLICAS</strong></span><br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="id_categoria" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" style="text-align: left; background-color: #FFFFFF;">
            <Columns>
                <asp:CommandField SelectText="Entrar" ShowSelectButton="True" />
                <asp:BoundField DataField="id_categoria" HeaderText="id_categoria" 
                    SortExpression="id_categoria" InsertVisible="False" ReadOnly="True" Visible="False" />
                <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                <asp:BoundField DataField="descripcion" HeaderText="descripcion" 
                    SortExpression="descripcion" />
                <asp:CheckBoxField DataField="publico" HeaderText="publico" SortExpression="publico" Visible="False" />
            </Columns>
            <EditRowStyle HorizontalAlign="Center" />
            <RowStyle HorizontalAlign="Center" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TareaBD2ConnectionString %>" SelectCommand="SELECT [id_categoria], [nombre], [descripcion], [publico] FROM [Categoria] WHERE ([publico] = @publico)">
            <SelectParameters>
                <asp:Parameter DefaultValue="True" Name="publico" Type="Boolean" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
&nbsp;<asp:Button ID="Button1" runat="server" Height="36px" onclick="Button1_Click" 
            Text="Iniciar Sesion" Width="105px" style="font-weight: 700; background-color: #99CC00" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button2" runat="server" Height="36px" onclick="Button2_Click" 
            Text="Registrarse" Width="109px" style="font-weight: 700; background-color: #99CC00" />
        <br />
        <br />
&nbsp;<br />
        <br />
    
    </div>
    </form>
</body>
</html>

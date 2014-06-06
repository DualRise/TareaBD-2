<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm10-Perfil.aspx.cs" Inherits="WebApplication1.WebForm10_Perfil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            color: #339933;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <span class="auto-style1"><strong>FORO DE CARTAS MAGIC</strong></span><strong><br class="auto-style1" />
        <br class="auto-style1" />
        </strong><span class="auto-style1"><strong>USUARIOS EXISTENTES</strong></span>:<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_usuario" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ShowHeader="False">
            <Columns>
                <asp:BoundField DataField="nombre" HeaderText="Nombre" SortExpression="nombre" Visible="False" />
                <asp:BoundField DataField="id_grupo" HeaderText="id_grupo" SortExpression="id_grupo" Visible="False" />
                <asp:BoundField DataField="id_usuario" HeaderText="id_usuario" InsertVisible="False" ReadOnly="True" SortExpression="id_usuario" Visible="False" />
                <asp:HyperLinkField DataNavigateUrlFields="nombre" DataNavigateUrlFormatString="WebForm10-Perfil2.aspx?nombre={0}" DataTextField="nombre" NavigateUrl="~/WebForm10-Perfil2.aspx" ShowHeader="False" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TareaBD2ConnectionString %>" SelectCommand="SELECT [nombre], [id_grupo], [id_usuario] FROM [Usuario]"></asp:SqlDataSource>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="background-color: #99CC00; font-weight: 700;" Text="Volver" />
        <br />
    
    </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Materias.aspx.cs" Inherits="AW_PROYECTO.Presentacion.Materias" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Nombre:"></asp:Label>
        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
    
        <asp:DropDownList ID="ddlMaterias" runat="server" 
            ontextchanged="ddlMaterias_TextChanged">
        </asp:DropDownList>
    
    </div>
    <asp:Button ID="Btn_Registrar" runat="server" onclick="Btn_Registrar_Click" 
        Text="Registrar" />
    <asp:Button ID="Btn_Modificar" runat="server" Text="Modificar" 
        onclick="Btn_Modificar_Click" />
    <asp:GridView ID="gvrMaterias" runat="server">
    </asp:GridView>
    </form>
</body>
</html>

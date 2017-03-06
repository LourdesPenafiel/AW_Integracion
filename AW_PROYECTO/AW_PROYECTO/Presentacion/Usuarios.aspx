<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registroUsuarios.aspx.cs" Inherits="AW_PROYECTO.Presentacion.registroUsuarios" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Usuario<asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
    
        <asp:DropDownList ID="ddlUsuarios" runat="server" 
            onselectedindexchanged="ddlUsuarios_SelectedIndexChanged">
        </asp:DropDownList>
    
    </div>
    Contraseña
    <asp:TextBox ID="txtContrasena" runat="server"></asp:TextBox>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Tipo Usuario"></asp:Label>
        <asp:DropDownList ID="ddlTipoUsuario" runat="server" Height="21px" 
            Width="188px">
        </asp:DropDownList>
    </p>
    <asp:GridView ID="gvrUsuarios" runat="server">
    </asp:GridView>
    <p>
        <asp:Button ID="Btn_Registrar" runat="server" onclick="Btn_Registrar_Click" 
            Text="Registrar" />
        <asp:Button ID="Btn_Modificar" runat="server" onclick="Btn_Modificar_Click" 
            Text="Modificar" />
    </p>
    </form>
</body>
</html>

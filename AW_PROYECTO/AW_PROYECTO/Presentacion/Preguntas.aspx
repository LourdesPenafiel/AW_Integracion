<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Preguntas.aspx.cs" Inherits="AW_PROYECTO.Presentacion.Preguntas" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Preguntas</div>
    Creacion de Preguntas<br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Mateira"></asp:Label>
    <asp:DropDownList ID="ddlMaterias" runat="server">
    </asp:DropDownList>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Pregunta"></asp:Label>
    <asp:TextBox ID="txtPregunta" runat="server" Height="60px" Width="696px"></asp:TextBox>
    <br />
    <br />
    <br />
    <br />
    OPCIONES<br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="A"></asp:Label>
    <asp:RadioButton ID="opcion1"  runat="server" GroupName="opcion" />
    <asp:TextBox ID="txtOpcion1" runat="server" Height="50px" Width="684px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Text="B"></asp:Label>
    <asp:RadioButton ID="opcion2"  runat="server" GroupName="opcion" />
    <asp:TextBox ID="txtOpcion2" runat="server" Height="46px" Width="687px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label5" runat="server" Text="C"></asp:Label>
    <asp:RadioButton ID="opcion3"  runat="server" GroupName="opcion" />
    <asp:TextBox ID="txtOpcion3" runat="server" Height="45px" Width="686px"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Btn_Registrar" runat="server" onclick="Btn_Registrar_Click" 
        Text="Registrar" />
    <br />
    </form>
</body>
</html>

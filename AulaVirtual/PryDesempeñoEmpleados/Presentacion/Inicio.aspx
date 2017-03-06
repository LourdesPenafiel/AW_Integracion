<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/PaginaPrincipal.Master" AutoEventWireup="true" 
CodeBehind="Inicio.aspx.cs" Inherits="AulaVirtual.Presentacion.Inicio"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Estilos/Galeria.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
    <asp:Panel ID="Panel1" runat="server" Height="350px" >
        <asp:Image ID="Image1" runat="server" 
    ImageUrl="~/Presentacion/Galeria/2.jpg" />
    </asp:Panel>
</asp:Content>


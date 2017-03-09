<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/PaginaPrincipal.Master" AutoEventWireup="true" 
CodeBehind="registroUsuarios.aspx.cs" Inherits="AW_PROYECTO.Presentacion.registroUsuarios"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Estilos/Galeria.css" rel="stylesheet" type="text/css" />
    <style type="text/css">

*{
    padding: 0;
    font-family: 'Pontano Sans', sans-serif;
    font-size: 14px;
    color: #222156;
    margin-left: 0px;
    margin-right: 0px;
    margin-top: 0px;
}
             .frase
        {
            font-family: "Berlin Sans FB";
    font-size: 20px;
    color: #D2691E;
    text-align:center;
            
            }
            
        .frase
        {
            font-family: "Berlin Sans FB";
    font-size: 25px;
    color: #D2691E;
    text-align:center;
            
            }
             .nota
        {
             font-family: "Berlin Sans FB";
    font-size: 20px;
    color: #222156;
    text-align:center;
    
            }
         .style3
    {
        width: 198px;
    }
    .style5
    {
        width: 229px;
    }
         </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
    <asp:Panel ID="Panel1" runat="server" Height="614px" >

    <table width="100%" style="height: 378px">
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style5">
                                &nbsp;</td>
                            <td class="frase" colspan="2">
                                ADMINISTRACION DE USUARIOS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                            <td>
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                            </td>
                            <td width="40px">
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                            </td>
                            <td align="right" class="nota">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                            <td align="right" class="nota" width="300px">
                                Información general&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                            <td align="right" class="nota" width="300px">
                                Modificar&nbsp; usuario.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                            <td width="40px">
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                            </td>
                            <td align="right" class="style5">
                                Tipo de Usuario:<br />
                            </td>
                            <td width="300px">
                                <asp:DropDownList ID="dRol" runat="server" Height="27px" 
            Width="250px">
                <asp:ListItem Selected="True">Estudiante</asp:ListItem>
                <asp:ListItem>Profesor</asp:ListItem>
            </asp:DropDownList>
                                <br />
                            </td>
                            <td>
                                <asp:DropDownList 
        ID="ddlUsuarios" runat="server" 
            onselectedindexchanged="ddlUsuarios_SelectedIndexChanged" 
        AutoPostBack="True" DataSourceID="ConsultarUsuario" DataTextField="apellido" 
        DataValueField="id" Height="25px" Width="250px">
        </asp:DropDownList>
    
    <asp:SqlDataSource ID="ConsultarUsuario" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Conn %>" 
        SelectCommand="SELECT * FROM [USUARIOS]"></asp:SqlDataSource>
    
                            </td>
                            <td width="40px">
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                            </td>
                            <td align="right" class="style5">
                                Nombre:<br />
                            </td>
                            <td width="300px">
                                <asp:TextBox ID="txtnombre" runat="server" 
            Width="250px" ontextchanged="txtnombre_TextChanged" Height="25px"></asp:TextBox>
                                <br />
                            </td>
                            <td>
        <asp:Button ID="Btn_Modificar" runat="server" onclick="Btn_Modificar_Click" 
            Text="Modificar" Height="25px" Width="250px" />
                            </td>
                            <td width="40px">
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                            </td>
                            <td align="right" class="style5">
                                Apellido:<br />
                            </td>
                            <td width="300px">
                                <asp:TextBox ID="txtapellido" runat="server" 
            Width="250px" Height="25px"></asp:TextBox>
                                <br />
                            </td>
                            <td>
        <asp:Button ID="Btn_Registrar" runat="server" onclick="Btn_Registrar_Click" 
            Text="Registrar" Height="25px" Width="250px" />
                            </td>
                            
                            <td width="40px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style3">
                            </td>
                            <td align="right" class="style5">
                                Foto de Perfil:<br />
                            </td>
                            <td width="300px">
                                <asp:FileUpload ID="fluFotoEmpleado" 
                    runat="server" Width="250px" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="fluFotoEmpleado" ErrorMessage="Cargar una imagen"></asp:RequiredFieldValidator>
                                <br />
                            </td>
                            <td>
                                &nbsp;</td>
                            <td width="40px">
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                            </td>
                            <td align="right" class="style5">
                                Usuario:<br />
                            </td>
                            <td width="300px">
                                <asp:TextBox ID="txtUsuario" runat="server" 
            Width="250px" Height="25px"></asp:TextBox>
                                <br />
                            </td>
                            <td>
                                &nbsp;</td>
                            <td width="40px">
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                            </td>
                            <td align="right" class="style5">
                                Contraseña:<br />
                            </td>
                            <td width="300px">
    <asp:TextBox ID="txtContrasena" runat="server" Height="25px" Width="250px"></asp:TextBox>
                                <br />
                            </td>
                            <td>
                                &nbsp;</td>
                            <td width="40px">
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                            </td>
                            <td align="right" class="style5">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td width="40px">
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                            </td>
                            <td align="right" class="style5">
                                &nbsp;</td>
                            <td class="nota" align="right" width="300px">
                                Usuarios Activos&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                            <td>
                                &nbsp;</td>
                            <td width="40px">
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                            </td>
                            <td align="right" class="nota" colspan="3" rowspan="2">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:GridView ID="gvrUsuarios" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" 
        DataSourceID="ConsultarUsuario" HorizontalAlign="Center" Width="900px" Height="194px">
        <Columns>
            <asp:BoundField DataField="nombre" HeaderText="Nombre" 
                SortExpression="nombre" />
            <asp:BoundField DataField="apellido" HeaderText="Apellido" 
                SortExpression="apellido" />
            <asp:BoundField DataField="usuario" HeaderText="Usuario" 
                SortExpression="usuario" />
            <asp:BoundField DataField="tipo_usuario" HeaderText="Perfil de Usuario" 
                SortExpression="tipo_usuario" />
        </Columns>
    </asp:GridView>
                            </td>
                            <td width="40px">
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                            </td>
                            <td width="40px">
                            </td>
                        </tr>
                    </table>    </asp:Panel>
</asp:Content>


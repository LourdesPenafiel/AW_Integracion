<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registroUsuarios.aspx.cs" Inherits="AW_PROYECTO.Presentacion.registroUsuarios" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> USUARIOS </title>
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
         .style33
        {
            width: 329px;
        }
        .style34
        {
            width: 106px;
        }
        .style35
        {
            font-family: "Berlin Sans FB";
            font-size: 25px;
            color: #D2691E;
            text-align: center;
        }
        </style>
</head>
<body>

    <form id="form1" runat="server">
    <table width="100%">
                        <tr>
                            <td class="style34">
                                &nbsp;</td>
                            <td class="style33">
                                &nbsp;</td>
                            <td class="style35">
                                ADMINISTRACION DE USUARIOS</td>
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
                            <td class="style34">
                            </td>
                            <td align="right" class="nota" colspan="2">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                Información general</td>
                            <td align="right" class="nota">
                                Modificar&nbsp; usuario.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                            <td width="40px">
                            </td>
                        </tr>
                        <tr>
                            <td class="style34">
                            </td>
                            <td align="right" class="style33">
                                Tipo de Usuario:</td>
                            <td>
                                <asp:DropDownList ID="dRol" runat="server" Height="25px" 
            Width="256px">
                <asp:ListItem Selected="True">Estudiante</asp:ListItem>
                <asp:ListItem>Profesor</asp:ListItem>
            </asp:DropDownList>
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
                            <td class="style34">
                            </td>
                            <td align="right" class="style33">
                                Nombre:</td>
                            <td>
                                <asp:TextBox ID="txtnombre" runat="server" 
            Width="250px" ontextchanged="txtnombre_TextChanged" Height="25px"></asp:TextBox>
                            </td>
                            <td>
        <asp:Button ID="Btn_Modificar" runat="server" onclick="Btn_Modificar_Click" 
            Text="Modificar" Height="25px" Width="250px" />
                            </td>
                            <td width="40px">
                            </td>
                        </tr>
                        <tr>
                            <td class="style34">
                            </td>
                            <td align="right" class="style33">
                                Apellido:</td>
                            <td>
                                <asp:TextBox ID="txtapellido" runat="server" 
            Width="250px" Height="25px"></asp:TextBox>
                            </td>
                            <td>
        <asp:Button ID="Btn_Registrar" runat="server" onclick="Btn_Registrar_Click" 
            Text="Registrar" Height="25px" Width="250px" />
                            </td>
                            <td width="40px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style34">
                            </td>
                            <td align="right" class="style33">
                                Foto de Perfil:</td>
                            <td>
                                <asp:FileUpload ID="fluFotoEmpleado" 
                    runat="server" Width="250px" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="fluFotoEmpleado" ErrorMessage="Cargar una imagen"></asp:RequiredFieldValidator>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td width="40px">
                            </td>
                        </tr>
                        <tr>
                            <td class="style34">
                            </td>
                            <td align="right" class="style33">
                                Usuario:</td>
                            <td>
                                <asp:TextBox ID="txtUsuario" runat="server" 
            Width="250px" Height="25px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td width="40px">
                            </td>
                        </tr>
                        <tr>
                            <td class="style34">
                            </td>
                            <td align="right" class="style33">
                                Contraseña:</td>
                            <td>
    <asp:TextBox ID="txtContrasena" runat="server" Height="25px" Width="250px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td width="40px">
                            </td>
                        </tr>
                        <tr>
                            <td class="style34">
                            </td>
                            <td align="right" class="style33">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td width="40px">
                            </td>
                        </tr>
                        <tr>
                            <td class="style34">
                            </td>
                            <td align="right" class="style33">
                                &nbsp;</td>
                            <td class="nota">
                                Usuarios Activos&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                            <td>
                                &nbsp;</td>
                            <td width="40px">
                            </td>
                        </tr>
                        <tr>
                            <td class="style34">
                            </td>
                            <td align="right" class="nota" colspan="3" rowspan="2">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:GridView ID="gvrUsuarios" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" 
        DataSourceID="ConsultarUsuario" HorizontalAlign="Center" Width="900px">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="Identificador" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
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
                            <td class="style34">
                            </td>
                            <td width="40px">
                            </td>
                        </tr>
                    </table>
                
    <div>
            <br />
            </div>
    <br />
    <p>
        &nbsp;</p>
    </form>
</body>
</html>

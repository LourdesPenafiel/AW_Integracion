<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModuloEstudiante.aspx.cs" Inherits="AW_PROYECTO.Presentacion.ModuloEstudiante" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MODULO ESTUDIANTE</title>
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
        .style30
        {
            width: 332px;
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
    font-size: 30px;
    color: #222156;
    text-align:center;
    
            }
         .style31
        {
            width: 140px;
        }
    </style>
   </head>
<body>
    <form id="form1" runat="server">
    <div>
        <table width="100%">
            <tr>
                <td width="40px">
                    &nbsp;</td>
                <td class="style30">
                    &nbsp;</td>
                <td class="frase" colspan="2">
                    MODULO ESTUDIANTES</td>
                <td>
                </td>
                <td width="40px">
                </td>
            </tr>
            <tr>
                <td width="40px">
                </td>
                <td align="right" class="style30" rowspan="10">
                    <asp:Image ID="img1" runat="server" Height="200px" Width="60%" />
                </td>
                <td class="nota" colspan="2" rowspan="5">
                    Información general</td>
                <td>
                    &nbsp;</td>
                <td width="40px">
                </td>
            </tr>
            <tr>
                <td width="40px">
                </td>
                <td>
                    &nbsp;</td>
                <td width="40px">
                </td>
            </tr>
            <tr>
                <td width="40px">
                </td>
                <td>
                    &nbsp;</td>
                <td width="40px">
                </td>
            </tr>
            <tr>
                <td width="40px">
                </td>
                <td>
                    &nbsp;</td>
                <td width="40px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="40px">
                </td>
                <td>
                    <asp:Button ID="Btn_Usuarios" runat="server" class="btn btn-default" 
                        onclick="Btn_Usuarios_Click" Text="Resolver cuestionario" Height="25px" 
                        Width="100%" />
                </td>
                <td width="40px">
                </td>
            </tr>
            <tr>
                <td width="70px">
                </td>
                <td align="right" class="style31">
                    Nombre:</td>
                <td align="left" width="300px">
                    <asp:TextBox ID="txtNombre" runat="server" Width="90%"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td width="40px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="70px">
                </td>
                <td align="right" class="style31">
                    Perfil:</td>
                <td align="left">
                    <asp:TextBox ID="txtApellido" runat="server" Width="90%"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Salir" Width="100%" Height="25px" 
                        onclick="Button1_Click" />
                </td>
                <td width="40px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="70px">
                </td>
                <td align="right" class="style31">
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td width="40px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="70px">
                </td>
                <td align="right" class="style31">
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td width="40px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="70px">
                </td>
                <td align="right" class="style31">
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td width="40px">
                </td>
            </tr>
        </table>
        &nbsp;</div>
    </form>
</body>
</html>


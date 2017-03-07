<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Preguntas.aspx.cs" Inherits="AW_PROYECTO.Presentacion.Preguntas" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> PREGUNTAS </title>
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
         .style1
        {
            width: 263px;
        }
         </style>
</head>
<body>
    <form id="form1" runat="server">
     <table width="100%">
            <tr>
                <td width="40px">
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
                <td class="frase" colspan="2">
                    <br />
                    <br />
                    INGRESO DE PREGUNTAS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                </td>
                <td>
                </td>
                <td width="40px">
                </td>
            </tr>
            <tr>
                <td width="40px">
                </td>
                <td align="right" class="style1">
                    Materia:</td>
                <td colspan="2">
    <asp:DropDownList ID="ddlMaterias" runat="server" Height="25px" Width="600px">
    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
                <td width="40px">
                </td>
            </tr>
            <tr>
                <td width="40px">
                </td>
                <td align="right" class="style1">
                    Pregunta:</td>
                <td colspan="2">
    <asp:TextBox ID="txtPregunta" runat="server" Height="25px" Width="600px" 
                        style="margin-bottom: 0px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td width="40px">
                </td>
            </tr>
            <tr>
                <td width="40px">
                </td>
                <td align="left" class="nota" colspan="3">
                    Opciones de Respuesta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td>
                    &nbsp;</td>
                <td width="40px">
                </td>
            </tr>
            <tr>
                <td width="40px">
                </td>
                <td align="right" class="style1">
                    A&nbsp;
    <asp:RadioButton ID="opcion1"  runat="server" GroupName="opcion" />
                </td>
                <td colspan="2">
    <asp:TextBox ID="txtOpcion1" runat="server" Height="25px" Width="600px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td width="40px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="40px">
                </td>
                <td align="right" class="style1">
                    B&nbsp;
    <asp:RadioButton ID="opcion2"  runat="server" GroupName="opcion" />
                </td>
                <td colspan="2">
    <asp:TextBox ID="txtOpcion2" runat="server" Height="25px" Width="600px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td width="40px">
                </td>
            </tr>
            <tr>
                <td width="70px">
                </td>
                <td align="right" class="style1">
                    C&nbsp;
    <asp:RadioButton ID="opcion3"  runat="server" GroupName="opcion" />
                </td>
                <td align="left" width="300px">
    <asp:TextBox ID="txtOpcion3" runat="server" Height="25px" Width="600px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td width="40px">
                    &nbsp;</td>
            </tr>
            
            <tr>
                <td width="70px">
                    &nbsp;</td>
                <td align="right" class="style1">
                    &nbsp;</td>
                <td align="right" width="300px">
    <asp:Button ID="Btn_Registrar" runat="server" onclick="Btn_Registrar_Click" 
        Text="Registrar" Height="25px" Width="250px" />
                </td>
                <td>
                    &nbsp;</td>
                <td width="40px">
                    &nbsp;</td>
            </tr>
            
        </table>
    
    <br />
    <br />
    <br />
    <br />
    </form>
</body>
</html>

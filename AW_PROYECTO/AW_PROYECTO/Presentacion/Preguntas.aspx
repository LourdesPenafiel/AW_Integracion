<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/PaginaPrincipal.Master" AutoEventWireup="true" 
CodeBehind="Preguntas.aspx.cs" Inherits="AW_PROYECTO.Presentacion.Preguntas"%>
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
         </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
    <asp:Panel ID="Panel1" runat="server" Height="366px" >
    <table width="100%" style="height: 324px">
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
                <td colspan="2" width="800px">
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
                <td colspan="2" width="800px">
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
                <td align="left" class="nota" colspan="3" width="400px">
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Opciones 
                    de 
                    Respuesta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
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
                <td colspan="2" width="800px">
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
                <td colspan="2" width="800px">
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
                <td align="left" width="800px">
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
                <td align="justify" width="300px">
                    <br />
    <asp:Button ID="Btn_Registrar" runat="server" onclick="Btn_Registrar_Click" 
        Text="Registrar" Height="25px" Width="250px" />
                </td>
                <td>
                    &nbsp;</td>
                <td width="40px">
                    &nbsp;</td>
            </tr>
            
        </table>
</asp:Panel>
</asp:Content>



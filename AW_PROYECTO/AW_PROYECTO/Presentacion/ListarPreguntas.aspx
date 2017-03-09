<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/PaginaPrincipal.Master" AutoEventWireup="true" 
CodeBehind="ListarPreguntas.aspx.cs" Inherits="AW_PROYECTO.Presentacion.ListarPreguntas"%>
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
         .style1
        {
            width: 239px;
        }
         </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
    <asp:Panel ID="Panel1" runat="server" Height="489px" >
<table width="100%">
                        <tr>
                            <td class="style1">
                                &nbsp;</td>
                            <td class="style33">
                                &nbsp;</td>
                            <td class="frase" colspan="2">
                                RESPONDER 
                                PREGUNTAS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
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
                            <td class="style1">
                            </td>
                            <td align="right" class="nota" colspan="2">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                            <td align="right" class="nota">
                                Calificacion&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                            <td width="40px">
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                            </td>
                            <td align="right" class="nota">&nbsp;</td>
                            <td>
                                Seleccionar materia<asp:DropDownList ID="ddlMaterias" runat="server" Height="25px" 
                                    onselectedindexchanged="ddlMaterias_SelectedIndexChanged" Width="80%">
        </asp:DropDownList>
                            </td>
                            <td class="frase">
    
    <asp:TextBox ID="txtSumaNota" runat="server" Height="50px" Width="50px" Enabled="False"></asp:TextBox>
    <asp:Label ID="Label3" runat="server" Text="/"></asp:Label>
    <asp:TextBox ID="txtNota" runat="server" Height="50px" ReadOnly="True" 
        Width="50px" Enabled="False"></asp:TextBox>
    
                            </td>
                            <td width="40px">
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                            </td>
                            <td align="right" class="nota">
                                &nbsp;</td>
                            <td>
                                Seleccione pregunta<asp:DropDownList ID="ddlPreguntasMaterias" runat="server" AutoPostBack="True" 
                                    DataSourceID="ConsultaPreguntas" DataTextField="pregunta" DataValueField="id" 
                                    Height="25px" ontextchanged="ddlPreguntasMaterias_TextChanged" 
                                    Width="80%" 
                                    onselectedindexchanged="ddlPreguntasMaterias_SelectedIndexChanged">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="ConsultaPreguntas" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:Conn %>" 
                                    SelectCommand="SELECT id, pregunta FROM PREGUNTAS WHERE (id_materia = @id_materia) AND (respondio = 0)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="ddlMaterias" Name="id_materia" 
                                            PropertyName="SelectedValue" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="ddlPreguntasMaterias" ErrorMessage="Indica pregunta"></asp:RequiredFieldValidator>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td width="40px">
                                &nbsp;</td>
                        </tr>
                       
                        <tr>
                            <td class="style1">
                            </td>
                            <td align="right" class="style33">
                                &nbsp;</td>
                            <td class="nota">
                                <br />
                                OPCIONES </td>
                            <td>
                                &nbsp;</td>
                            <td width="40px">
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                            </td>
                            <td align="center" colspan="3" rowspan="2">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
        <asp:RadioButton ID="opcion1" runat="server" Text="A" GroupName="opcion" />
        <asp:TextBox ID="txtOpcion1" runat="server" Height="30px" Width="600px"></asp:TextBox>
        <br />
        <br />
        <asp:RadioButton ID="opcion2" runat="server" Text="B" GroupName="opcion" />
        <asp:TextBox ID="txtOpcion2" runat="server" Height="30px" Width="600px"></asp:TextBox>
                                <br />
        <br />
        <asp:RadioButton ID="opcion3" runat="server" Text="C" GroupName="opcion" />
        <asp:TextBox ID="txtOpcion3" runat="server" Height="30px" Width="600px"></asp:TextBox>
                                <br />
                                <br />
        <br />
    
    </div>
    <asp:Button ID="Btn_Responder" runat="server" onclick="Btn_Responder_Click1" 
        Text="Responder" Height="25px" Width="250px"  />
                                &nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Btn_Inicio" runat="server" CausesValidation="False" 
                                    Height="25px" onclick="Btn_Inicio_Click" 
                                    PostBackUrl="~/Presentacion/ModuloEstudiante.aspx" Text="Regresar" 
                                    Width="250px" />
                            </td>
                            <td width="40px">
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                            </td>
                            <td width="40px">
                                &nbsp;</td>
                        </tr>
                    </table>
    
    </asp:Panel>
</asp:Content>



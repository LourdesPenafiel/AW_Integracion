<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/PaginaPrincipal.Master" AutoEventWireup="true" 
CodeBehind="Materias.aspx.cs" Inherits="AW_PROYECTO.Presentacion.Materias"%>
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
    <asp:Panel ID="Panel1" runat="server" Height="457px" >
    
     <table width="100%">
                        <tr>
                            <td class="style34">
                                &nbsp;</td>
                            <td class="style33">
                                &nbsp;</td>
                            <td class="frase" colspan="2">
                                ADMINISTRACION DE 
                                MATERIAS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
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
                            <td align="right" class="nota">
                                &nbsp;</td>
                            <td align="center" class="nota" width="400px">
                                &nbsp;Información 
                                general&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                            <td align="right" class="nota" width="400px">
                                &nbsp;</td>
                            <td width="40px">
                            </td>
                        </tr>
                        <tr>
                            <td class="style34">
                            </td>
                            <td align="right" class="style33">Nombre:</td>
                            <td width="400px">
                                <asp:TextBox ID="txtNombre" runat="server" 
            Width="250px" ontextchanged="txtnombre_TextChanged" Height="25px"></asp:TextBox>
                            </td>
                            <td width="400px">
    
                                <asp:Button ID="Btn_Registrar" runat="server" Height="25px" 
                                    onclick="Btn_Registrar_Click" Text="Registrar" Width="250px" />
    
                            </td>
                            <td width="40px">
                            </td>
                        </tr>
                        <tr>
                            <td class="style34">
                            </td>
                            <td align="right" class="style33">
                                &nbsp;</td>
                            <td align="right" class="nota" width="400px">
                                <br />
                                Modificar&nbsp; 
                                materia&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                            <td width="400px">
    <asp:Button ID="Btn_Modificar" runat="server" Text="Modificar" 
        onclick="Btn_Modificar_Click" Height="25px" Width="250px" />
                            </td>
                            <td width="40px">
                            </td>
                        </tr>
                        <tr>
                            <td class="style34">
                            </td>
                            <td align="right" class="style33">
                                &nbsp;</td>
                            <td width="400px">
                                <asp:DropDownList ID="ddlMaterias" runat="server" AutoPostBack="True" 
                                    DataSourceID="ConsultarMateria" DataTextField="nombre" DataValueField="id" 
                                    Height="25px" ontextchanged="ddlMaterias_TextChanged" Width="250px">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="ConsultarMateria" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:Conn %>" 
                                    SelectCommand="SELECT * FROM [MATERIAS]"></asp:SqlDataSource>
                            </td>
                            <td width="400px">
                                &nbsp;</td>
                            <td width="40px">
                                &nbsp;</td>
                        </tr>
                       
                        <tr>
                            <td class="style34">
                            </td>
                            <td align="right" class="nota" colspan="3">
                                <br />
                                Materias registradas</td>
                            <td width="40px">
                            </td>
                        </tr>
                        <tr>
                            <td class="style34">
                            </td>
                            <td align="center" colspan="3" rowspan="2">
    <asp:GridView ID="gvrMaterias" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" 
        DataSourceID="ConsultarMateria" HorizontalAlign="Center" Width="346px">
        <Columns>
            <asp:BoundField DataField="nombre" HeaderText="Nombre" 
                SortExpression="nombre" />
        </Columns>
    </asp:GridView>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
    

    </asp:Panel>
</asp:Content>


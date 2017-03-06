<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/PaginaPrincipal.Master" AutoEventWireup="true"
 CodeBehind="Sesion.aspx.cs" Inherits="AulaVirtual.Presentacion.Sesion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;           
        }
        .nota
        {
             font-family: "Berlin Sans FB";
    font-size: 38px;
    color: #222156;
    text-align:center;
    
            }
         .nota1
        {
             font-family: "Berlin Sans FB";
    font-size: 40px;
    color: #D2691E;
    text-align:center;<a href="Sesion.aspx">Sesion.aspx</a>
    
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
    font-size: 20px;
    color: #D2691E;
    text-align:center;
            
            }
            
        .stylefredy{ border-color:#CCCCFF;
            background-color:#CCCCFF;}
        .style29
        {
        }
        .style30
        {
            width: 332px;
        }
        .style31
        {
            width: 555px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table class="style1">
        <tr>
            <td>
                
                    <asp:Panel ID="panelsesion" runat="server" Width="100%">
                        <table width="100%">
                             <tr>
                                <td colspan="2" align="center">
                                    <br />
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="usuario0" runat="server" CssClass="nota">Ingresa tus credenciales</asp:Label>
                                    <br />
                                    <br />
                                 </td>
                            </tr>
                            <tr>
                                <td align="right" class="style31">
                                    Usuario:<br /> </td>
                                <td align="left">
                                    <asp:TextBox ID="txtusuario" runat="server" Height="25px" Width="250px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="r1" runat="server" 
                                        ControlToValidate="txtusuario" Display="Dynamic" ErrorMessage="*" 
                                        ForeColor="Red">*</asp:RequiredFieldValidator>
                                    <br />
                                    <asp:Label ID="lb1" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="style31">
                                    Contraseña:<br /> </td>
                                <td align="left">
                                    <asp:TextBox ID="txtpass" runat="server" Height="25px" Width="250px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="txtpass" Display="Dynamic" 
                                        ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                                    <br />
                                    <asp:Label ID="lb0" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style31">
                                    &nbsp;</td>
                                <td align="left">
                                    <asp:Button ID="Button1" runat="server" Height="30px" 
                                        onclick="Button1_Click" Text="Iniciar" Width="255px" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <br />
                                </td>
                            </tr>
                            <tr>
                            <td colspan="2" class="frase">
                                <br />
                                <br />
                                El triunfo del verdadero hombre surge de las cenizas del error.<br />
                                <br />
                                <br />
                                <asp:Label ID="lb" runat="server"></asp:Label>
                                <asp:Label ID="lbl1" runat="server" Enabled="False"></asp:Label>
                                </td></tr>
                        </table>
                    </asp:Panel>
                    <asp:Panel ID="panelinfo" runat="server" Width="100%">
                    <table width="100%">
                         <tr>
                            <td width="40px">&nbsp;</td>
                            <td class="style30">&nbsp;</td>
                            <td class="frase" colspan="2">Informacion general.</td>
                            <td></td>
                            <td width="40px"></td>                            
                        </tr>
                         <tr>
                            <td width="40px"></td>
                            <td class="style30" align="right" rowspan="10">
                                <asp:Image ID="img1" runat="server" Height="260px" Width="60%" />
                             </td>
                            <td colspan="2" rowspan="5" class="nota">
                                <asp:Label ID="usuario" runat="server" CssClass="nota"></asp:Label>
                                <br />
                             </td>
                            <td>&nbsp;</td>
                            <td width="40px"></td>                            
                        </tr>
                         <tr>
                            <td width="40px"></td>
                            <td>
                                &nbsp;</td>
                            <td width="40px"></td>                            
                        </tr>
                         <tr>
                            <td width="40px"></td>
                            <td>&nbsp;</td>
                            <td width="40px"></td>                            
                        </tr>
                         <tr>
                            <td width="40px"></td>
                            <td>
                                <asp:CheckBox ID="chek" runat="server" AutoPostBack="True" 
                                    oncheckedchanged="chek_CheckedChanged" Text=" Actualizar Informacion" 
                                    Width="80%" />
                             </td>
                            <td width="40px">&nbsp;</td>                            
                        </tr>
                         <tr>
                            <td width="40px"></td>
                            <td>
                                <asp:ImageButton ID="actualizar" runat="server" Height="20px" 
                                    onclick="actualizar_Click" Width="80%" />
                             </td>
                            <td width="40px">Act</td>                            
                        </tr>
                        <tr>
                            <td width="70px"></td>
                            <td align="right" width="170px">Nombres y Apellidos:</td>
                            <td align="left" width="300px">
                                <asp:TextBox ID="txtNombre" runat="server" Width="90%"></asp:TextBox>
                            </td>
                            <td>
                                <asp:ImageButton ID="cerrarSesion" runat="server" Height="20px" 
                                    onclick="cerrarSesion_Click" Width="80%" />
                            </td>
                            <td width="40px">Salir</td>                            
                        </tr>
                        <tr>
                            <td width="70px"></td>
                            <td align="right">Perfil:</td>
                            <td align="left">
                                <asp:TextBox ID="txtApellido" runat="server" Width="90%"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td width="40px">&nbsp;</td>                            
                        </tr>
                        <tr>
                            <td width="70px"></td>
                            <td align="right">&nbsp;</td>
                            <td align="left">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td width="40px">&nbsp;</td>                            
                        </tr>
                        <tr>
                            <td width="70px"></td>
                            <td align="right">
                                &nbsp;</td>
                            <td align="left">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td width="40px">&nbsp;</td>                            
                        </tr>
                        <tr>
                            <td width="70px"></td>
                            <td align="right">&nbsp;</td>
                            <td align="left">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td width="40px"></td>                            
                        </tr>
                        <tr>
                            <td width="70px"></td>
                            <td align="right" class="style30">
                                <asp:FileUpload ID="FileUpload1" runat="server" Width="200px" />
                            </td>
                            <td align="right">&nbsp;</td>
                            <td align="left">
                                &nbsp;</td>
                            <td></td>
                            <td width="40px"></td>                            
                        </tr>
                        <tr>
                            <td width="70px"></td>
                            <td align="right" class="style30">
                                &nbsp;</td>
                            <td align="right">
                                &nbsp;</td>
                            <td align="left">
                                &nbsp;</td>
                            <td></td>
                            <td width="40px"></td>                            
                        </tr>
                        <tr>
                            <td width="40px"></td>
                            <td align="right" class="style30">
                                &nbsp;</td>
                            <td align="right">
                                &nbsp;</td>
                            <td align="left">
                                &nbsp;</td>
                            <td></td>
                            <td width="40px"></td>                            
                        </tr>
                        <tr>
                            <td width="40px"></td>
                            <td class="style30"></td>
                            <td></td>
                            <td>&nbsp;</td>
                            <td>
                                <asp:TextBox ID="txtidEmpleado" runat="server" Width="35px" Visible="False"></asp:TextBox>
                                <asp:TextBox ID="txtuser" runat="server" Width="44px" Visible="False"></asp:TextBox>
                                <asp:TextBox ID="txtpas" runat="server" Width="42px" Visible="False"></asp:TextBox>
                            </td>
                            <td width="40px"></td>                            
                        </tr>
                         <tr>
                            <td width="40px"></td>
                            <td class="style30"></td>
                            <td>&nbsp;</td>
                             <td>
                                 Cuestionarios realizados</td>
                            <td></td>
                            <td width="40px"></td>                            
                        </tr>
                         <tr>
                            <td width="40px"></td>
                            <td class="style30"></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td width="40px"></td>                            
                        </tr>
                        <tr>
                            <td width="40px"></td>
                            <td class="style29" colspan="4">
                                <asp:GridView ID="GridView1" runat="server" Height="90px" Width="100%" 
                                    AutoGenerateColumns="False" DataKeyNames="id_Actividad" 
                                    DataSourceID="SqlDataSource3">
                                    <Columns>
                                        <asp:BoundField DataField="id_Actividad" HeaderText="Identificador" 
                                            InsertVisible="False" ReadOnly="True" SortExpression="id_Actividad" />
                                        <asp:BoundField DataField="descripcion" HeaderText="Descripcion" 
                                            SortExpression="descripcion" />
                                        <asp:BoundField DataField="nombre" HeaderText="Nombre" 
                                            SortExpression="nombre" />
                                        <asp:BoundField DataField="fechaRealizacion" HeaderText="Fecha Realizacion" 
                                            SortExpression="fechaRealizacion" />
                                        <asp:BoundField DataField="duracion" HeaderText="Duracion" 
                                            SortExpression="duracion" />
                                        <asp:BoundField DataField="calificacion" HeaderText="Calificacion" 
                                            SortExpression="calificacion" />
                                        <asp:BoundField DataField="nombre1" HeaderText="Dificultad" 
                                            SortExpression="nombre1" />
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:Conn %>" SelectCommand="sp_actividad" 
                                    SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="txtidEmpleado" Name="id_Empleado" 
                                            PropertyName="Text" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:Conn %>" SelectCommand="sp_actividad" 
                                    SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="txtidEmpleado" Name="id_Empleado" 
                                            PropertyName="Text" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                            </td>
                            <td width="40px"></td>                            
                        </tr>
                         <tr>
                            <td width="40px"></td>
                            <td class="style30"></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td width="40px"></td>                            
                        </tr>
                         <tr>
                            <td width="40px"></td>
                            <td class="style30"></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td width="40px"></td>                            
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
    
</asp:Content>

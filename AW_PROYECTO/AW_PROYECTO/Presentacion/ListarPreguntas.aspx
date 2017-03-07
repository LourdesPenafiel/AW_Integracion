<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListarPreguntas.aspx.cs" Inherits="AW_PROYECTO.Presentacion.ListarPreguntas" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
     <title> CUESTIONARIO </title>
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
            width: 142px;
        }
        .style35
        {
            font-family: "Berlin Sans FB";
            font-size: 25px;
            color: #D2691E;
            text-align: center;
        }
        </style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
    <form id="form1" runat="server">
    <div class="row">
                <div class="col-lg-12">
                    <nav class="navbar navbar-default">
                        <div class="container-fluid">
                            <!-- Brand and toggle get grouped for better mobile display -->
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                                <a class="navbar-brand" href="">INTEGRACION ASI</a>
                            </div>
                            <!-- Collect the nav links, forms, and other content for toggling -->
                            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                                <ul class="nav navbar-nav">
                                    <li class="active"><a href="/Presentacion/ModuloEstudiante.aspx"><asp:Button class="btn btn-default" ID="Btn_Inicio" runat="server" Text="Inicio" PostBackUrl="~/Presentacion/ModuloEstudiante.aspx"  CausesValidation="False" /></a></li>
                                </ul>
                            </div><!-- /.navbar-collapse -->
                        </div><!-- /.container-fluid -->
                    </nav>
                </div>
            </div>
    <table width="100%">
                        <tr>
                            <td class="style34">
                                &nbsp;</td>
                            <td class="style33">
                                &nbsp;</td>
                            <td class="style35">
                                RESPONDER PREGUNTAS</td>
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
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                            <td align="right" class="nota">
                                Calificacion&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                            <td width="40px">
                            </td>
                        </tr>
                        <tr>
                            <td class="style34">
                            </td>
                            <td align="right" class="nota">Seleccionar materia</td>
                            <td>
        <asp:DropDownList ID="ddlMaterias" runat="server" Height="25px" 
                                    onselectedindexchanged="ddlMaterias_SelectedIndexChanged" Width="250px">
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
                            <td class="style34">
                            </td>
                            <td align="right" class="nota">
                                Seleccione pregunta</td>
                            <td>
                                <asp:DropDownList ID="ddlPreguntasMaterias" runat="server" AutoPostBack="True" 
                                    DataSourceID="ConsultaPreguntas" DataTextField="pregunta" DataValueField="id" 
                                    Height="25px" ontextchanged="ddlPreguntasMaterias_TextChanged" Width="250px">
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
                            <td class="style34">
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
                            <td class="style34">
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
    
    
    <br />
    </form>
</body>
</html>


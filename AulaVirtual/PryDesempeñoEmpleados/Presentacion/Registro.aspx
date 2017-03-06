<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/PaginaPrincipal.Master" 
AutoEventWireup="true" 
CodeBehind="Registro.aspx.cs" Inherits="AulaVirtual.Presentacion.Registro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        
        .style24
        {
            
            font-family: Berlin Sans FB;
            font-size: 16px;
            border-color :#B0C4DE;
            background-color:  #F5F5F5;
            text-align: right;
            height:20px;
        }
         .style25
        {
            width: 78%;
            font-family: Berlin Sans FB;
            font-size: 16px;
            border-color:  #B0C4DE;
             background-color:  #F5F5F5;
            text-align: left;
            height: 20px;
        }
        .titulo
        {
        background-color:#F5F5F5 ;
            font-family: Berlin Sans FB;
            font-size: 20px;
            color: #2F4F4F;
            text-align: center;
        }
        .style26
        {
            font-family: Berlin Sans FB;
            font-size: 16px;
            border-color : #B0C4DE;
            background-color: #F5F5F5;
            text-align: right;
            height: 34px;
        }
        .style27
        {
            width: 78%;
            font-family: Berlin Sans FB;
            font-size: 16px;
            border-color: #B0C4DE;
            background-color: #F5F5F5;
            text-align: left;
            height: 34px;
        }
        </style>
     <link type="text/css" rel="stylesheet"
    href="http://jquery-ui.googlecode.com/svn/tags/1.7/themes/redmond/jquery-ui.css" />   
  <script type="text/javascript"   
    src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
  <script type="text/javascript"
    src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.7.2/jquery-ui.min.js"></script>

  <script type="text/javascript">
      $(document).ready(function () {
          $('[id$=txtfc]').datepicker(
            {
                dateFormat: 'dd/mm/yy',
                minDate: new Date('1950-01-01'),
                maxDate: new Date(this),
                changeMonth: true,
                changeYear: true,
                yearRange: '-90:0',
                numberOfMonths: 1,
                dayNamesMin: ['Do', 'Lu', 'Ma', 'Mi', 'Ju', 'Vi', 'Sa'],
                monthNames: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo',
                    'Junio', 'Julio', 'Agosto', 'Septiembre',
                    'Octubre', 'Noviembre', 'Diciembre'],
                monthNamesShort: ['Ene', 'Feb', 'Mar', 'Abr',
                    'May', 'Jun', 'Jul', 'Ago',
                    'Sep', 'Oct', 'Nov', 'Dic'],
                theme: 'dark-theme'

            });
          $(".ui-datepicker").css('font-size', 12);
          $(".ui-datepicker").css('background-color:', 'red');
      });

  </script> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table width="60%" border-color="#CCCCCC" align="center">
        <tr>
        <td colspan="2" class="titulo">Informacion Personal</td>
        </tr>
        <tr>
                                                            <td align="right" 
                class="style24" __designer:mapid="9be">
                                                                <br />
                                                                Foto de Perfil:<br />
                                                                <br />
                                                            </td>
        <td align="left" bgcolor="#CCCCCC" class="style25">
                                                                <br />
                                                                <asp:FileUpload ID="fluFotoEmpleado" runat="server" Width="82%" />
                                                                <asp:RequiredFieldValidator ID="v1" runat="server" 
                                                                    ControlToValidate="fluFotoEmpleado" Display="Dynamic" ErrorMessage="*" 
                                                                    ForeColor="Red"></asp:RequiredFieldValidator>
                                                                <br />
                                                                <br />
                                                            </td>
        </tr>
        <tr>
                                                            <td align="right" 
                class="style24" __designer:mapid="9c2" bgcolor="#CCCCCC">
                                                                Nombres y apellidos:<br />
                                                                <br />
                                                            </td>
        <td align="left" bgcolor="#CCCCCC" class="style25">
                                                                <asp:TextBox ID="txtnombre" 
                runat="server" Width="65%" Height="25px"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="v2" runat="server" 
                                                                    ControlToValidate="txtnombre" Display="Dynamic" ErrorMessage="*" 
                                                                    ForeColor="Red"></asp:RequiredFieldValidator>
                                                                <br />
                                                                <br />
                                                            </td>
        </tr>
 
        <tr>
                                                <td align="right" class="style24" 
                __designer:mapid="9e3" bgcolor="#CCCCCC">
                                                    Rol:<br />
                                                    <br />
                                                </td>
        <td align="left" bgcolor="#CCCCCC" class="style25">
                                                    
            <asp:DropDownList ID="dRol" runat="server" Height="25px" Width="65%">
                <asp:ListItem Selected="True">Estudiante</asp:ListItem>
                <asp:ListItem>Profesor</asp:ListItem>
            </asp:DropDownList>
                                                    
            <br />
                                                    
        </tr>
        <tr>
        <td colspan="2" class="titulo">Acceso al sistema.</td>
        </tr>
        <tr>
                                                <td align="right" class="style26" 
                __designer:mapid="9f0" bgcolor="#CCCCCC" width="45%">
                                                    Usuario:<br />
                                                </td>
        <td align="left" bgcolor="#CCCCCC" class="style27">
                                                    <br />
                                                    <asp:TextBox ID="txtuser" 
                runat="server" Width="65%" Height="25px"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="v7" runat="server" ControlToValidate="txtuser" 
                                                        Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                                    <br />
                                                    <br />
                                                </td>
        </tr><tr>
                                                <td align="right" class="style24" 
                __designer:mapid="9f4" bgcolor="#CCCCCC" width="45%">
                                                    Contraseña:<br />
                                                    <br />
                                                </td>
        <td align="left" bgcolor="#CCCCCC" class="style25">
                                                    <asp:TextBox ID="txtpass" 
                runat="server" Width="65%" Height="25px"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="v8" runat="server" ControlToValidate="txtpass" 
                                                        Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                                    <br />
                                                    <br />
                                                </td>
        </tr><tr>
        <td bgcolor="#CCCCCC" class="style24" width="45%">&nbsp;</td>
        <td align="left" bgcolor="#CCCCCC" class="style25">
                                                <asp:Button ID="Button1" runat="server" Text="Guardar" 
                                                    onclick="Button1_Click" Height="25px" Width="65%" />
                                                <br />
                                                <asp:Label ID="Label" runat="server"></asp:Label>
                                                <br />
                                                </td>
        </tr>
    </table>
            
</asp:Content>

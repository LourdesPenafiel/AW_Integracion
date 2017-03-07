<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListarPreguntas.aspx.cs" Inherits="AW_PROYECTO.Presentacion.ListarPreguntas" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        LISTAR PREGUNTAS<br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Seleccionar Materia:"></asp:Label>
        <asp:DropDownList ID="ddlMaterias" runat="server">
        </asp:DropDownList>
        <br />
        <br />
        Preguntas:<asp:DropDownList 
            ID="ddlPreguntasMaterias" runat="server" DataSourceID="ConsultaPreguntas" 
            DataTextField="pregunta" DataValueField="id" 
            ontextchanged="ddlPreguntasMaterias_TextChanged">
        </asp:DropDownList>
        <asp:SqlDataSource ID="ConsultaPreguntas" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Conn %>" 
            SelectCommand="SELECT [id], [pregunta] FROM [PREGUNTAS] WHERE ([id_materia] = @id_materia)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlMaterias" Name="id_materia" 
                    PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        Opciones:<br />
        <br />
        <asp:RadioButton ID="opcion1" runat="server" Text="A" GroupName="opcion" />
        <asp:TextBox ID="txtOpcion1" runat="server" Height="51px" Width="678px"></asp:TextBox>
        <br />
        <br />
        <asp:RadioButton ID="opcion2" runat="server" Text="B" GroupName="opcion" />
        <asp:TextBox ID="txtOpcion2" runat="server" Height="45px" Width="668px"></asp:TextBox>
        <br />
        <asp:RadioButton ID="opcion3" runat="server" Text="C" GroupName="opcion" />
        <asp:TextBox ID="txtOpcion3" runat="server" Height="61px" Width="670px"></asp:TextBox>
        <br />
    
    </div>
    <asp:Button ID="Btn_Responder" runat="server" onclick="Btn_Responder_Click1" 
        Text="Responder" />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Nota Total"></asp:Label>
    <asp:TextBox ID="txtSumaNota" runat="server" Height="26px" Width="33px"></asp:TextBox>
    <asp:Label ID="Label3" runat="server" Text="/"></asp:Label>
    <asp:TextBox ID="txtNota" runat="server" Height="22px" ReadOnly="True" 
        Width="43px"></asp:TextBox>
    <br />
    <br />
    <br />
    </form>
</body>
</html>

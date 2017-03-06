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
        <asp:DropDownList ID="ddlMaterias" runat="server" 
            onselectedindexchanged="ddlMaterias_SelectedIndexChanged" 
            DataSourceID="Materias" DataTextField="nombre" DataValueField="id" 
            AutoPostBack="True">
        </asp:DropDownList>
        <asp:SqlDataSource ID="Materias" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Conn %>" 
            SelectCommand="SELECT * FROM [MATERIAS]"></asp:SqlDataSource>
        <br />
        <br />
        Preguntas:<asp:DropDownList 
            ID="ddlPreguntasMaterias" runat="server" DataSourceID="ConsultaPreguntas" 
            DataTextField="pregunta" DataValueField="id" 
            onselectedindexchanged="ddlPreguntasMaterias_SelectedIndexChanged" 
            AutoPostBack="True">
        </asp:DropDownList>
        <asp:SqlDataSource ID="ConsultaPreguntas" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Conn %>" 
            onselecting="ConsultaPreguntas_Selecting" 
            SelectCommand="SELECT [id], [pregunta] FROM [PREGUNTAS] WHERE ([id_materia] = @id_materia)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlMaterias" Name="id_materia" 
                    PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
        <br />
        <br />
        Opciones:<asp:DropDownList ID="ddlRespuestas" runat="server" 
            DataSourceID="Respuestas" DataTextField="opcion" DataValueField="id_pregunta">
        </asp:DropDownList>
        <asp:SqlDataSource ID="Respuestas" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Conn %>" 
            
            SelectCommand="SELECT * FROM [OPCIONES_RESPUESTA] WHERE ([id_pregunta] = @id_pregunta)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlPreguntasMaterias" Name="id_pregunta" 
                    PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>

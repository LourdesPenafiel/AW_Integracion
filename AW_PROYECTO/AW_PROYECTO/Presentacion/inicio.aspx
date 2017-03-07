<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="AW_PROYECTO.Presentacion.inicio" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> INICIO </title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
    <form id="form1" runat="server">
            <div class="row">
                <div class="col-lg-offset-4 col-lg-4">
                <div class="form-group">
                            <label for="exampleInputEmail1">Usuario</label>
                           <asp:TextBox class="form-control" placeholder="Usuario" ID="txtUsuario" runat="server" Width="291px"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Contraseña</label>
                            <asp:TextBox class="form-control" placeholder="Contraseña" ID="txtContrasena" runat="server" Width="291px"></asp:TextBox>
                            
                        </div>
                        
                    </div>
                </div>
                <div class="row">
                <div class="col-lg-offset-4 col-lg-4">
                    <asp:Button ID="Btn_Ingresar" runat="server" Text="Ingresar" 
                        onclick="Btn_Ingresar_Click" />   
                </div>
                </div>
    </form>
    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>    
    
    
</body>
</html>

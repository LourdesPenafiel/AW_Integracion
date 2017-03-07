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
                                <a class="navbar-brand" href="#">INTEGRACION ASI</a>
                            </div>
                            <!-- Collect the nav links, forms, and other content for toggling -->
                            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                                <ul class="nav navbar-nav">
                                    <li class="active"><a href="/Presentacion/inicio.aspx"><asp:Button class="btn btn-default" ID="Btn_Inicio" runat="server" Text="Inicio" /></a></li>
                                </ul>
                            </div><!-- /.navbar-collapse -->
                        </div><!-- /.container-fluid -->
                    </nav>
                </div>
            </div>
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

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModuloAdministrador.aspx.cs" Inherits="AW_PROYECTO.Presentacion.ModuloAdministrador" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> ADMINISTRADOR </title>
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
                                <a class="navbar-brand" href="#">Brand</a>
                            </div>
                            <!-- Collect the nav links, forms, and other content for toggling -->
                            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                                <ul class="nav navbar-nav">
                                    <li class="active"><a href="#"><asp:Button class="btn btn-default" ID="Btn_Inicio" runat="server" Text="INICIO" /></a></li>
                                    <li><a href="#"><asp:Button class="btn btn-default" ID="Administrador" runat="server" Text="Administrador" /></li>
                                </ul>
                            </div><!-- /.navbar-collapse -->
                        </div><!-- /.container-fluid -->
                    </nav>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <center><h1>MODULO ADMINISTRADOR</h1></center>
                </div>
            </div>

            <br />
            <br />

            <div class="row">
                <div class="col-lg-offset-5 col-lg-4">
                    <asp:Button class="btn btn-default" ID="Btn_Usuarios" runat="server" 
                        Text="USUARIOS" onclick="Btn_Usuarios_Click" />
                </div>
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-lg-offset-5 col-lg-4">
                    <asp:Button class="btn btn-default" ID="Btn_Materias" runat="server" 
                        Text="MATERIAS" onclick="Btn_Materias_Click" />
                </div>
            </div>
    </form>

     <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using AW_PROYECTO.Comun;
using AW_PROYECTO.Datos;
using AW_PROYECTO.Negocio;

namespace AW_PROYECTO.Presentacion
{
    public partial class inicio : System.Web.UI.Page
    {
        Cm_ClsUsuarios usuarios = new Cm_ClsUsuarios();

        protected void Page_Load(object sender, EventArgs e)
        {
            Administrador.Visible = false;

            if (!IsPostBack)
            {
                cargarDrownList();
                ddModoUsuario.AutoPostBack = true;
            }
            
           
        }

        private void cargarDrownList() {

            ddModoUsuario.Items.Insert(0, new ListItem("ESTUDIANTE", "3"));
            ddModoUsuario.Items.Insert(0, new ListItem("PROFESOR", "2"));
            ddModoUsuario.Items.Insert(0, new ListItem("ADMINISTRADOR", "1"));
            ddModoUsuario.Items.Insert(0, new ListItem("--SELECT--", "0"));
        }

        protected void Btn_Ingresar_Click(object sender, EventArgs e)
        {
  //          Ng_ClsUsuarios ng_usuarios = new Ng_ClsUsuarios();
//            usuarios = ng_usuarios.loginUser(txtUsuario.Text, txtContrasena.Text);

            if (ddModoUsuario.SelectedIndex == 1 && txtUsuario.Text.Equals("Joss") && txtContrasena.Text.Equals("123"))
            {
                Administrador.Visible = true;
                Response.Redirect("/Presentacion/ModuloAdministrador.aspx");

            }

            if (ddModoUsuario.SelectedIndex == 2)
            {
                Response.Redirect("/Presentacion/ModuloProfesor.aspx");

            }
        }
  
    }
}
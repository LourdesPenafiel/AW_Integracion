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
        Ng_ClsUsuarios ngUsuario = new Ng_ClsUsuarios();
        static Cm_ClsUsuarios cmUsuario = new Cm_ClsUsuarios();
        static Cm_ClsUsuarios cmUsuarioSesion = new Cm_ClsUsuarios();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            cmUsuarioSesion = (Cm_ClsUsuarios)(Session["Usuario"]);
            if (!IsPostBack)
            {
                if (cmUsuarioSesion != null)
                {
                    if (cmUsuarioSesion.Tipo_usuario.Equals("Administrador"))
                    {
                        Response.Redirect("/Presentacion/ModuloAdministrador.aspx");
                    }
                    else if (cmUsuarioSesion.Tipo_usuario.Equals("Profesor"))
                    {
                        Response.Redirect("/Presentacion/ModuloProfesor.aspx");
                    }
                }
            }  
        }
      
        protected void Btn_Ingresar_Click(object sender, EventArgs e)
        {
            cmUsuario = ngUsuario.loginUser(this.txtUsuario.Text, this.txtContrasena.Text);
            if (cmUsuario.Tipo_usuario.Equals("Administrador"))
          {
              Session.Add("Usuario", cmUsuario);
              Response.Redirect("/Presentacion/ModuloAdministrador.aspx");
          }
            else if (cmUsuario.Tipo_usuario.Equals("Profesor"))
          {
              Session.Add("Usuario", cmUsuario);
              Response.Redirect("/Presentacion/ModuloProfesor.aspx");
          }
            else if (cmUsuario.Tipo_usuario.Equals("Estudiante"))
            {
                Session.Add("Usuario", cmUsuario);
                Response.Redirect("/Presentacion/ModuloEstudiante.aspx");
            }
            
        }
  
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using AW_PROYECTO.Comun;

namespace AW_PROYECTO.Presentacion
{
    public partial class ModuloAdministrador : System.Web.UI.Page
    {
        static Cm_ClsUsuarios logUsuario = new Cm_ClsUsuarios();

        protected void Page_Load(object sender, EventArgs e)
        {             
            logUsuario = (Cm_ClsUsuarios)(Session["Usuario"]);
            if (!IsPostBack)
            {
                if (logUsuario != null)
                {
                    this.txtNombre.Text = logUsuario.Nombre + " " + logUsuario.Apellido;
                    this.txtApellido.Text = logUsuario.Tipo_usuario;
                    this.img1.ImageUrl = "http://localhost:50500/Presentacion/imagen.aspx?ID=" + Convert.ToString(logUsuario.Id);
                }
                else {
                    Salir();
                }
            }
           
        }

        protected void Btn_Usuarios_Click(object sender, EventArgs e)
        {
             Response.Redirect("/Presentacion/Usuarios.aspx");

        }

        protected void Btn_Materias_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Presentacion/Materias.aspx");
        }

        
        private void Salir()
        {
            Session.Abandon();
            Response.Redirect("/Presentacion/Inicio.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Salir();
        }

        
    }
}
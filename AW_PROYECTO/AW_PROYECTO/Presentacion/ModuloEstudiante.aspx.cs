using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using AW_PROYECTO.Comun;

namespace AW_PROYECTO.Presentacion
{
    public partial class ModuloEstudiante : System.Web.UI.Page
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
                    this.img1.ImageUrl = "http://localhost:51188/Presentacion/imagen.aspx?ID=" + Convert.ToString(logUsuario.Id);
                }
                else
                {
                    Salir();
                }
            }
        }


        private void Salir()
        {
            Session.Abandon();
            Response.Redirect("/Presentacion/Inicio.aspx");
        }

        protected void Btn_Usuarios_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Presentacion/ListarPreguntas.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Salir();
        }
    }
}
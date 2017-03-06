using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AW_PROYECTO.Presentacion
{
    public partial class ModuloAdministrador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_Usuarios_Click(object sender, EventArgs e)
        {
             Response.Redirect("/Presentacion/Usuarios.aspx");

        }

        protected void Btn_Materias_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Presentacion/Materias.aspx");
        }
    }
}
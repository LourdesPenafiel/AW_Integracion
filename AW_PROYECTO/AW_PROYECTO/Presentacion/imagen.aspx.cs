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
    public partial class imagen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Ng_ClsUsuarios ng_empleado = new Ng_ClsUsuarios();
            Cm_ClsUsuarios cm_empleado = ng_empleado.consultarUsuariosID(Convert.ToInt16(Request.QueryString["Id"]));
            if (cm_empleado.Foto != null)
            {

                Response.ContentType = "image/jpeg";
                Response.Expires = 0;
                Response.Buffer = true;
                Response.Clear();
                Response.BinaryWrite(cm_empleado.Foto);
                string Foto = Convert.ToBase64String(cm_empleado.Foto);
                Image1.ImageUrl = "image/jpeg" + Foto;
                Response.End();
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AulaVirtual.Presentacion;
using AulaVirtual.Comun;
using AulaVirtual.Negocio;

namespace AulaVirtual.Presentacion
{
    public partial class imagen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Ng_ClsUsuario ng_empleado = new Ng_ClsUsuario();
            Cm_ClsUsuario cm_empleado = ng_empleado.mostarUsuarioID(Convert.ToInt16(Request.QueryString["Id"]));
            if (cm_empleado.Fotografia != null)
            {
               
                Response.ContentType = "image/jpeg";
                Response.Expires = 0;
                Response.Buffer = true;
                Response.Clear();
                Response.BinaryWrite(cm_empleado.Fotografia);
                string Foto = Convert.ToBase64String(cm_empleado.Fotografia);
                Image1.ImageUrl = "image/jpeg" + Foto;
                Response.End();
            }

        }
    }
}
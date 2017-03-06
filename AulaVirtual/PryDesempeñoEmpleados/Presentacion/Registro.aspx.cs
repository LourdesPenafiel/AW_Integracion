using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using AulaVirtual.Comun;
using AulaVirtual.Negocio;

namespace AulaVirtual.Presentacion
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Registrar_Click(object sender, ImageClickEventArgs e)
        {
            
        }
            public void Clear() {
                txtnombre.Text=null;
                txtuser.Text=null;
                txtpass.Text=null;
            }
            #region Validar
            private bool Validar()
            {
                if (!RNombre())
                {
                    string script = @"<script type='text/javascript'>
                alert('Datos Incorrectos, Ingrese Nombres!!');
                </script>";
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "PryEmpleados", script, false);
                    return false;
                }
                if (!RUser())
                {
                    string script = @"<script type='text/javascript'>
                alert('Datos Incorrectos, Asigne Usuario!!');
                </script>";
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "PryEmpleados", script, false);

                    return false;
                }
                if (!RPass())
                {
                    string script = @"<script type='text/javascript'>
                alert('Datos Incorrectos, Asigne Contraseña!!');
                </script>";
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "PryEmpleados", script, false);

                    return false;
                }
                return true;
            }

            private bool RNombre()
            {
                return !string.IsNullOrEmpty(txtnombre.Text);
            }
            
            private bool RUser()
            {
                return !string.IsNullOrEmpty(txtuser.Text);
            }
            private bool RPass()
            {
                return !string.IsNullOrEmpty(txtpass.Text);
            }
            #endregion

        protected void dlinstruccion_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void txttelefono_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtapellido_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Ng_ClsUsuario ngUsuario = new Ng_ClsUsuario();

            if ((fluFotoEmpleado.PostedFile != null) && (fluFotoEmpleado.PostedFile.ContentLength > 0 && Validar()))
            {
                HttpPostedFile archivoImagen = fluFotoEmpleado.PostedFile;
                Byte[] byteImage = new Byte[fluFotoEmpleado.PostedFile.ContentLength];
                archivoImagen.InputStream.Read(byteImage, 0, fluFotoEmpleado.PostedFile.ContentLength);

                if (ngUsuario.crearUsuario(txtnombre.Text, dRol.SelectedValue, byteImage, txtuser.Text, txtpass.Text) > 0)
                {
                    Clear();
                    string script = @"<script type='text/javascript'>
                    alert('Registro Guardado!!');
                    </script>";
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "Integracion ASI", script, false);
                }
            }
        }
        }

    }
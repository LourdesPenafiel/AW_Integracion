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
    public partial class registroUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_Registrar_Click(object sender, EventArgs e)
        {
            
            Ng_ClsUsuarios ng_usuarios = new Ng_ClsUsuarios();

            if ((fluFotoEmpleado.PostedFile != null) && (fluFotoEmpleado.PostedFile.ContentLength > 0 ))
            {
                HttpPostedFile archivoImagen = fluFotoEmpleado.PostedFile;
                Byte[] byteImage = new Byte[fluFotoEmpleado.PostedFile.ContentLength];
                archivoImagen.InputStream.Read(byteImage, 0, fluFotoEmpleado.PostedFile.ContentLength);
                Cm_ClsUsuarios nuevoUsuario = new Cm_ClsUsuarios(txtnombre.Text,txtapellido.Text, byteImage, txtUsuario.Text, txtContrasena.Text,  dRol.SelectedValue);
                if ((ng_usuarios.crearUsuarios(nuevoUsuario) > 0))
                {
                    limpiarCampos();

                    string script = @"<script type='text/javascript'>
                    alert('Registro Guardado!!');
                    </script>";
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "Integracion ASI", script, false);
                    Response.Redirect("/Presentacion/Usuarios.aspx");
                }
                else
                {
                    string script = @"<script type='text/javascript'>
                    alert('Usuario existente elige otro!!');
                    </script>";
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "Integracion ASI", script, false);
                
                }
            }
        }


      

        protected void Btn_Modificar_Click(object sender, EventArgs e)
        {
           
            Ng_ClsUsuarios ng_usuarios = new Ng_ClsUsuarios();
            
            if ((fluFotoEmpleado.PostedFile != null) && (fluFotoEmpleado.PostedFile.ContentLength > 0 ))
            {
                HttpPostedFile archivoImagen = fluFotoEmpleado.PostedFile;
                Byte[] byteImage = new Byte[fluFotoEmpleado.PostedFile.ContentLength];
                archivoImagen.InputStream.Read(byteImage, 0, fluFotoEmpleado.PostedFile.ContentLength);
                Cm_ClsUsuarios modificarUsuarios = new Cm_ClsUsuarios(Convert.ToInt16(ddlUsuarios.SelectedValue),txtnombre.Text,txtapellido.Text, byteImage, txtUsuario.Text, txtContrasena.Text,  dRol.SelectedValue);
                if ((ng_usuarios.modificarUsuarios(modificarUsuarios) > 0))
            {
                limpiarCampos();
            
                    string script = @"<script type='text/javascript'>
                    alert('Registro Modificado!!');
                    </script>";
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "Integracion ASI", script, false);
                    Response.Redirect("/Presentacion/Usuarios.aspx");
                }
                }

        }
                
                

        


        private void limpiarCampos() {

            txtUsuario.Text = "";
            txtContrasena.Text = "";
            txtnombre.Text = "";
            txtapellido.Text = "";
        
        }

        public void mostrar(Cm_ClsUsuarios usuarios)
        {

            txtnombre.Text = usuarios.Nombre;
            txtapellido.Text = usuarios.Apellido;
            txtUsuario.Text = usuarios.Usuario;
            txtContrasena.Text = usuarios.Contrasena;   
        }


        protected void ddlUsuarios_SelectedIndexChanged(object sender, EventArgs e)
        {
            Ng_ClsUsuarios ng_usuarios = new Ng_ClsUsuarios();

            int indice = Convert.ToInt16(ddlUsuarios.SelectedValue);
            Cm_ClsUsuarios seleccionarUsuario = ng_usuarios.consultarUsuariosID(indice);
            mostrar(seleccionarUsuario);
        }

        protected void txtnombre_TextChanged(object sender, EventArgs e)
        {

        }



    }
}
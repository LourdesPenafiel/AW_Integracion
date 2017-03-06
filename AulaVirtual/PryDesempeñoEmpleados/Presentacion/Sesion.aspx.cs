using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using AulaVirtual.Negocio;
using AulaVirtual.Datos;
using AulaVirtual.Comun;

namespace AulaVirtual.Presentacion
{
    public partial class Sesion : System.Web.UI.Page
    {
        Ng_ClsUsuario ngUsuario = new Ng_ClsUsuario();
        static Cm_ClsUsuario cmUsuario = new Cm_ClsUsuario();
        static Cm_ClsUsuario cmUsuarioSesion = new Cm_ClsUsuario();

        string script = "";
        static bool salirSesion;

        protected void Page_Load(object sender, EventArgs e)
        {
            actualizar.Visible = false;
            panelinfo.Visible = false;
            if (!salirSesion)
                cmUsuarioSesion = (Cm_ClsUsuario)(Session["Empleado"]);

            if (!IsPostBack)
            {
                ocultarDdls(false);
                salirSesion = false;

                if (cmUsuarioSesion != null)
                {
                    this.panelinfo.Visible = true;
                    panelsesion.Visible = false;
                    mostrarDatos(cmUsuarioSesion);
                    if (cmUsuarioSesion.Rol.Equals("Profesor"))
                    {
                        lbl1.Text = "Bienvenido Profesor";
                    }
                    else
                    {
                        lbl1.Text = "Bienvenido Otro";
                    }
                }
            }
        }

        private void mostrarDatos(Cm_ClsUsuario cmUsuario)
        {
            this.txtNombre.Text = cmUsuario.Nombre;
            this.txtApellido.Text = cmUsuario.Rol;
            this.usuario.Text=cmUsuario.Rol+" "+cmUsuario.Nombre;
            img1.ImageUrl = "http://localhost:51731/Presentacion/imagen.aspx?ID=" + Convert.ToString(cmUsuario.IdUsuario);           
        }

      
        protected void btnentrar_Click(object sender, ImageClickEventArgs e)
        {
            
           


        }
        public void mostrarMensaje(string mensaje)
        {
            script = @"<script type='text/javascript'> alert('" + mensaje + "'); </script>";

            ScriptManager.RegisterStartupScript(this, typeof(Page), "PryArquiWeb15", script, false);
        }
        #region BLOQUEAR
        protected void chek_CheckedChanged(object sender, EventArgs e)
        {
            ValidadChek();
        }
        public void ValidadChek() {
            if (this.chek.Checked == true)
            {
                actualizar.Visible = true;
                FileUpload1.Visible = true;
                this.panelinfo.Visible = true;
            }
            else
            {
                FileUpload1.Visible = false;
                chek.Visible = true;
                actualizar.Visible = false;
                this.panelinfo.Visible = true;
            }
        }
        
        public void ocultarDdls(bool estado)
        {
            txtNombre.Enabled = estado;
            txtApellido.Enabled = estado;
            FileUpload1.Visible = estado;
            actualizar.Visible = estado;
            chek.Visible = true;
        }
        private void Ver()
        {
            this.chek.Checked = false;
            panelinfo.Visible = true;
        }
#endregion
        protected void actualizar_Click(object sender, ImageClickEventArgs e)
        {
            if ((FileUpload1.PostedFile != null) && (FileUpload1.PostedFile.ContentLength > 0))
            {
                HttpPostedFile archivoImagen = FileUpload1.PostedFile;
                Byte[] byteImage = new Byte[FileUpload1.PostedFile.ContentLength];
                archivoImagen.InputStream.Read(byteImage, 0, FileUpload1.PostedFile.ContentLength);
               /* if (ngUsuario.ActualizarEmpleado(Convert.ToInt16(txtidEmpleado.Text),this.txtNombre.Text,txtApellido.Text,Convert.ToDateTime(txtFechaNaci.Text) ,
                    ddlInstruccion.SelectedItem.ToString(), txtTelefono.Text, txtDescripcion.Text, Convert.ToInt16(ddlCargo.SelectedValue),
                    Convert.ToInt16(ddlUnidad.SelectedValue),"Activo", byteImage,txtusuario.Text,txtpass.Text) > 0)
                {
                    mostrarMensaje("Actualizacion ejecutada.!!!");
                    FileUpload1.Visible = false;
                    cmUsuario = ngUsuario.RecuperarSesion(cmUsuario.Usuario, cmUsuario.Contraseña, "Activo");
                    mostrarDatos(cmUsuario);
                    this.panelinfo.Visible = true;
                    Ver();                    
                }*/
            }
        }

        
        protected void txtNombre_TextChanged(object sender, EventArgs e)
        {

        }

        protected void cerrarSesion_Click(object sender, ImageClickEventArgs e)
        {
            salirSesion = true;
            cmUsuarioSesion = null;
            panelinfo.Visible = false;
            panelsesion.Visible = true;
            txtpass.Text = null;
            txtusuario.Text = null;
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            cmUsuario = ngUsuario.RecuperarSesion(this.txtusuario.Text, this.txtpass.Text);

            if (cmUsuario.IdUsuario > 0)
            {
                if (cmUsuario.Rol.Equals("Administrador"))
                {

                }
                else
                {

                }
                mostrarDatos(cmUsuario);
                Session.Add("Empleado", cmUsuario);

                panelinfo.Visible = true;
                panelsesion.Visible = false;
            }
        }

       
       
    }
}
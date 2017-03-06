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

        List<Cm_ClsUsuarios> usuarios = new List<Cm_ClsUsuarios>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarGrid();
                cargarDropDownList();
                ddlUsuarios.AutoPostBack = true;
                cargarDropDownList1();
                ddlTipoUsuario.AutoPostBack = true;

            }
        }

        protected void Btn_Registrar_Click(object sender, EventArgs e)
        {
            Cm_ClsUsuarios nuevoUsuario = new Cm_ClsUsuarios(txtUsuario.Text, txtContrasena.Text, ddlTipoUsuario.SelectedItem.ToString());
            Ng_ClsUsuarios ng_usuarios = new Ng_ClsUsuarios();

            if ((ng_usuarios.crearUsuarios(nuevoUsuario) > 0))
            {
                limpiarCampos();
                cargarGrid();
            }    
        }


        private void cargarGrid()
        {
            consultar();
            Ng_ClsUsuarios ng_usuarios = new Ng_ClsUsuarios();
            gvrUsuarios.DataSource = ng_usuarios.listarUsuarios();
            gvrUsuarios.DataBind();
        }

        public void consultar()
        {
            Ng_ClsUsuarios ng_usuarios = new Ng_ClsUsuarios();
            usuarios = ng_usuarios.listarUsuarios();

        }

        protected void Btn_Modificar_Click(object sender, EventArgs e)
        {
            Cm_ClsUsuarios modificarUsuarios = new Cm_ClsUsuarios(Convert.ToInt16(ddlUsuarios.SelectedValue), txtUsuario.Text, txtContrasena.Text, ddlTipoUsuario.SelectedItem.ToString());
            Ng_ClsUsuarios ng_usuarios = new Ng_ClsUsuarios();

            if ((ng_usuarios.modificarUsuarios(modificarUsuarios) > 0))
            {
                limpiarCampos();
                cargarGrid();
                cargarDropDownList();
            }
        }

        private void cargarDropDownList()
        {
            consultar();

            ddlUsuarios.DataSource = usuarios;
            ddlUsuarios.DataValueField = "id";
            ddlUsuarios.DataTextField = "usuario";/*Esto hace que el nombre del getter & setter tome el nombre en el gv*/
            ddlUsuarios.DataBind();
            ddlUsuarios.Items.Insert(0, new ListItem("--SELECT--", "0"));
        }

        private void cargarDropDownList1()
        {
            ddlTipoUsuario.Items.Insert(0, new ListItem("ESTUDIANTE", "3"));
            ddlTipoUsuario.Items.Insert(0, new ListItem("PROFESOR", "2"));
            ddlTipoUsuario.Items.Insert(0, new ListItem("ADMINISTRADOR", "1"));
            ddlTipoUsuario.Items.Insert(0, new ListItem("--SELECT--", "0"));
        }

        private void limpiarCampos() {

            txtUsuario.Text = "";
            txtContrasena.Text = "";
        
        }

        public void mostrar(Cm_ClsUsuarios usuarios)
        {
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



    }
}
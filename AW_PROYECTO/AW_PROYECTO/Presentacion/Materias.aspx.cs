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
    public partial class Materias : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Btn_Registrar_Click(object sender, EventArgs e)
        {

            Cm_ClsMaterias nuevoMateria = new Cm_ClsMaterias(txtNombre.Text);
            Ng_ClsMaterias ng_materias = new Ng_ClsMaterias();

            if ((ng_materias.crearMaterias(nuevoMateria) > 0))
            {
                limpiarCampos(); Response.Redirect("/Presentacion/Materias.aspx");
            }
        }

        
private void limpiarCampos()
        {
            txtNombre.Text = "";

        }

        protected void ddlMaterias_TextChanged(object sender, EventArgs e)
        {
            Ng_ClsMaterias ng_usuarios = new Ng_ClsMaterias();

            int indice = Convert.ToInt16(ddlMaterias.SelectedValue);
            Cm_ClsMaterias seleccionarMateria = ng_usuarios.consultarMateriasID(indice);
            mostrar(seleccionarMateria);
        }

        public void mostrar(Cm_ClsMaterias materias)
        {
            txtNombre.Text = materias.Nombre;
        }

        protected void Btn_Modificar_Click(object sender, EventArgs e)
        {
            Cm_ClsMaterias modificarMaterias = new Cm_ClsMaterias(Convert.ToInt16(ddlMaterias.SelectedValue), txtNombre.Text);
            Ng_ClsMaterias ng_materias = new Ng_ClsMaterias();

            if ((ng_materias.modificarMaterias(modificarMaterias) > 0))
            {
                limpiarCampos();
                Response.Redirect("/Presentacion/Materias.aspx");
            }
        }

        protected void txtnombre_TextChanged(object sender, EventArgs e)
        {

        }

    }
}
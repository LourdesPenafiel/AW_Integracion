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
    public partial class Preguntas : System.Web.UI.Page
    {
        string respuestaG;
        List<Cm_ClsMaterias> materias = new List<Cm_ClsMaterias>();
        Cm_ClsPreguntas preguntas = new Cm_ClsPreguntas();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarDropDownList();
                ddlMaterias.AutoPostBack = true;
            }
        
        }

        protected void Btn_Registrar_Click(object sender, EventArgs e)
        {
            Cm_ClsPreguntas nuevaPregunta = new Cm_ClsPreguntas(txtPregunta.Text, txtOpcion1.Text, txtOpcion2.Text, txtOpcion3.Text, seleccionarRespuesta(respuestaG), 1, Convert.ToInt16(ddlMaterias.SelectedValue), 1);
            //Cm_ClsOpcionesPregunta nuevasOpciones = new Cm_ClsOpcionesPregunta();
            Ng_ClsPreguntas ng_preguntas = new Ng_ClsPreguntas();

            if ((ng_preguntas.crearPreguntas(nuevaPregunta) > 0))
            {
                limpiarCampos();
            }
 
        }

        public void consultar()
        {
            Ng_ClsMaterias ng_materias = new Ng_ClsMaterias();
            materias = ng_materias.listarMaterias();

        }
        
        
        private void limpiarCampos()
        {
            txtPregunta.Text = "";
            txtOpcion1.Text = "";
            txtOpcion2.Text = "";
            txtOpcion3.Text = "";
        }

        private void cargarDropDownList()
        {
            consultar();

            ddlMaterias.DataSource = materias;
            ddlMaterias.DataValueField = "id";
            ddlMaterias.DataTextField = "nombre";/*Esto hace que el nombre del getter & setter tome el nombre en el gv*/
            ddlMaterias.DataBind();
            ddlMaterias.Items.Insert(0, new ListItem("--SELECT--", "0"));
        }

        private string seleccionarRespuesta(string respuesta)
        {
            if (opcion1.Checked) {

                respuesta = "opcion1";
                respuestaG = txtOpcion1.Text;
            }

            if(opcion2.Checked){
                respuesta = "opcion2";
                respuestaG = txtOpcion2.Text;
            }

            if (opcion3.Checked) {
                respuesta = "opcion3";
                respuestaG = txtOpcion3.Text;
            }
            return respuestaG;
        }



    }
}
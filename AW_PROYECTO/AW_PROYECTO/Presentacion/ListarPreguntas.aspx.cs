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
    public partial class ListarPreguntas : System.Web.UI.Page
    {
        List<Cm_ClsMaterias> materias = new List<Cm_ClsMaterias>();
        List<Cm_ClsPreguntas> preguntas = new List<Cm_ClsPreguntas>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                //cargarDropDownListMaterias();
               // ddlMaterias.AutoPostBack = true;
            }

        }

        public void consultarMaterias()
        {
            Ng_ClsMaterias ng_materias = new Ng_ClsMaterias();
            materias = ng_materias.listarMaterias();

        }

        private void cargarDropDownListMaterias()
        {
           /* consultarMaterias();
            ddlMaterias.DataSource = materias;
            ddlMaterias.DataValueField = "id";
            ddlMaterias.DataTextField = "nombre";/*Esto hace que el nombre del getter & setter tome el nombre en el gv*/
           /* ddlMaterias.DataBind();
            ddlMaterias.Items.Insert(0, new ListItem("--SELECT--", "0")); */
            
        }

        protected void ddlMaterias_SelectedIndexChanged(object sender, EventArgs e)
        {
            //mostrarPreguntas();
        }

        public void mostrarPreguntas()
        {
            //consultarPreguntas();
            //ddlPreguntasMaterias.DataSource = preguntas;
            //ddlPreguntasMaterias.DataValueField = "id_materia";
            //ddlPreguntasMaterias.DataTextField = "pregunta";/*Esto hace que el nombre del getter & setter tome el nombre en el gv*/
            //ddlPreguntasMaterias.DataBind();
            //ddlPreguntasMaterias.Items.Insert(0, new ListItem("--SELECT--", "0"));
            
        }
        public void consultarPreguntas()
        {
           // int indice = Convert.ToInt16(ddlMaterias.SelectedValue);
            //Ng_ClsPreguntas ng_preguntas = new Ng_ClsPreguntas();
            //preguntas = ng_preguntas.consultarPreguntasID_Materia(indice);
            
        }

        protected void ConsultaPreguntas_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void ddlPreguntasMaterias_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }


      

    }
}
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
        string respuestaG;
        int totalPreguntasMateria;
        static int sumaAciertos = 0;
        List<Cm_ClsMaterias> materias = new List<Cm_ClsMaterias>();
        List<Cm_ClsPreguntas> preguntas = new List<Cm_ClsPreguntas>();


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                cargarDropDownListMaterias();
                ddlMaterias.AutoPostBack = true;
                ddlPreguntasMaterias.AutoPostBack = true;
                txtOpcion1.Enabled = false;
                txtOpcion2.Enabled = false;
                txtOpcion3.Enabled = false;

            }

        }

        public void consultarMaterias()
        {
            Ng_ClsMaterias ng_materias = new Ng_ClsMaterias();
            materias = ng_materias.listarMaterias();

        }

        private void cargarDropDownListMaterias()
        {
            consultarMaterias();
            ddlMaterias.DataSource = materias;
            ddlMaterias.DataValueField = "id";
            ddlMaterias.DataTextField = "nombre";/*Esto hace que el nombre del getter & setter tome el nombre en el gv*/
            ddlMaterias.DataBind();
            ddlMaterias.Items.Insert(0, new ListItem("--SELECT--", "0"));


        }

        public void mostrar(Cm_ClsPreguntas opciones)
        {
            txtOpcion1.Text = opciones.Opcion1;
            txtOpcion2.Text = opciones.Opcion2;
            txtOpcion3.Text = opciones.Opcion3;
        }





        protected void ddlPreguntasMaterias_TextChanged(object sender, EventArgs e)
        {
            Ng_ClsPreguntas ng_preguntas = new Ng_ClsPreguntas();

            int indice = Convert.ToInt16(ddlPreguntasMaterias.SelectedValue);
            Cm_ClsPreguntas seleccionarPregunta = ng_preguntas.consultarPreguntasID(indice);
            mostrar(seleccionarPregunta);
            totalPreguntasMateria = Convert.ToInt16(ddlPreguntasMaterias.Items.Count);
            txtNota.Text = totalPreguntasMateria.ToString();



        }

        protected void Btn_Responder_Click1(object sender, EventArgs e)
        {
            Cm_ClsRespuestaUsuario nuevaRespuesta = new Cm_ClsRespuestaUsuario(1, Convert.ToInt16(ddlPreguntasMaterias.SelectedValue));
            Ng_ClsRespuestaUsuario ng_respuesta = new Ng_ClsRespuestaUsuario();

            int indice = Convert.ToInt16(ddlPreguntasMaterias.SelectedValue);
            int borrar = Convert.ToInt16(ddlPreguntasMaterias.SelectedIndex);


            if ((ng_respuesta.registroRespuestas(nuevaRespuesta) > 0))
            {
                ddlPreguntasMaterias.Items.RemoveAt(borrar);
                ddlPreguntasMaterias.SelectedIndex = 0;



            }

            Ng_ClsPreguntas ng_preguntas = new Ng_ClsPreguntas();




            Cm_ClsPreguntas seleccionarPregunta = ng_preguntas.consultarPreguntasID(indice);

            if (seleccionarRespuesta(respuestaG) == seleccionarPregunta.Respuesta)
            {


                ClientScript.RegisterStartupScript(this.GetType(), "Mensaje", "alert('Respuesta Correcta');", true);
                opcion1.Checked = false;
                opcion2.Checked = false;
                opcion3.Checked = false;
                txtOpcion1.Text = null;
                txtOpcion2.Text = null;
                txtOpcion3.Text = null;
                sumaAciertos = sumaAciertos + 1;

            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Mensaje", "alert('Respuesta Incorrecta');", true);


            }

            txtSumaNota.Text = sumaAciertos.ToString();

        }

        private string seleccionarRespuesta(string respuesta)
        {
            if (opcion1.Checked)
            {

                respuesta = txtOpcion1.Text;
                respuestaG = respuesta;

            }

            if (opcion2.Checked)
            {
                respuesta = txtOpcion2.Text;
                respuestaG = respuesta;
            }

            if (opcion3.Checked)
            {
                respuesta = txtOpcion3.Text;
                respuestaG = respuesta;
            }
            return respuestaG;
        }

        protected void ddlMaterias_SelectedIndexChanged(object sender, EventArgs e)
        {
            sumaAciertos = 0;
        }



    }
}
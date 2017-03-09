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
                txtNota.Text = "0";
                txtSumaNota.Text = "0";

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

        public void consultarPreguntas_ID_Materia()
        {
            Ng_ClsPreguntas ng_preguntas = new Ng_ClsPreguntas();
            preguntas = ng_preguntas.consultarPreguntasID_Materia(ddlMaterias.SelectedIndex);
        }

        private void cargarPreguntas() {

            consultarPreguntas_ID_Materia();
            ddlPreguntasMaterias.DataSource = preguntas;
            ddlPreguntasMaterias.DataValueField = "id";
            ddlPreguntasMaterias.DataTextField = "pregunta";/*Esto hace que el nombre del getter & setter tome el nombre en el gv*/
            ddlPreguntasMaterias.DataBind();
            ddlPreguntasMaterias.Items.Insert(0, new ListItem("--SELECT--", "0"));
        }

        public void mostrar(Cm_ClsPreguntas opciones)
        {
            txtOpcion1.Text = opciones.Opcion1;
            txtOpcion2.Text = opciones.Opcion2;
            txtOpcion3.Text = opciones.Opcion3;
        }


        public void verificar_pregunta_respondida_usuario() {

            Boolean respondido;
            Ng_ClsRespuestaUsuario ng_respuesta = new Ng_ClsRespuestaUsuario();
            respondido = ng_respuesta.pregunta_respondida_usuario(4, Convert.ToInt16(ddlPreguntasMaterias.SelectedValue));
            if (respondido)
            {
                Btn_Responder.Visible = false;
            }
            else {
                Btn_Responder.Visible = true;
            }
        }

        protected void ddlPreguntasMaterias_TextChanged(object sender, EventArgs e)
        {

            Ng_ClsPreguntas ng_preguntas = new Ng_ClsPreguntas();
            int indice = Convert.ToInt16(ddlPreguntasMaterias.SelectedValue);
            Cm_ClsPreguntas seleccionarPregunta = ng_preguntas.consultarPreguntasID(indice);
            mostrar(seleccionarPregunta);
            verificar_pregunta_respondida_usuario();
            
            
        }

        protected void Btn_Responder_Click1(object sender, EventArgs e)
        {
            Cm_ClsRespuestaUsuario nuevaRespuesta = new Cm_ClsRespuestaUsuario(4, Convert.ToInt16(ddlPreguntasMaterias.SelectedValue), true);
            Ng_ClsRespuestaUsuario ng_respuesta = new Ng_ClsRespuestaUsuario();

            int indice = Convert.ToInt16(ddlPreguntasMaterias.SelectedValue);
          

            if ((ng_respuesta.registroRespuestas(nuevaRespuesta) > 0))
            {
              
               ddlPreguntasMaterias.SelectedIndex = 0;

            }

            //Comprobar la si la respuesta es correcta

            Ng_ClsPreguntas ng_preguntas = new Ng_ClsPreguntas();
            Cm_ClsPreguntas seleccionarPregunta = ng_preguntas.consultarPreguntasID(indice);
            if (seleccionarRespuesta(respuestaG) == seleccionarPregunta.Respuesta)
            {

                ClientScript.RegisterStartupScript(this.GetType(), "Mensaje", "alert('Respuesta Correcta');", true);
                sumaAciertos = sumaAciertos + 1;

            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Mensaje", "alert('Respuesta Incorrecta');", true);

            }

            txtSumaNota.Text = sumaAciertos.ToString();
            contestarPregunta_Limpiar();

        }


        private void contestarPregunta_Limpiar() {
            opcion1.Checked = false;
            opcion2.Checked = false;
            opcion3.Checked = false;
            txtOpcion1.Text = null;
            txtOpcion2.Text = null;
            txtOpcion3.Text = null;
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


        protected void Btn_Inicio_Click(object sender, EventArgs e)
        {

        }

        protected void ddlMaterias_TextChanged(object sender, EventArgs e)
        {

            cargarPreguntas();
            sumaAciertos = 0;
            txtSumaNota.Text = "0";

            if (ddlMaterias.SelectedIndex == 0)
            {
                txtNota.Text = "0";
                
            }

            else {

                Ng_ClsPreguntas ng_preguntas = new Ng_ClsPreguntas();
                totalPreguntasMateria = ng_preguntas.contarPreguntasID_Materia(ddlMaterias.SelectedIndex);
                txtNota.Text = totalPreguntasMateria.ToString();
            }
            
            
        }

    }
}
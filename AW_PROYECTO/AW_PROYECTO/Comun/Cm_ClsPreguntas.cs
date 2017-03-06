using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AW_PROYECTO.Comun
{
    public class Cm_ClsPreguntas
    {
        /*VARIABLES*/
        private int id;
        private string pregunta;
        private string opcion1;
        private string opcion2;
        private string opcion3;
        private string respuesta;
        private int calificacion;
        private int id_materia;
        private int id_usuario;
        private int id_pregunta;


        /*GET AND SET */
        public int Id
        {
            get { return id; }
            set { id = value; }
        }

        public string Pregunta
        {
            get { return pregunta; }
            set { pregunta = value; }
        }

        public string Opcion1
        {
            get { return opcion1; }
            set { opcion1 = value; }
        }

        public string Opcion2
        {
            get { return opcion2; }
            set { opcion2 = value; }
        }

        public string Opcion3
        {
            get { return opcion3; }
            set { opcion3 = value; }
        }

        public string Respuesta
        {
            get { return respuesta; }
            set { respuesta = value; }
        }

        public int Calificacion
        {
            get { return calificacion; }
            set { calificacion = value; }
        }

        public int Id_materia
        {
            get { return id_materia; }
            set { id_materia = value; }
        }

        public int Id_usuario
        {
            get { return id_usuario; }
            set { id_usuario = value; }
        }

        public int Id_pregunta
        {
            get { return id_pregunta; }
            set { id_pregunta = value; }
        }

       /*Constructor Vacio */

        public Cm_ClsPreguntas()
        {

        }

        /*Constructor para crear materias */

        public Cm_ClsPreguntas(string pregunta, string opcion1, string opcion2, string opcion3, string respuesta, int calificacion, int id_materia, int id_usuario, int id_pregunta)
        {
            this.pregunta = pregunta;
            this.opcion1 = opcion1;
            this.opcion2 = opcion2;
            this.opcion3 = opcion3;
            this.respuesta = respuesta;
            this.calificacion = calificacion;
            this.id_materia = id_materia;
            this.id_usuario = id_usuario;
            this.id_pregunta = id_pregunta;
        }

        public Cm_ClsPreguntas(int id, string pregunta, string opcion1, string opcion2, string opcion3, string respuesta, int calificacion, int id_materia, int id_usuario, int id_pregunta)
        {
            this.id = id;
            this.pregunta = pregunta;
            this.opcion1 = opcion1;
            this.opcion2 = opcion2;
            this.opcion3 = opcion3;
            this.respuesta = respuesta;
            this.calificacion = calificacion;
            this.id_materia = id_materia;
            this.id_usuario = id_usuario;;
            this.id_pregunta = id_pregunta;
        }

        public Cm_ClsPreguntas(int id_materia, string pregunta)
        {
            this.id_materia = id_materia;
            this.pregunta = pregunta;
        }

    }
}
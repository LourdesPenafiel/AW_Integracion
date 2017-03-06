using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AW_PROYECTO.Comun
{
    public class Cm_ClsOpcionesPregunta
    {
        /*VARIABLES */

        private int id;
        private string opcion1;
        private string opcion2;
        private string opcion3;
        private string respuesta;
        private int id_pregunta;

       

        public int Id
        {
            get { return id; }
            set { id = value; }
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

        public int Id_pregunta
        {
            get { return id_pregunta; }
            set { id_pregunta = value; }
        }


          public Cm_ClsOpcionesPregunta(string opcion1, string opcion2, string opcion3, string respuesta, int id_pregunta)
        {
            this.opcion1 = opcion1;
            this.opcion2 = opcion2;
            this.opcion3 = opcion3;
            this.respuesta = respuesta;
            this.id_pregunta = id_pregunta;
        }

          public Cm_ClsOpcionesPregunta(int id, string opcion1, string opcion2, string opcion3, string respuesta, int id_pregunta)
          {
              this.id = id;
              this.opcion1 = opcion1;
              this.opcion2 = opcion2;
              this.opcion3 = opcion3;
              this.respuesta = respuesta;
              this.id_pregunta = id_pregunta;
          }


    }
}
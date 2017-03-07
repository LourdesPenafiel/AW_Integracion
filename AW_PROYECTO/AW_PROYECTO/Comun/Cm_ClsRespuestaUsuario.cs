using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AW_PROYECTO.Comun
{
    public class Cm_ClsRespuestaUsuario
    {
        /*VARIABLES*/
        private int id;
        private int id_usuario;
        private int id_pregunta;

    
        /*GET AND SET*/

        public int Id
        {
            get { return id; }
            set { id = value; }
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

        /*Constructor Vacio*/

        public Cm_ClsRespuestaUsuario()
        {


        }

        public Cm_ClsRespuestaUsuario(int id_usuario, int id_pregunta)
        {
            this.id_usuario = id_usuario;
            this.id_pregunta = id_pregunta;
        }

        public Cm_ClsRespuestaUsuario(int id, int id_usuario, int id_pregunta)
        {
            this.id = id;
            this.id_usuario = id_usuario;
            this.id_pregunta = id_pregunta;
        }


    }
}
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
        private Boolean preguntarespondida;


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

        public Boolean Preguntarespondida
        {
            get { return preguntarespondida; }
            set { preguntarespondida = value; }
        }


        /*Constructor Vacio*/

        public Cm_ClsRespuestaUsuario()
        {


        }

        public Cm_ClsRespuestaUsuario(int id_usuario, int id_pregunta, Boolean preguntarespondida)
        {
            this.id_usuario = id_usuario;
            this.id_pregunta = id_pregunta;
            this.preguntarespondida = preguntarespondida;
        }

        public Cm_ClsRespuestaUsuario(int id, int id_usuario, int id_pregunta, Boolean preguntarespondida)
        {
            this.id = id;
            this.id_usuario = id_usuario;
            this.id_pregunta = id_pregunta;
            this.preguntarespondida = preguntarespondida;
        }


    }
}
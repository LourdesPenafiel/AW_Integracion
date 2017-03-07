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
        private int id_opciones_respuesta;


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

        public int Id_opciones_respuesta
        {
            get { return id_opciones_respuesta; }
            set { id_opciones_respuesta = value; }
        }

        /*Constructor Vacio*/

        public Cm_ClsRespuestaUsuario()
        {


        }

        public Cm_ClsRespuestaUsuario(int id_usuario, int id_opciones_respuesta)
        {
            this.id_usuario = id_usuario;
            this.id_opciones_respuesta = id_opciones_respuesta;
        }

        public Cm_ClsRespuestaUsuario(int id, int id_usuario, int id_opciones_respuesta)
        {
            this.id = id;
            this.id_usuario = id_usuario;
            this.id_opciones_respuesta = id_opciones_respuesta;
        }


    }
}
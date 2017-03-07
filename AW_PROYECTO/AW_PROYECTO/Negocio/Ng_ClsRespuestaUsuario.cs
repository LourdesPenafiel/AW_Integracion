using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using AW_PROYECTO.Comun;
using AW_PROYECTO.Datos;


namespace AW_PROYECTO.Negocio
{
    public class Ng_ClsRespuestaUsuario
    {
        public Ng_ClsRespuestaUsuario()
        {

        }


        public int registroRespuestas(Cm_ClsRespuestaUsuario respuesta)
        {
            Dt_ClsRespuestaUsuario dt_respuesta = new Dt_ClsRespuestaUsuario();
            return dt_respuesta.registroRespuestas(respuesta.Id_usuario, respuesta.Id_pregunta);
        }

    }
}
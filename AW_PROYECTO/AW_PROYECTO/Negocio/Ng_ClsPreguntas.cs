using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


using AW_PROYECTO.Comun;
using AW_PROYECTO.Datos;

namespace AW_PROYECTO.Negocio
{
    public class Ng_ClsPreguntas
    {
        public Ng_ClsPreguntas()
        {

        }

        public int crearPreguntas(Cm_ClsPreguntas materias)
        {
            Dt_ClsPreguntas dt_preguntas = new Dt_ClsPreguntas();
            return dt_preguntas.crearPreguntas(materias.Pregunta, materias.Opcion1, materias.Opcion2, materias.Opcion3, materias.Respuesta, materias.Calificacion, materias.Id_materia, materias.Id_usuario);
        }


        public Cm_ClsPreguntas consultarPreguntasID(int IdPregunta)
        {
            Dt_ClsPreguntas dt_materias = new Dt_ClsPreguntas();

            return dt_materias.consultarPreguntasID(IdPregunta);
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using AW_PROYECTO.Comun;
using AW_PROYECTO.Datos;

namespace AW_PROYECTO.Negocio
{
    public class Ng_ClsMaterias
    {

        public Ng_ClsMaterias()
        {

        }

        public int crearMaterias(Cm_ClsMaterias materias)
        {
            Dt_ClsMaterias dt_materias = new Dt_ClsMaterias();
            return dt_materias.crearMaterias(materias.Nombre);                                                 
        }

        public List<Cm_ClsMaterias> listarMaterias()
        {
            Dt_ClsMaterias dt_materias = new Dt_ClsMaterias();
            return dt_materias.listarMaterias();
        }

        public int modificarMaterias(Cm_ClsMaterias materias)
        {
            Dt_ClsMaterias dt_materias = new Dt_ClsMaterias();
            return dt_materias.modificarMaterias(materias.Id, materias.Nombre);
        }

        public Cm_ClsMaterias consultarMateriasID(int IdMateria)
        {
            Dt_ClsMaterias dt_materias = new Dt_ClsMaterias();
            return dt_materias.consultarMateriasID(IdMateria);
        }
    }
}
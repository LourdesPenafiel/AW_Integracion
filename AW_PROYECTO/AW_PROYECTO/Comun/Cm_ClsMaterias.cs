using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AW_PROYECTO.Comun
{
    public class Cm_ClsMaterias
    {
        /*VARIABLES*/
        private int id;
        private string nombre;

        /*GET AN SET */

        public int Id
        {
            get { return id; }
            set { id = value; }
        }

        public string Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }

        
        /*Constructor Vacio */

        public Cm_ClsMaterias()
        {

        }

        /*Constructor para crear materias */

        public Cm_ClsMaterias(string nombre)
        {
            this.nombre = nombre;
        }

        public Cm_ClsMaterias(int id, string nombre) 
        {
            this.id = id;
            this.nombre = nombre;
        }

    }
}
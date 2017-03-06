using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AW_PROYECTO.Comun
{
    public class Cm_ClsUsuarios
    {
        
        /*VARIABLES*/
        private int id;
        private string usuario;
        private string contrasena;
        private string tipo_usuario;

        /*SET AND GET*/

        public int Id
        {
            get { return id; }
            set { id = value; }
        }

        public string Usuario
        {
            get { return usuario; }
            set { usuario = value; }
        }

        public string Contrasena
        {
            get { return contrasena; }
            set { contrasena = value; }
        }

        public string Tipo_usuario
        {
            get { return tipo_usuario; }
            set { tipo_usuario = value; }
        }

        /*Constructor Vacio */

        public Cm_ClsUsuarios()
        {

        }

        /*Constructor con Parametros para crear usuarios */

        public Cm_ClsUsuarios(string usuario, string contrasena, string tipo_usuario)
        {
            this.usuario = usuario;
            this.contrasena = contrasena;
            this.tipo_usuario = tipo_usuario;
        }


        public Cm_ClsUsuarios(int id, string usuario, string contrasena, string tipo_usuario)
        {
            this.id = id;
            this.usuario = usuario;
            this.contrasena = contrasena;
            this.tipo_usuario = tipo_usuario;

        }





    }
}
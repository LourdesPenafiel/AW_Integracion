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
        private string nombre;
        private string apellido;
        private string usuario;
        private string contrasena;
        private string tipo_usuario;
        private Byte[] foto;

        /* SET AND GET*/

        public Byte[] Foto
        {
            get { return foto; }
            set { foto = value; }
        }

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

        public string Apellido
        {
            get { return apellido; }
            set { apellido = value; }
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

        public Cm_ClsUsuarios(string nombre, string apellido,Byte[] foto, string usuario, string contrasena, string tipo_usuario)
        {
            this.nombre = nombre;
            this.apellido = apellido;
            this.foto = new Byte[foto.Length];
            this.foto = foto;
            this.usuario = usuario;
            this.contrasena = contrasena;
            this.tipo_usuario = tipo_usuario;
        }


        public Cm_ClsUsuarios(int id, string nombre, string apellido, Byte[] foto, string usuario, string contrasena, string tipo_usuario)
        {
            this.id = id;
            this.nombre = nombre;
            this.apellido = apellido;
            this.foto = new Byte[foto.Length];
            this.foto = foto;
            this.usuario = usuario;
            this.contrasena = contrasena;
            this.tipo_usuario = tipo_usuario;

        }

    }
}
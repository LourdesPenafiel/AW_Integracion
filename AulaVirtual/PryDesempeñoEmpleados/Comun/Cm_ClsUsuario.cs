using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AulaVirtual.Comun
{
    public class Cm_ClsUsuario
    {
        private int idUsuario;

        public int IdUsuario
        {
            get { return idUsuario; }
            set { idUsuario = value; }
        }
        private string nombre;

        public string Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }

        private string rol;

        public string Rol
        {
            get { return rol; }
            set { rol = value; }
        }

        private string usuario;

        public string Usuario
        {
            get { return usuario; }
            set { usuario = value; }
        }
        private string contrasena;

        public string Contrasena
        {
            get { return contrasena; }
            set { contrasena = value; }
        }
        private Byte[] fotografia;

        public Byte[] Fotografia
        {
            get { return fotografia; }
            set { fotografia = value; }
        }

     
        public Cm_ClsUsuario() { }

        public Cm_ClsUsuario(
            int idUsuario,
            string nombre,
            string rol,
            Byte[] fotografia,
            string usuario,
            string contrasena)
        {
            this.idUsuario = idUsuario;
            this.nombre = nombre;
            this.rol = rol;
            this.usuario = usuario;
            this.contrasena = contrasena;
            this.fotografia = new Byte[fotografia.Length];
            this.fotografia = fotografia;
        }

    }
}
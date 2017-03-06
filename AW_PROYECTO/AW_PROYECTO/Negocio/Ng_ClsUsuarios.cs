using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using AW_PROYECTO.Comun;
using AW_PROYECTO.Datos;

namespace AW_PROYECTO.Negocio
{
    public class Ng_ClsUsuarios
    {
        public Ng_ClsUsuarios()
        {

        }

        public int crearUsuarios(Cm_ClsUsuarios usuarios)
        {
            Dt_ClsUsuarios dt_usuarios = new Dt_ClsUsuarios();
            return dt_usuarios.crearUsuarios(usuarios.Usuario, usuarios.Contrasena, usuarios.Tipo_usuario);                                                 
        }

        public List<Cm_ClsUsuarios> listarUsuarios()
        {
            Dt_ClsUsuarios dt_usuarios = new Dt_ClsUsuarios();
            return dt_usuarios.listarUsuarios();
        }

        public int modificarUsuarios(Cm_ClsUsuarios usuarios)
        {
            Dt_ClsUsuarios dt_usuarios = new Dt_ClsUsuarios();
            return dt_usuarios.modificarUsuarios(usuarios.Id, usuarios.Usuario, usuarios.Contrasena, usuarios.Tipo_usuario);
        }

        public Cm_ClsUsuarios consultarUsuariosID(int IdUsuarios)
        {
            Dt_ClsUsuarios dt_usuarios = new Dt_ClsUsuarios();
            return dt_usuarios.consultarUsuariosID(IdUsuarios);
        }

        public Cm_ClsUsuarios loginUser(string usuario, string contrasena)
        {
            Dt_ClsUsuarios dt_usuarios = new Dt_ClsUsuarios();
            return dt_usuarios.loginUser(usuario, contrasena);
        }
    }
}
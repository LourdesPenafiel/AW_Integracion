using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using AulaVirtual.Datos;
using AulaVirtual.Comun;

namespace AulaVirtual.Negocio
{
    public class Ng_ClsUsuario
    {
        public Ng_ClsUsuario() { }

        public int crearUsuario(
            string nombreP,
            string rolP,
            Byte[] fotografiaP,
            string usuarioP,
            string contraseñaP
            )
        {
            Dt_ClsUsuario dtUsuario = new Dt_ClsUsuario();
            return dtUsuario.crearUsuario(
                 nombreP,
                 rolP,
                 fotografiaP,
                 usuarioP,
                 contraseñaP);
        }
        public Cm_ClsUsuario RecuperarSesion(string usuario, string contrasena)
        {
            Dt_ClsUsuario dtUsuario = new Dt_ClsUsuario();
            return dtUsuario.RecuperarSesion(usuario, contrasena);
        }

        public Cm_ClsUsuario mostarUsuarioID(int idUsuario)
        {
            Dt_ClsUsuario dtUsuario = new Dt_ClsUsuario();
            return dtUsuario.mostarUsuarioID(idUsuario);
        }
       /*
        public int ActualizarEmpleado(
            int id_EmpleadoP,
            string nombreP,
            string apellidoP,
            DateTime fechaNacimientoP,
            string instruccionP,
            string telefonoP,
            string descripcionP,
            int id_CargoP,
            int id_UnidadP,
            string estadoP,
            Byte[] fotografiaP,
            string usuarioP,
            string contraseñaP)
        {
            Dt_ClsEmpleado dtempleado = new Dt_ClsEmpleado();
            return dtempleado.ActualizarEmpleado(
                id_EmpleadoP,
                 nombreP,
                 apellidoP,
                 fechaNacimientoP,
                 instruccionP,
                 telefonoP,
                 descripcionP,
                 id_CargoP,
                 id_UnidadP,
                 estadoP,
                 fotografiaP,
                 usuarioP,
                 contraseñaP);
        }
      */
    }
}
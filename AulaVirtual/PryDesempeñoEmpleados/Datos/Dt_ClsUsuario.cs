using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Data.Common;
using System.Data;

using AulaVirtual.Presentacion;
using AulaVirtual.Comun;

namespace AulaVirtual.Datos
{
    public class Dt_ClsUsuario
    {
        public Dt_ClsUsuario() { }
        public static string constr
        {
            get { return ConfigurationManager.ConnectionStrings["Conn"].ConnectionString; }
        }

        public static string provider
        {
            get { return ConfigurationManager.ConnectionStrings["Conn"].ProviderName; }
        }

        public static DbProviderFactory dpf
        {
            get { return DbProviderFactories.GetFactory(provider); }
        }

        private static int executeNonQuery(string StoreProcedure, List<DbParameter> parametros)
        {
            int Id = 0;
            try
            {
                using (DbConnection con = dpf.CreateConnection())
                {
                    con.ConnectionString = constr;
                    using (DbCommand cmd = dpf.CreateCommand())
                    {
                        cmd.Connection = con;
                        cmd.CommandText = StoreProcedure;
                        cmd.CommandType = CommandType.StoredProcedure;
                        foreach (DbParameter prmts in parametros)
                        {
                            cmd.Parameters.Add(prmts);
                        }
                        con.Open();
                        Id = cmd.ExecuteNonQuery();
                    }
                }
            }
            catch (Exception)
            {
                throw;
            }
            return Id;
        }

        public int crearUsuario(
            string nombreP,
            string rolP,
            Byte[] fotografiaP,
            string usuarioP,
            string contrasenaP)
        {
            List<DbParameter> parametros = new List<DbParameter>();
            DbParameter nombre = dpf.CreateParameter();
            nombre.Value = nombreP;
            nombre.ParameterName = "@nombre";
            parametros.Add(nombre);

            DbParameter rol = dpf.CreateParameter();
            rol.Value = rolP;
            rol.ParameterName = "@rol";
            parametros.Add(rol);

            DbParameter fotografia = dpf.CreateParameter();
            fotografia.Value = fotografiaP;
            fotografia.ParameterName = "@fotografia";
            parametros.Add(fotografia);

            DbParameter usuario = dpf.CreateParameter();
            usuario.Value = usuarioP;
            usuario.ParameterName = "@usuario";
            parametros.Add(usuario);

            DbParameter contraseña = dpf.CreateParameter();
            contraseña.Value = contrasenaP;
            contraseña.ParameterName = "@contrasena";
            parametros.Add(contraseña);

            return executeNonQuery("crearUsuario", parametros);
        }

        public Cm_ClsUsuario mostarUsuarioID(int idUsuario)
        {
            Cm_ClsUsuario cmUsuario = new Cm_ClsUsuario();

            string StoreProcedure = "mostrarUsuarioID";
            using (DbConnection con = dpf.CreateConnection())
            {
                con.ConnectionString = constr;
                using (DbCommand cmd = dpf.CreateCommand())
                {
                    cmd.Connection = con;
                    cmd.CommandText = StoreProcedure;
                    cmd.CommandType = CommandType.StoredProcedure;
                    DbParameter param = cmd.CreateParameter();
                    param.DbType = DbType.Int32;
                    param.ParameterName = "@idUsuario";
                    param.Value = idUsuario;
                    cmd.Parameters.Add(param);
                    con.Open();
                    using (DbDataReader dr = cmd.ExecuteReader())
                    {
                        if (dr.Read())
                        {
                            cmUsuario = new Cm_ClsUsuario(
                                    idUsuario,
                                    (string)dr["nombre"],
                                    (string)dr["rol"],
                                    (Byte[])dr["fotografia"],
                                    (string)dr["usuario"],
                                    (string)dr["contrasena"]);
                        }
                    }
                }
            }
            return cmUsuario;
        }
        public List<Cm_ClsUsuario> mostrarUsuarios()
        {
            List<Cm_ClsUsuario> Usuarios = new List<Cm_ClsUsuario>();
            string StoreProcedure = "mostrarTodosUsuario";
            using (DbConnection con = dpf.CreateConnection())
            {
                con.ConnectionString = constr;
                using (DbCommand cmd = dpf.CreateCommand())
                {
                    cmd.Connection = con;
                    cmd.CommandText = StoreProcedure;
                    cmd.CommandType = CommandType.StoredProcedure;
                    con.Open();
                    using (DbDataReader dr = cmd.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            Usuarios.Add(
                                new Cm_ClsUsuario(
                                    (int)dr["idUsuario"],
                                    (string)dr["nombre"],
                                    (string)dr["rol"],
                                    (Byte[])dr["fotografia"],
                                    (string)dr["usuario"], 
                                    (string)dr["contrasena"]));
                        }
                    }
                }
            }
            return Usuarios;
        }

        /*public int ActualizarEmpleado(
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
            List<DbParameter> parametros = new List<DbParameter>();

            DbParameter id_Empleado = dpf.CreateParameter();
            id_Empleado.Value = id_EmpleadoP;
            id_Empleado.ParameterName = "@id_Empleado";
            parametros.Add(id_Empleado);

            DbParameter nombre = dpf.CreateParameter();
            nombre.Value = nombreP;
            nombre.ParameterName = "@nombre";
            parametros.Add(nombre);

            DbParameter apellido = dpf.CreateParameter();
            apellido.Value = apellidoP;
            apellido.ParameterName = "@apellido";
            parametros.Add(apellido);

            DbParameter fechaNacimiento = dpf.CreateParameter();
            fechaNacimiento.Value = fechaNacimientoP;
            fechaNacimiento.ParameterName = "@fechaNacimiento";
            parametros.Add(fechaNacimiento);

            DbParameter instruccion = dpf.CreateParameter();
            instruccion.Value = instruccionP;
            instruccion.ParameterName = "@instruccion";
            parametros.Add(instruccion);

            DbParameter telefono = dpf.CreateParameter();
            telefono.Value = telefonoP;
            telefono.ParameterName = "@telefono";
            parametros.Add(telefono);

            DbParameter descripcion = dpf.CreateParameter();
            descripcion.Value = descripcionP;
            descripcion.ParameterName = "@descripcion";
            parametros.Add(descripcion);

            DbParameter fotografia = dpf.CreateParameter();
            fotografia.Value = fotografiaP;
            fotografia.ParameterName = "@fotografia";
            parametros.Add(fotografia);

            DbParameter usuario = dpf.CreateParameter();
            usuario.Value = usuarioP;
            usuario.ParameterName = "@usuario";
            parametros.Add(usuario);

            DbParameter contraseña = dpf.CreateParameter();
            contraseña.Value = contraseñaP;
            contraseña.ParameterName = "@contraseña";
            parametros.Add(contraseña);

            DbParameter estado = dpf.CreateParameter();
            estado.Value = estadoP;
            estado.ParameterName = "@estado";
            parametros.Add(estado);

            DbParameter id_Unidad = dpf.CreateParameter();
            id_Unidad.Value = id_UnidadP;
            id_Unidad.ParameterName = "@id_Unidad";
            parametros.Add(id_Unidad);

            DbParameter id_Cargo = dpf.CreateParameter();
            id_Cargo.Value = id_CargoP;
            id_Cargo.ParameterName = "@id_Cargo";
            parametros.Add(id_Cargo);

            return executeNonQuery("sp_ModificarEmpleado", parametros);
        }*/

        public Cm_ClsUsuario RecuperarSesion(string usuarioP, string contrasenaP)
        {
            Cm_ClsUsuario cmUsuario = new Cm_ClsUsuario();

            string StoreProcedure = "sesionUsuario";
            using (DbConnection con = dpf.CreateConnection())
            {
                con.ConnectionString = constr;
                using (DbCommand cmd = dpf.CreateCommand())
                {
                    cmd.Connection = con;
                    cmd.CommandText = StoreProcedure;
                    cmd.CommandType = CommandType.StoredProcedure;
                    DbParameter usuario = cmd.CreateParameter();
                    usuario.ParameterName = "@usuario";
                    usuario.Value = usuarioP;
                    cmd.Parameters.Add(usuario);

                    DbParameter contrasena = cmd.CreateParameter();
                    contrasena.ParameterName = "@contrasena";
                    contrasena.Value = contrasenaP;
                    cmd.Parameters.Add(contrasena);

                    con.Open();
                    using (DbDataReader dr = cmd.ExecuteReader())
                    {
                        if (dr.Read())
                        {
                            cmUsuario = new Cm_ClsUsuario(
                                    (int)dr["id"],
                                    (string)dr["nombre"],
                                    (string)dr["rol"],
                                    (Byte[])dr["fotografia"],
                                    usuarioP,contrasenaP);
                        }
                    }
                }
            }
            return cmUsuario;
        }
       
    }
}
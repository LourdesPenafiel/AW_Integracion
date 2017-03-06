using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Configuration;
using System.Data.Common;
using System.Data;

using AW_PROYECTO.Comun;
using AW_PROYECTO.Negocio;

namespace AW_PROYECTO.Datos
{
    public class Dt_ClsUsuarios
    {
        public Dt_ClsUsuarios()
        {
        }
        /*Devuelvo la cadena de coneccion*/
        public static String constr
        {
            get { return ConfigurationManager.ConnectionStrings["Conn"].ConnectionString; }
        }

        /*Devuelvo el proveedor*/

        public static String provider
        {
            get { return ConfigurationManager.ConnectionStrings["Conn"].ProviderName; }
        }

        /*Devuelvo el factory*/
        public static DbProviderFactory dpf
        {
            get { return DbProviderFactories.GetFactory(provider); }/*este hace los http, los get, los puts, los delete*/
        }

        /*Metodo para que se ejecute los procedimientos almacenados*/

        private static int ejecuteNonQuery(String storeProcedure, List<DbParameter> parametros)
        {
            int id = 0;
            try
            {
                /*crear la connection */
                using (DbConnection con = dpf.CreateConnection())
                {
                    /*Creando un comando para enviar a la base de datos  que es un procedimiento almacenado*/
                    con.ConnectionString = constr;
                    using (DbCommand cmd = dpf.CreateCommand())
                    {
                        cmd.Connection = con;
                        cmd.CommandText = storeProcedure;
                        cmd.CommandType = CommandType.StoredProcedure;

                        foreach (DbParameter parametro in parametros)/*DbParameter es el tipo*/
                        {
                            cmd.Parameters.Add(parametro);
                        }
                        /*Abrir la connection*/

                        con.Open();
                        id = cmd.ExecuteNonQuery();
                    }

                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
                throw;
            }
            return id;
        }


        /*Crear Usuarios*/
        public int crearUsuarios(string usuario, string contrasena, string tipo_usuario)
        {
            List<DbParameter> parametros = new List<DbParameter>();

            DbParameter parametro0 = dpf.CreateParameter();
            parametro0.Value = usuario;
            parametro0.ParameterName = "usuario";
            parametros.Add(parametro0);

            DbParameter parametro1 = dpf.CreateParameter();
            parametro1.Value = contrasena;
            parametro1.ParameterName = "contrasena";
            parametros.Add(parametro1);

            DbParameter parametro2 = dpf.CreateParameter();
            parametro2.Value = tipo_usuario;
            parametro2.ParameterName = "tipo_usuario";
            parametros.Add(parametro2);

            return ejecuteNonQuery("crearUsuario", parametros);
        }

        /*Listar Usuarios*/
        public List<Cm_ClsUsuarios> listarUsuarios()
        {
            List<Cm_ClsUsuarios> usuarios = new List<Cm_ClsUsuarios>();
            string storeProcedure = "listarUsuarios";
            using (DbConnection con = dpf.CreateConnection())
            {

                con.ConnectionString = constr;
                using (DbCommand cmd = dpf.CreateCommand())
                {
                    cmd.Connection = con;
                    cmd.CommandText = storeProcedure;
                    cmd.CommandType = CommandType.StoredProcedure;

                    con.Open();
                    using (DbDataReader dr = cmd.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            usuarios.Add(new Cm_ClsUsuarios((int)dr["id"],(string)dr["usuario"], (string)dr["contrasena"], (string)dr["tipo_usuario"]));
                        }
                    }

                }
            }
            return usuarios;
        }


        /*Modificar Usuarios*/

        public int modificarUsuarios(int id, string usuario, string contrasena, string tipo_usuario)
        {
            List<DbParameter> parametros = new List<DbParameter>();

            DbParameter parametro0 = dpf.CreateParameter();
            parametro0.ParameterName = "id";
            parametro0.Value = id;
            parametros.Add(parametro0);

            DbParameter parametro1 = dpf.CreateParameter();
            parametro1.ParameterName = "usuario";
            parametro1.Value = usuario;
            parametros.Add(parametro1);

            DbParameter parametro2 = dpf.CreateParameter();
            parametro2.ParameterName = "contrasena";
            parametro2.Value = contrasena;
            parametros.Add(parametro2);

            DbParameter parametro3 = dpf.CreateParameter();
            parametro3.ParameterName = "tipo_usuario";
            parametro3.Value = tipo_usuario;
            parametros.Add(parametro3);

            return ejecuteNonQuery("modificarUsuarios", parametros);
        }

        /*Consultar Usuarios por id*/

        public Cm_ClsUsuarios consultarUsuariosID(int id)
        {
            Cm_ClsUsuarios usuarios = new Cm_ClsUsuarios();
            String storeProcedure = "listarUsuariosID";


            using (DbConnection con = dpf.CreateConnection())
            {
                con.ConnectionString = constr;
                using (DbCommand cmd = dpf.CreateCommand())
                {
                    cmd.Connection = con;
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = storeProcedure;

                    DbParameter param = dpf.CreateParameter();
                    param.DbType = DbType.Int32;
                    param.Value = id;
                    param.ParameterName ="id";

                    cmd.Parameters.Add(param);
                    con.Open();

                    using (DbDataReader dr = cmd.ExecuteReader())
                    { // leemos la consulta

                        if (dr.Read())
                        {
                            usuarios = new Cm_ClsUsuarios((string)dr["usuario"], (string)dr["contrasena"], (string)dr["tipo_usuario"]);
                        }
                    }
                }
            }
            return usuarios;
        }

        public Cm_ClsUsuarios loginUser(string usuario, string contrasena)
        {
            Cm_ClsUsuarios usuarios = new Cm_ClsUsuarios();
            String storeProcedure = "loginUser";


            using (DbConnection con = dpf.CreateConnection())
            {
                con.ConnectionString = constr;
                using (DbCommand cmd = dpf.CreateCommand())
                {
                    cmd.Connection = con;
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = storeProcedure;

                    DbParameter param = cmd.CreateParameter();
                    param.DbType = DbType.String;
                    param.ParameterName = "usuario";
                    param.Value = usuario;
                    cmd.Parameters.Add(param);

                    DbParameter param1 = cmd.CreateParameter();
                    param1.DbType = DbType.String;
                    param1.ParameterName = "contrasena";
                    param1.Value = contrasena;
                    cmd.Parameters.Add(param1);


                   // cmd.Parameters.Add(param);
                    con.Open();

                    using (DbDataReader dr = cmd.ExecuteReader())
                    { // leemos la consulta

                        if (dr.Read())
                        {
                            usuarios = new Cm_ClsUsuarios((int)dr["id"], (string)dr["usuario"], (string)dr["contrasena"], (string)dr["tipo_usuario"]);
                        }
                    }
                }
            }
            return usuarios;
        }


    }
}
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
    public class Dt_ClsMaterias
    {
        public Dt_ClsMaterias()
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


        /*Crear Materias*/
        public int crearMaterias(string nombre)
        {
            List<DbParameter> parametros = new List<DbParameter>();

            DbParameter parametro0 = dpf.CreateParameter();
            parametro0.Value = nombre;
            parametro0.ParameterName = "nombre";
            parametros.Add(parametro0);

            return ejecuteNonQuery("crearMateria", parametros);
        }

        /*Listar Usuarios*/
        public List<Cm_ClsMaterias> listarMaterias()
        {
            List<Cm_ClsMaterias> materias = new List<Cm_ClsMaterias>();
            string storeProcedure = "listarMaterias";
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
                            materias.Add(new Cm_ClsMaterias((int)dr["id"], (string)dr["nombre"]));
                        }
                    }

                }
            }
            return materias;
        }


        /*Modificar Materia*/

        public int modificarMaterias(int id, string nombre)
        {
            List<DbParameter> parametros = new List<DbParameter>();

            DbParameter parametro0 = dpf.CreateParameter();
            parametro0.ParameterName = "id";
            parametro0.Value = id;
            parametros.Add(parametro0);

            DbParameter parametro1 = dpf.CreateParameter();
            parametro1.ParameterName = "nombre";
            parametro1.Value = nombre;
            parametros.Add(parametro1);


            return ejecuteNonQuery("modificarMaterias", parametros);
        }

        /*Consultar Usuarios por id*/

        public Cm_ClsMaterias consultarMateriasID(int id)
        {
            Cm_ClsMaterias materias = new Cm_ClsMaterias();
            String storeProcedure = "listarMateriasID";


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
                            materias = new Cm_ClsMaterias((string)dr["nombre"]);
                        }
                    }
                }
            }
            return materias;
        }
    }
}
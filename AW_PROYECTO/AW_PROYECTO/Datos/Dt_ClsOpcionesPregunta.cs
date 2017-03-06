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
    public class Dt_ClsOpcionesPregunta
    {
        public Dt_ClsOpcionesPregunta()
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


        /*Crear Opciones Pregunta 
        public int crearOpcionesPregunta(string pregunta, string opcion1, string opcion2, string opcion3, string respuesta, int id_pregunta, int calificacion, int id_materia, int id_usuario)
        {
            List<DbParameter> parametros = new List<DbParameter>();

           
            DbParameter parametro1 = dpf.CreateParameter();
            parametro1.Value = opcion1;
            parametro1.ParameterName = "opcion1";
            parametros.Add(parametro1);

            DbParameter parametro2 = dpf.CreateParameter();
            parametro2.Value = opcion2;
            parametro2.ParameterName = "opcion2";
            parametros.Add(parametro2);

            DbParameter parametro3 = dpf.CreateParameter();
            parametro3.Value = opcion3;
            parametro3.ParameterName = "opcion3";
            parametros.Add(parametro3);

            DbParameter parametro4 = dpf.CreateParameter();
            parametro4.Value = respuesta;
            parametro4.ParameterName = "respuesta";
            parametros.Add(parametro4);


            DbParameter parametro7 = dpf.CreateParameter();
            parametro7.Value = id_pregunta;
            parametro7.ParameterName = "id_pregunta";
            parametros.Add(parametro7);

            return ejecuteNonQuery("crearRespuesta", parametros);
        }*/
    }
}
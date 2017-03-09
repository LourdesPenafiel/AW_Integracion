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
    public class Dt_ClsPreguntas
    {
        public Dt_ClsPreguntas()
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


        /*Crear Preguntas */
        public int crearPreguntas(string pregunta, string opcion1, string opcion2, string opcion3, string respuesta, int calificacion, int id_materia, int id_usuario)
        {
            List<DbParameter> parametros = new List<DbParameter>();

            DbParameter parametro0 = dpf.CreateParameter();
            parametro0.Value = pregunta;
            parametro0.ParameterName = "pregunta";
            parametros.Add(parametro0);

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

            DbParameter parametro5 = dpf.CreateParameter();
            parametro5.Value = calificacion;
            parametro5.ParameterName = "calificacion";
            parametros.Add(parametro5);

            DbParameter parametro6 = dpf.CreateParameter();
            parametro6.Value = id_materia;
            parametro6.ParameterName = "id_materia";
            parametros.Add(parametro6);

            DbParameter parametro7 = dpf.CreateParameter();
            parametro7.Value = id_usuario;
            parametro7.ParameterName = "id_usuario";
            parametros.Add(parametro7);

            //DbParameter parametro8 = dpf.CreateParameter();
            //parametro8.Value = id_pregunta;
            //parametro8.ParameterName = "id_pregunta";
            //parametros.Add(parametro8);



            return ejecuteNonQuery("crearRespuesta", parametros);
        }

        /*Consultar Preguntas por Materias*/

        public List<Cm_ClsPreguntas> consultarPreguntasID_Materia(int id_materia)
        {
            List<Cm_ClsPreguntas> preguntas_materia = new List<Cm_ClsPreguntas>();
            String storeProcedure = "PreguntasPorID_Materia";


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
                    param.Value = id_materia;
                    param.ParameterName = "id_materia";

                    cmd.Parameters.Add(param);
                    con.Open();

                    using (DbDataReader dr = cmd.ExecuteReader())
                    { // leemos la consulta

                        while (dr.Read())
                        {
                            preguntas_materia.Add(new Cm_ClsPreguntas((int)dr["id"], (string)dr["pregunta"], (string)dr["opcion1"], (string)dr["opcion2"], (string)dr["opcion3"], (string)dr["respuesta"], (int)dr["calificacion"], (int)dr["id_materia"], (int)dr["id_usuario"]));
                            
                        }
                    }
                }
            }
            
            return preguntas_materia;
       
        }

        public Cm_ClsPreguntas consultarPreguntasID(int id)
        {
            Cm_ClsPreguntas materias = new Cm_ClsPreguntas();
            String storeProcedure = "listarPreguntas_ID";


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
                    param.ParameterName = "id";

                    cmd.Parameters.Add(param);
                    con.Open();

                    using (DbDataReader dr = cmd.ExecuteReader())
                    { // leemos la consulta

                        if (dr.Read())
                        {
                            materias = new Cm_ClsPreguntas(
                                (string)dr["pregunta"], (string)dr["opcion1"], (string)dr["opcion2"], (string)dr["opcion3"], (string)dr["respuesta"], (int)dr["calificacion"], (int)dr["id_materia"], (int)dr["id_usuario"]);
                        }
                    }
                }
            }
            return materias;
        }

        public int contarPreguntasID_Materia(int id_materia)
        {
            Int32 contar = 0;
            String storeProcedure = "ContarPreguntasPorID_Materia";


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
                    param.Value = id_materia;
                    param.ParameterName = "id_materia";

                    cmd.Parameters.Add(param);
                    con.Open();
                    contar = (Int32)(cmd.ExecuteScalar());
                          
                }
            }
            return contar;
            
        }

    }
}
﻿using System;
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
    public class Dt_ClsRespuestaUsuario
    {
        public Dt_ClsRespuestaUsuario()
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

        /*Registro de Respuestas */
        public int registroRespuestas(int id_usuario, int id_opciones_respuesta, Boolean preguntarespondida)
        {
            List<DbParameter> parametros = new List<DbParameter>();

            DbParameter parametro0 = dpf.CreateParameter();
            parametro0.Value = id_usuario;
            parametro0.ParameterName = "id_usuario";
            parametros.Add(parametro0);

            DbParameter parametro1 = dpf.CreateParameter();
            parametro1.Value = id_opciones_respuesta;
            parametro1.ParameterName = "id_pregunta";
            parametros.Add(parametro1);

            DbParameter parametro2 = dpf.CreateParameter();
            parametro2.Value = preguntarespondida;
            parametro2.ParameterName = "preguntarespondida";
            parametros.Add(parametro2);


            return ejecuteNonQuery("registroRespuesta", parametros);
        }

        /*Comprobar que el usuario haya respondido*/

        public Boolean pregunta_respondida_usuario(int id_usuario, int id_pregunta)
        {
            Boolean respondida = false;
            String storeProcedure = "preguntasRespondidas_Usuario";


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
                    param.Value = id_usuario;
                    param.ParameterName = "id_usuario";

                    DbParameter param1 = dpf.CreateParameter();
                    param1.DbType = DbType.Int32;
                    param1.Value = id_pregunta;
                    param1.ParameterName = "id_pregunta";

                    cmd.Parameters.Add(param);
                    cmd.Parameters.Add(param1);
                    con.Open();
                    respondida = (Boolean)(cmd.ExecuteScalar());

                }
            }
            return respondida;

        }


    }
}
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace slAvanzaPruebaSantiagoMartinez
{
    internal class CentroCosto : Conexion
    {
        private SqlDataReader registro;
        private SqlConnection con;
        public CentroCosto()
        {
            this.con = getConexion();
        }
        public void jquery()
        {
            ScriptManager.ScriptResourceMapping.AddDefinition
                (
                    "jquery", new ScriptResourceDefinition
                    {
                        Path = "~/public/js/jquery.js",
                        DebugPath = "~/public/js/jquery.js",
                        CdnSupportsSecureConnection = true,
                        LoadSuccessExpression = "window.jQuery"
                    }
                );
        }
        public SqlDataReader getCentroCosto()
        {
            conectar();
            String sql = "select IdCentroCosto,NombreCentroCosto from PruCentroCosto where Estado = 1;";

            SqlCommand comando = new SqlCommand(sql, this.con);
            this.registro = comando.ExecuteReader();
            return this.registro;
        }
    }
}
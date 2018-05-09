using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace slAvanzaPruebaSantiagoMartinez
{
    internal class Empleados : Conexion
    {
        private SqlDataReader registro;
        private SqlConnection con;
        public Empleados()
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
        public SqlDataReader getEmpleados()
        {
            conectar();
            String sql = "select pe.*,pco.NombreCentroCosto from PruEmpleado pe left join PruCentroCosto pco on pe.IdCentroCosto = pco.IdCentroCosto";

            SqlCommand comando = new SqlCommand(sql, this.con);
            this.registro = comando.ExecuteReader();
            return this.registro;
        }
        public void Insertar(String nombre, String apellido, String documento, String costo, Boolean estado)
        {
            conectar();
            String sql = "insert into PruEmpleado " +
                            "values " +
                            "('" + nombre + "','" + apellido + "','" + documento + "','" + costo + "','" + estado + "')";
            SqlCommand comando = new SqlCommand(sql, this.con);
            comando.ExecuteNonQuery();
            cerrar();
        }
        public void Borrar(int id)
        {
            conectar();
            String sql = "delete from PruEmpleado where IdEmpleado='" + id + "'";
            SqlCommand comando = new SqlCommand(sql, this.con);
            comando.ExecuteNonQuery();
            cerrar();
        }
        public SqlDataReader getEmpleadoPorId(int id)
        {
            conectar();
            String sql = "select pe.*,pco.NombreCentroCosto from PruEmpleado pe left join PruCentroCosto pco on pe.IdCentroCosto = pco.IdCentroCosto where IdEmpleado='" + id + "'; ";
            SqlCommand comando = new SqlCommand(sql, this.con);
            this.registro = comando.ExecuteReader();
            //cerrar();
            return this.registro;
        }
        public int Modificar(String nombre, String apellido, String documento, String costo, Boolean estado, String id)
        {
            cerrar();
            conectar();
            int numero = int.Parse(id);
            String sql = "update PruEmpleado " +
                          " set " +
                          " NombreEmpleado='" + nombre + "'," +
                          " ApellidoEmpleado='" + apellido + "'," +
                          " Documento='" + documento + "'," +
                          " IdCentroCosto='" + costo + "'," +
                          " Estado='" + estado + "'" +
                          " where " +
                          " IdEmpleado=" + id + " ";
            SqlCommand comando = new SqlCommand(sql, this.con);
            int cantidad = comando.ExecuteNonQuery();
            cerrar();
            return cantidad;
        }
    }
}
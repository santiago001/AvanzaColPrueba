using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace slAvanzaPruebaSantiagoMartinez
{
    public partial class view : System.Web.UI.Page
    {
        //private CentroCosto usuarios;
        private Empleados empleados;
        private SqlDataReader registro;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.empleados = new Empleados();
            this.registro = this.empleados.getEmpleados();
        }
        public SqlDataReader getRegistro()
        {
            return this.registro;
        }
    }
}

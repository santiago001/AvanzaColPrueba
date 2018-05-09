using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace slAvanzaPruebaSantiagoMartinez
{
    public partial class Delete : System.Web.UI.Page
    {
        private Empleados empleados;
        protected void Page_Load(object sender, EventArgs e)
        {

            this.empleados = new Empleados();
            string valor = Request.QueryString["id"];
            int id = int.Parse(valor);
            this.empleados.Borrar(id);
            Response.Redirect("Default.aspx");
        }
    }
}
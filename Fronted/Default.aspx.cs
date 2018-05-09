using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace slAvanzaPruebaSantiagoMartinez
{
    public partial class Default : System.Web.UI.Page
    {
        private CentroCosto centrocosto;
        private SqlDataReader registro;
        private Empleados empleados;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.centrocosto = new CentroCosto();
            this.registro = this.centrocosto.getCentroCosto();
            
            costo.DataSource = this.registro;
            costo.DataTextField = "NombreCentroCosto";
            costo.DataValueField = "IdCentroCosto";
            costo.DataBind();
            //costo.Items.Insert(0, new ListItem("Seleccione..", "0"));
            /*
            costo.Items.Insert(1, new ListItem("LAN", "1"));
            costo.Items.Insert(2, new ListItem("TIGO", "2"));
            costo.Items.Insert(3, new ListItem("MOVIL RED", "3"));
            */
            this.empleados = new Empleados();
            this.empleados.jquery();
        }
        public void ProcesarFormulario(object sender, EventArgs e)
        {
            if (IsValid)//si es verdadero que el formulario ha sido enviado vía POST
            {
                this.empleados.Insertar(nombre.Text, apellido.Text, documento.Text, costo.Text, estado.Checked);
                Response.Redirect("Default.aspx");
            }
        }
        public SqlDataReader getCentroCosto()
        {
            return this.registro;
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace slAvanzaPruebaSantiagoMartinez
{
    public partial class Edit : System.Web.UI.Page
    {
        private CentroCosto centrocosto;
        private Empleados empleados;
        private SqlDataReader registro;
        private string nom,ape,doc,cos,est;

        public string Nom
        {
            get
            {
                return nom;
            }

            set
            {
                nom = value;
            }
        }

        public string Ape
        {
            get
            {
                return ape;
            }

            set
            {
                ape = value;
            }
        }

        public string Doc
        {
            get
            {
                return doc;
            }

            set
            {
                doc = value;
            }
        }

        public string Cos
        {
            get
            {
                return cos;
            }

            set
            {
                cos = value;
            }
        }

        public string Est
        {
            get
            {
                return est;
            }

            set
            {
                est = value;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            this.centrocosto = new CentroCosto();
            this.registro = this.centrocosto.getCentroCosto();
            costo.DataSource = this.registro;
            costo.DataTextField = "NombreCentroCosto";
            costo.DataValueField = "IdCentroCosto";
            costo.DataBind();

            this.empleados = new Empleados();
            this.empleados.jquery();
            string valor = Request.QueryString["id"];
            int id = int.Parse(valor);
            this.empleados.jquery();
            this.registro = this.empleados.getEmpleadoPorId(id);
            if (this.registro.Read())
            {
                this.nom = this.registro["NombreEmpleado"].ToString();
                this.ape = this.registro["ApellidoEmpleado"].ToString();
                this.doc = this.registro["Documento"].ToString();
                this.cos = this.registro["IdCentroCosto"].ToString();
                this.est = this.registro["Estado"].ToString();
                this.IdEmpleado.Value = valor;
            }
        }

        public void ProcesarFormulario(object sender, EventArgs e)
        {
            if (IsValid)
            {
                int cantidad = this.empleados.Modificar(nombre.Text, apellido.Text, documento.Text, costo.Text, estado.Checked, IdEmpleado.Value);
                if (cantidad == 1)//se ejecutó la consulta correctamente
                {
                    Response.Redirect("View.aspx");
                }
                else//se produjo error con ñandú porque mi muñeca me habló
                {
                    Response.Redirect("Edit.aspx?id=" + IdEmpleado.Value);
                }
            }
        }

    }
}
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{    
    public partial class WebForm1 : System.Web.UI.Page
    {
        string con = "Data Source=FALS-DESKTOP; Initial Catalog= WebForms1; Integrated Security = true";
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlCarrera.Items.Add("Sistemas");
                ddlCarrera.Items.Add("Industrial");
                ddlCarrera.Items.Add("Gestion");
                ddlCarrera.Items.Add("Electronica");
                ddlCarrera.Items.Add("Mecatronica");
                ddlCarrera.Items.Add("Mecatronica");
                lblMensaje.Visible = false;
                
            }

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            string numeroControl = txtNumeroControl.Text;
            string nombre = txtNombre.Text;
            string carrera = ddlCarrera.SelectedValue;
            string mensaje;

            SqlConnection connection = new SqlConnection(con);
            connection.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO Alumnos VALUES (@NumeroControl, @Nombre, @Carrera)", connection);
            cmd.Parameters.AddWithValue("@NumeroControl", numeroControl);
            cmd.Parameters.AddWithValue("@Nombre", nombre);
            cmd.Parameters.AddWithValue("@Carrera", carrera);
            cmd.ExecuteNonQuery();

            connection.Close();
            mensaje ="<b>Numero de control</b>: " + numeroControl +
                ",<b> Nombre</b>: " + nombre + ",<b> Carrera</b>: " + carrera;

            ScriptManager.RegisterStartupScript(this, this.GetType(), "Success", "showpop5('" + mensaje +"');", true);
            lblMensaje.Visible = true;
            lblMensaje.Text = mensaje;
        }
    }
}
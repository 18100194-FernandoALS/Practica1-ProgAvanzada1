using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class ReparacionComputadoras : System.Web.UI.Page
    {
        string con = "Data Source=FALS-DESKTOP; Initial Catalog= WebForms1; Integrated Security = true";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblMensaje1.Visible = false;
                lblMensaje2.Visible = false;
            }
        }

        public bool ValidarRad()
        {
            if (radlstApaga.SelectedItem != null && radlstComponente.SelectedItem != null 
                && radlstEnciende.SelectedItem != null && radlstLenta.SelectedItem != null 
                && radlstLimpieza.SelectedItem != null && radlstPrograma != null)
                return true;
            return false;
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            //string mensaje = "hola";
            ////ScriptManager.RegisterStartupScript(this, typeof(Page), "Success", "<script>showpop('" + mensaje + "')</script>", false);
            //ScriptManager.RegisterStartupScript(this, typeof(Page), "Success", "<script>showpop5('" + mensaje + "')</script>", false);
            try
            {
                if (ValidarRad() && txtNombre.Text != null)
                {
                    SqlConnection connection = new SqlConnection(con);
                    connection.Open();


                    SqlCommand cmd = new SqlCommand("INSERT INTO Clientes VALUES (@Nombre, @Telefono, @Enciende, @SeApaga, @EsLenta, @Limpieza, @CambioComponente, @InstalarProgramas)", connection);
                    cmd.Parameters.AddWithValue("@Nombre", txtNombre.Text);
                    cmd.Parameters.AddWithValue("@Telefono", txtTelefono.Text);
                    cmd.Parameters.AddWithValue("@Enciende", radlstEnciende.SelectedIndex);
                    cmd.Parameters.AddWithValue("@SeApaga", radlstApaga.SelectedIndex);
                    cmd.Parameters.AddWithValue("@EsLenta", radlstLenta.SelectedIndex);
                    cmd.Parameters.AddWithValue("@Limpieza", radlstLimpieza.SelectedIndex);
                    cmd.Parameters.AddWithValue("@CambioComponente", radlstComponente.SelectedIndex);
                    cmd.Parameters.AddWithValue("@InstalarProgramas", radlstPrograma.SelectedIndex);
                    cmd.ExecuteNonQuery();
                    connection.Close();

                    lblMensaje2.Visible = false;
                    lblMensaje1.Visible = true;
                    lblMensaje1.Text = "Se ah registrado la solicitud del cliente";
                }
                else
                {
                    lblMensaje1.Visible = false;
                    lblMensaje2.Visible = true;
                    lblMensaje2.Text = "Es necesario que las preguntas sean respondidas";
                }
            }
            catch (Exception ex)
            {
                lblMensaje2.Visible = true;
                lblMensaje2.Text = ex.Message;
            }
        }
    }
}
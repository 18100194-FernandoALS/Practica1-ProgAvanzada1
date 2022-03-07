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
            try
            {
                if (ValidarRad())
                {

                }
                else
                {

                }
            }
            catch (Exception ex)
            {

                throw;
            }
        }
    }
}
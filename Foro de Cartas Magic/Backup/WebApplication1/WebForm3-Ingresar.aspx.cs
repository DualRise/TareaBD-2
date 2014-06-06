using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("webForm1-Inicio.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string copia = RContraseña.Text;
                string original = IContraseña.Text;
                if (!copia.Equals(original)) 
                {
                    string popupScripts = "<SCRIPT LANGUAGE='javascript'>alert('Contraseñas no coinciden'); document.location=('./WebForm1-Inicio.aspx');</SCRIPT>";
                    Page.RegisterStartupScript("Popupscript", popupScripts);
                }
                DateTime Hoy = DateTime.Today;
                string fecha_actual = Hoy.ToString("dd-MM-yyyy");
                SqlConnection con = new SqlConnection(@"Data Source=NEMIAM;Initial Catalog=TareaBD;Integrated Security=True");
                con.Open();
                SqlCommand sql = new SqlCommand("insert into Usuario(id_grupo,nombre,contraseña,avatar_url,fecha_nacimiento,sexo,fecha_registro) values('3','" + INombre.Text + "','" + IContraseña.Text + "','" + IUrl.Text + "','" + IFecha.Text + "','" + ISexo.Text + "','" + fecha_actual + "'); ", con);
                sql.ExecuteNonQuery();
                con.Close();
                string popupScript = "<SCRIPT LANGUAGE='javascript'>alert('Se agrego correctamente el cliente'); document.location=('./WebForm1-Inicio.aspx');</SCRIPT>";
                Page.RegisterStartupScript("Popupscript", popupScript);
            }

            
            catch (Exception ex)
            {
                Response.Write("Error en try:" + ex);
            }
        }
    }
}
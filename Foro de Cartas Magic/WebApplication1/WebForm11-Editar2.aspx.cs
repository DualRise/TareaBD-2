using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace WebApplication1
{
    public partial class WebForm11_Editar2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("webForm10-Perfil.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string contraseña = TextBox1.Text;
            string contraseña2 = TextBox2.Text;
            string fecha_nacimiento = TextBox3.Text;
            string avatarurl = TextBox4.Text;
            string id_usuariom = Session["id_usuariop"].ToString();
            string id_grupoa = DropDownList1.SelectedValue.ToString();
            if (!contraseña.Equals(contraseña2))
            {
                string popupScripts = "<SCRIPT LANGUAGE='javascript'>alert('Contraseñas no coinciden'); document.location=('./WebForm1-Inicio.aspx');</SCRIPT>";
                Page.RegisterStartupScript("Popupscript", popupScripts);
            }
            else
            {
                SqlConnection con = new SqlConnection(@"Data Source=SEBAARIEL-PC\TAREA2BD;Initial Catalog=TareaBD2;Integrated Security=True");
                con.Open();
                SqlCommand sql = new SqlCommand("UPDATE Usuario SET id_grupo = '" + id_grupoa + "', contraseña = '" + contraseña + "', avatar_url = '" + avatarurl + "',fecha_nacimiento = '" + fecha_nacimiento + "' WHERE id_usuario='" + id_usuariom + "'; ", con);
                sql.ExecuteNonQuery();
                con.Close();
                string popupScript = "<SCRIPT LANGUAGE='javascript'>alert('Se modificó correctamente.'); document.location=('./WebForm10-Perfil.aspx');</SCRIPT>";
                Page.RegisterStartupScript("Popupscript", popupScript);
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class WebForm2 : System.Web.UI.Page
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
            SqlConnection con = new SqlConnection(@"Data Source=SEBAARIEL-PC\TAREA2BD;Initial Catalog=TareaBD2;Integrated Security=True");
            string usuario = TextBox1.Text;
            string password = TextBox2.Text;
            string TempPass = "";
            int id_grupotmp = 0, id_usuariotmp = 0;
            string sql = "select contraseña,id_grupo,id_usuario from Usuario where nombre= '"+ usuario +"';";
            try
            {     
                SqlCommand reader = new SqlCommand(sql,con);
                con.Open();
                SqlDataReader read = reader.ExecuteReader();

                if (read.HasRows)
                {
                    read.Read();
                    TempPass = read.GetString(0);
                    id_grupotmp = read.GetInt32(1);
                    id_usuariotmp = read.GetInt32(2);
                    Session["id_usuario"] = id_usuariotmp;
                    Session["id_grupo"] = id_grupotmp;
                    if (password.Equals(TempPass))
                    {
                        //DETERMINA QUE TIPO DE USUARIO ES:
                        Session["Volver"] = 2;
                        Response.Redirect("webForm4-Admin.aspx");
                    }
                    else //Si la password correspondiente al usuario coincide con la entregada
                    {
                        string popupScripts = "<SCRIPT LANGUAGE='javascript'>alert('Passwords no coinciden'); document.location=('./WebForm1-Inicio.aspx');</SCRIPT>";
                        Page.RegisterStartupScript("Popupscript", popupScripts);
                    }
                    
                    read.Close();
                }
                else 
                {
                    string popupScripts = "<SCRIPT LANGUAGE='javascript'>alert('No hay datos en usuario'); document.location=('./WebForm1-Inicio.aspx');</SCRIPT>";
                    Page.RegisterStartupScript("Popupscript", popupScripts);
                }
            }
            catch (Exception ex)
            {
                Response.Write("Error en el Try: " + ex);
            }
            finally
            {
                con.Close();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm7-Visita.aspx");
        }

      
      
    }
}
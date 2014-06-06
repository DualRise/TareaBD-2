using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class WebForm4_Admin3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=SEBAARIEL-PC\TAREA2BD;Initial Catalog=TareaBD2;Integrated Security=True");
                string mensajep = TextBox1.Text;
                string id_usuario = Session["id_usuario"].ToString();
                string id_tema = Session["id_tema"].ToString();
                con.Open();
                SqlCommand sql = new SqlCommand("insert into Comentario(id_tema,id_usuario,mensaje) values ('" + id_tema + "','" + id_usuario + "','" + mensajep + "'); ", con);
                sql.ExecuteNonQuery();
                con.Close();
                string popupScript = "<SCRIPT LANGUAGE='javascript'>alert('Comentario ingresado con éxito.'); document.location=('./WebForm4-Admin3.aspx');</SCRIPT>";
                Page.RegisterStartupScript("Popupscript", popupScript);
            }
            catch (Exception ex)
            {
                Response.Write("Error en try:" + ex);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm4-Admin2.aspx");
        }

        protected void GridView7_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                string item = e.Row.Cells[0].Text;
                foreach (Button button in e.Row.Cells[1].Controls.OfType<Button>())
                {
                    if (button.CommandName == "Delete")
                    {
                        button.Attributes["onclick"] = "if(!confirm('Do you want to delete " + item + "?')){ return false; };";
                    }
                }
            }
        }
    }
}
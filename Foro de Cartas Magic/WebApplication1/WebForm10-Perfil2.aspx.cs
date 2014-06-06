using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm10_Perfil2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string id_usuarioa = GridView1.DataKeys[0].Value.ToString();
            Session["id_usuariop"] = id_usuarioa;
            string id_usuario = Session["id_usuario"].ToString();
            //REDIRECCIONAR A LA NUEVA VENTANA
            if (id_usuarioa.Equals(id_usuario))
            {
                Response.Redirect("WebForm11-Editar.aspx");
            }
            else if (id_usuario.Equals("1"))
            {
                Response.Redirect("WebForm11-Editar2.aspx");
            }
            else
            {
                string popupScript = "<SCRIPT LANGUAGE='javascript'>alert('Usted no puede modificar este usuario.'); document.location=('./WebForm10-Perfil.aspx');</SCRIPT>";
                Page.RegisterStartupScript("Popupscript", popupScript);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm10-Perfil.aspx");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1-Inicio.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int index = GridView1.SelectedIndex;
            string id_cat = GridView1.DataKeys[index].Value.ToString();
            Session["id_categoria"] = id_cat;

            //REDIRECCIONAR A LA NUEVA VENTANA
            Response.Redirect("WebForm4-Admin2.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm10-Perfil.aspx");
        }
    }
}
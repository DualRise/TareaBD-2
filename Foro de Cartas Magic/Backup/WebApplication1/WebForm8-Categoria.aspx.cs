using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace WebApplication1
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1-Inicio.aspx");
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            //VALOR GLOBAL
            Response.Redirect("WebForm4-Admin.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //GUARDAR ID DE CATEGORIA
            int index = GridView1.SelectedIndex;
            string id = GridView1.DataKeys[index].Value.ToString();
            Session["id_categoria"] = id;                 
            //REDIRECCIONAR A LA NUEVA VENTANA
            Response.Redirect("WebForm9-Temas.aspx");
        }

        

    }
}
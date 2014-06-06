using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm4_Admin2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            int index = GridView2.SelectedIndex;
            string id_tema = GridView2.DataKeys[index].Value.ToString();
            Session["id_tema"] = id_tema;

            //REDIRECCIONAR A LA NUEVA VENTANA
            Response.Redirect("WebForm4-Admin3.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1-Inicio.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm4-Admin.aspx");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1_Inicio2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("webForm2-Login.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("webForm1-Inicio.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("webForm3-Ingresar.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int index = GridView1.SelectedIndex;
            string id_tema = GridView1.DataKeys[index].Value.ToString();
            Session["id_tema"] = id_tema;
            Response.Redirect("webForm1-Inicio3.aspx");
        }

    }
}
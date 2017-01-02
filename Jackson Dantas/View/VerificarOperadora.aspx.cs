using Jackson_Dantas.Control;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Jackson_Dantas.View
{
    public partial class VerificarOperadora : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPesquisa_Click(object sender, EventArgs e)
        {
            VereficaOperadora vO = new VereficaOperadora();
            string celular = Request["telefone"];

            if (Request["telefone"] == "")
            {
                lblRespota.Text = "Digite um número de celular válido";
            }
            else
            {
                lblRespota.Text = "A operadora do celular" + celular + " é: \n" + vO.Operadora(Request["telefone"]);
            }
            //telefone = telefone.Substring(1,2) + telefone.Substring(5,5) + telefone.Substring(11,4);
        }
    }
}
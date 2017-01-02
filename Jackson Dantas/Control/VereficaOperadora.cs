using Jackson_Dantas.Dao;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Jackson_Dantas.Control
{
    public class VereficaOperadora
    {

        public string Operadora(string numero)
        {
            string ddd, prefixo, sufixo, operadora = "";

            //Separa DDD + Prefixo + Sufixo
            ddd = numero.Substring(1, 2);
            prefixo = numero.Substring(5, 5);
            sufixo = numero.Substring(11, 4);

            // instancia o banconumero.Substring(11, 4)
            conexao db = conexao.Instancia;


            SqlDataReader dr = db.PesqSQL(string.Format("select * from Faixas_Anatel where Codigo_Nacional = "+ ddd +" and Prefixo = "+ prefixo +" and Faixa_Inicial <= "+ sufixo +" and Faixa_Final >= "+ sufixo));

            while (dr.Read())
            {
                operadora = dr["Prestadora"].ToString();
            }

            return operadora;
        }
    }
}
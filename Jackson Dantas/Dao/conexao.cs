using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Jackson_Dantas.Dao
{
    public class conexao
    {
        private SqlConnection con;
        private static conexao _instacia;

        public static conexao Instancia
        {
            get
            {
                _instacia = new conexao();
                return _instacia;
            }
        }
        //metodo de conexao
        private conexao()
        {
            //Etapa 1: criando as strings de conexão

            SqlConnectionStringBuilder sb = new SqlConnectionStringBuilder();
            sb.DataSource = "INV006911"; // Nome do Servidor
            sb.InitialCatalog = "Site";// Nome do banco de dados
            sb.UserID = "jackson.dantas";//Usuario
            sb.Password = "a1b2c3d4"; //Senha


            //Etapa 2: criando o objeto do SqlConnection

            con = new SqlConnection(sb.ToString());
            con.Open();
        }


        //metodo de conculta
        public SqlDataReader PesqSQL(string comandoSQL)
        {
            SqlCommand cmd = new SqlCommand(comandoSQL, con);

            return cmd.ExecuteReader();

        }

        //metodo de excução SQL
        public int ExecSQL(string comandoSQL)
        {
            SqlCommand cmd = new SqlCommand(comandoSQL, con);
            return cmd.ExecuteNonQuery();

        }

        //metodo pesquisa simples
        public object PesqSimplesSQL(string comandoSQL)
        {
            SqlCommand cmd = new SqlCommand(comandoSQL, con);
            return cmd.ExecuteScalar();

        }

    }
}
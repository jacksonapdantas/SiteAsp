using Microsoft.VisualStudio.TestTools.UnitTesting;
using Jackson_Dantas.Dao;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace Jackson_Dantas.Dao.Tests
{
    [TestClass()]
    public class ConexaoTests
    {
        [TestMethod()]
        public void SqlExecuteTest()
        {
            Conexao db = Conexao.Instancia;
            SqlDataReader dr = db.PesqSQL(string.Format("select * from Faixas_Anatel"));
            string comandoSql = string.Format("select * from Faixas_Anatel");

            
        }
    }
}
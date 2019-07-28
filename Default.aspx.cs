using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;


namespace WebApplication2
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.GetGrid();
            }
        }

        private void GetGrid()
        {
            MySqlConnection conexao = new MySqlConnection("server=localhost;User Id=Desenvolvedor;database=world; password=1234567");
            MySqlCommand comando = new MySqlCommand("SELECT * FROM city Where name like 'k%' limit 10", conexao);
            DataTable tabela = new DataTable();
            try
            {
                conexao.Open();
                GridView1.DataSource = comando.ExecuteReader();
                GridView1.DataBind();
            }
            finally
            {
                conexao.Close();
            }
        }
    }
}

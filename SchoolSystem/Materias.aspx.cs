using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;
 
namespace SchoolSystem
{
    public partial class Default : System.Web.UI.Page
    {
        private ModelDataContext mdc;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.GetGrid();
            }
        }
        private void GetGrid(int pIndex = -1 )
        {
            mdc = new ModelDataContext();
            try
            {
                var sourceMateria = from mat in mdc.Materia
                                    select mat;

                switch (pIndex)
                {
                    case 0:
                        {
                            sourceMateria = from mat in mdc.Materia
                                            where mat.idMateria == int.Parse(tbPesqId.Text)
                                            select mat;

                            break;
                        }
                    case 1:
                        {
                            sourceMateria = from mat in mdc.Materia
                                            where mat.Nome.Contains(tbPesqNome.Text)
                                            select mat;
                            break;
                        }
                    case 2:
                        {
                            sourceMateria = from mat in mdc.Materia
                                            where mat.Descricao.Contains(tbPesqDescricao.Text)
                                            select mat;
                            break;
                        }

                }

                gwDados.DataSource = sourceMateria;
                gwDados.DataBind();
            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void BtnSearch_Click(object sender, EventArgs e)
        {
            //Response.Write(rlbTypeSearch.SelectedIndex.ToString());
            this.GetGrid(rlbTypeSearch.SelectedIndex);
        }

        protected void BtnSearchErase_Click(object sender, EventArgs e)
        {
            this.GetGrid();
        }
    }
}